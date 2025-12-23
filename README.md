# Apache Airflow 2.11.0 Docker (CeleryExecutor + Code Editor)

Расширенная Docker-сборка Apache Airflow с поддержкой **Code Editor**, ClickHouse, MySQL, Telegram и HTTP провайдеров. Оптимизирована для разработки ETL/DWH пайплайнов.

## ✨ Особенности
- ✅ **Apache Airflow 2.11.0** (CeleryExecutor)
- ✅ **airflow-code-editor** — редактирование/создание DAG'ов и папок в UI
- ✅ **ClickHouse plugin** для аналитики
- ✅ **PostgreSQL 13 + Redis 7.2** (брокер/результаты)
- ✅ **16GB RAM / 6 CPU** для worker'а
- ✅ Тестирование подключений в UI
- ✅ Flower (опционально)

## 📋 Предварительная подготовка

**Обязательно выполните перед `docker-compose up`:**

sudo mkdir -p dags logs config plugins
sudo chown -R 50000:0 dags logs config plugins
sudo chmod -R 775 dags logs config plugins

> **Почему?** Airflow работает от UID `50000`. Без правильных прав Code Editor не сможет создавать папки в `./dags`.

## 🚀 Быстрый старт

1. **Скачайте файлы:**
docker-compose.yaml, Dockerfile, requirements.txt, .env

2. **Запуск:**
docker-compose build
docker-compose up -d

3. **Доступ:**
- **UI:** http://localhost:8080 (login: `airflow` / `airflow`)
- **PostgreSQL:** localhost:5432
- **Flower:** `docker-compose --profile flower up` → localhost:5555

## 📁 Структура проекта
.
├── dags/ # DAG'и (монтируется в /opt/airflow/dags)
├── logs/ # Логи
├── config/ # airflow.cfg (опционально)
├── plugins/ # Кастомные плагины
├── docker-compose.yaml
├── Dockerfile
├── requirements.txt
└── .env

## ⚙️ Конфигурация (.env)

export AIRFLOW_UID=50000
AIRFLOW__CODE_EDITOR__ROOT_DIRECTORY=/opt/airflow/dags
AIRFLOW__CODE_EDITOR__ENABLED=true

## 🔧 Использование Code Editor

1. **Admin → Plugins** → **Airflow Code Editor**
2. Создавайте папки/файлы прямо в UI
3. Работает с `./dags` на хосте

## 🛠 Дополнительные команды

Пересборка
docker-compose down && docker-compose up --build -d

Логи webserver
docker-compose logs -f airflow-webserver

CLI доступ
docker-compose run --rm airflow-cli

Flower (мониторинг Celery)
docker-compose --profile flower up flower


## 📦 Установленные пакеты (requirements.txt)

airflow-clickhouse-plugin==1.5.0

airflow-code-editor

pandas>=1.5.0, numpy>=1.21.0

mysql-connector-python>=8.0.0

apache-airflow-providers-http

apache-airflow-providers-telegram

## ⚠️ Важные замечания

- **Разработка только!** Не для продакшена
- **Ресурсы:** минимум 4GB RAM, 2 CPU, 10GB диск
- **После `docker-compose down`:** повторите chown команд для папок
- **Custom DAG'и:** кладите в `./dags`, автообновление

## 🔗 Полезные ссылки
- [Официальная Docker docs](https://airflow.apache.org/docs/docker-stack/)
- [airflow-code-editor GitHub](https://github.com/andreax79/airflow-code-editor)
- [ClickHouse plugin](https://github.com/ClickHouse/airflow-clickhouse-plugin)

---
**Сборка для data engineering задач с полной поддержкой Code Editor! 🚀**
