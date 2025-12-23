Ниже готовый `README.md` под мини‑продакшен на отдельном сервере.

***

# Apache Airflow 2.11.0 Docker (CeleryExecutor + Code Editor)

Расширенная Docker‑сборка Apache Airflow с поддержкой **Code Editor**, ClickHouse, MySQL, HTTP/Telegram провайдеров, Prometheus и скрипта резервного копирования БД.

## 1. Минимальные требования сервера

- OS: Ubuntu 20.04+ / Debian 11+ (x86_64)
- vCPU: **4**
- RAM: **8 GB**
- Диск: **20 GB+**
- Открытые порты:
  - 80 (HTTP → nginx → Airflow)
  - 8080 (Airflow UI, можно оставить только внутри)
  - 5432 (PostgreSQL — лучше закрыть firewall’ом)
  - 9090 (Prometheus, опционально)

## 2. Установка Docker и Docker Compose

```bash
# обновить пакеты
sudo apt update

# установить Docker
sudo apt install -y ca-certificates curl gnupg lsb-release

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker.gpg

echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

sudo apt update
sudo apt install -y docker-ce docker-ce-cli containerd.io

# дать право запускать docker без sudo (опционально, после релога)
sudo usermod -aG docker "$USER"
```

Docker Compose v2 уже встроен в `docker` как `docker compose`. Проверка:

```bash
docker --version
docker compose version
```

## 3. Клонирование репозитория

```bash
cd /root          # или любой другой каталог
git clone https://github.com/Alina-Bagaeva/Apache-Airflow.git
cd Apache-Airflow
```

## 4. Настройка `.env`

Открой `.env` и отредактируй:

```bash
export AIRFLOW_UID=50000

# корень для Code Editor
AIRFLOW__CODE_EDITOR__ROOT_DIRECTORY=/opt/airflow/dags
AIRFLOW__CODE_EDITOR__ENABLED=true

# СИЛЬНЫЕ пароли (ОБЯЗАТЕЛЬНО заменить)
POSTGRES_PASSWORD=YourStrongPgPassword123!
_AIRFLOW_WWW_USER_PASSWORD=YourStrongAirflowPassword123!

# безопасность веб‑интерфейса
AIRFLOW__WEBSERVER__AUTHENTICATE=true
AIRFLOW__WEBSERVER__EXPOSE_CONFIG=false
AIRFLOW__CORE__SECURE_MODE=true
AIRFLOW__WEBSERVER__RBAC=true

# ВАЖНО: заменить IP на IP нового сервера
AIRFLOW__WEBSERVER__BASE_URL=http://<NEW_SERVER_IP>:8080
```

> Пример: `AIRFLOW__WEBSERVER__BASE_URL=http://194.67.124.212:8080`

## 5. Права на директории проекта

```bash
cd /root/Apache-Airflow

sudo mkdir -p dags logs config plugins backups
sudo chown -R 50000:0 dags logs config plugins backups
sudo chmod -R 775 dags logs config plugins backups
```

Это нужно, чтобы Code Editor и Airflow могли создавать файлы/папки.

## 6. Первый запуск Airflow

### 6.1. Инициализация БД (airflow-init один раз)

```bash
docker compose run --rm airflow-init
```

Убедись, что команда завершилась без ошибок (в конце видно версию `2.11.0`).

### 6.2. Запуск основного стека

```bash
docker compose up -d
docker compose ps
```

Ожидаемые сервисы в статусе `Up`:

- postgres
- redis
- airflow-webserver
- airflow-scheduler
- airflow-worker
- airflow-triggerer
- (опционально) prometheus

Проверка здоровья webserver:

```bash
curl http://localhost:8080/health
```

Если статус `healthy`, UI доступен по:

- `http://<NEW_SERVER_IP>:8080`

Логин по умолчанию:

- username: `airflow`
- password: значение `_AIRFLOW_WWW_USER_PASSWORD` из `.env`.

## 7. Nginx reverse proxy на порт 80

Файл `nginx.conf` уже в репозитории:

```nginx
server {
    listen 80;
    location / {
        proxy_pass http://host.docker.internal:8080;
        proxy_set_header Host $host;
        proxy_set_header X-Real-IP $remote_addr;
        proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
        proxy_set_header X-Forwarded-Proto $scheme;
    }
}
```

Запуск контейнера nginx:

```bash
docker run -d --name nginx-airflow \
  -p 80:80 \
  -v /root/Apache-Airflow/nginx.conf:/etc/nginx/conf.d/default.conf \
  nginx
```

Теперь UI доступен по:

- `http://<NEW_SERVER_IP>` (порт 80).

## 8. Prometheus (мониторинг)

Prometheus уже описан в `docker-compose.yaml`:

```yaml
prometheus:
  image: prom/prometheus
  container_name: prometheus
  ports:
    - "9090:9090"
  volumes:
    - ./prometheus.yml:/etc/prometheus/prometheus.yml
  restart: unless-stopped
```

Файл `prometheus.yml`:

```yaml
global:
  scrape_interval: 15s

scrape_configs:
  - job_name: 'airflow-webserver'
    static_configs:
      - targets: ['host.docker.internal:8080']
```

Запуск:

```bash
docker compose up -d prometheus
```

UI Prometheus:

- `http://<NEW_SERVER_IP>:9090`

## 9. Ресурсы для worker

В `docker-compose.yaml` секция `airflow-worker` уже настроена для сервера 4 vCPU / 8 GB RAM:

```yaml
airflow-worker:
  <<: *airflow-common
  command: celery worker
  ...
  mem_limit: 6g
  mem_reservation: 4g
  cpus: 3.0       # использует до 3 vCPU из 4
```

При необходимости можно изменить эти значения под свою нагрузку.

## 10. Скрипт резервного копирования БД

Файл `backup.sh`:

```bash
#!/bin/bash
TIMESTAMP=$(date +%Y%m%d_%H%M%S)
BACKUP_DIR="./backups"
mkdir -p "$BACKUP_DIR"

docker compose exec -T postgres \
  pg_dump -U airflow airflow > "$BACKUP_DIR/airflow_backup_${TIMESTAMP}.sql"

echo "Backup created: $BACKUP_DIR/airflow_backup_${TIMESTAMP}.sql"
```

Сделать исполняемым:

```bash
chmod +x backup.sh
```

Тест:

```bash
./backup.sh
ls -la backups/
```

### Cron для ежедневного бэкапа (в 02:00)

```bash
crontab -e
```

Добавить строку (путь скорректировать при необходимости):

```cron
0 2 * * * cd /root/Apache-Airflow && ./backup.sh >> /var/log/airflow_backup.log 2>&1
```

## 11. Типовой цикл деплоя новой версии

1. Локально вносите изменения и пушите в GitHub.
2. На сервере:

```bash
cd /root/Apache-Airflow
git pull
docker compose down
docker compose up -d --build
docker compose ps
```

1. Проверяете UI и health‑статус.