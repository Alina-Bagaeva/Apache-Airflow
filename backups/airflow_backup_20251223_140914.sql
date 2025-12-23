--
-- PostgreSQL database dump
--

\restrict 8UhL1x1MUjgOmXePOGB9ChxbypmmzFdeXYpgtlS9bA9hdySvX44HZHcNczFciaV

-- Dumped from database version 13.23 (Debian 13.23-1.pgdg13+1)
-- Dumped by pg_dump version 13.23 (Debian 13.23-1.pgdg13+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: ab_permission; Type: TABLE; Schema: public; Owner: airflow
--

CREATE TABLE public.ab_permission (
    id integer NOT NULL,
    name character varying(100) NOT NULL
);


ALTER TABLE public.ab_permission OWNER TO airflow;

--
-- Name: ab_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: airflow
--

CREATE SEQUENCE public.ab_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ab_permission_id_seq OWNER TO airflow;

--
-- Name: ab_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: airflow
--

ALTER SEQUENCE public.ab_permission_id_seq OWNED BY public.ab_permission.id;


--
-- Name: ab_permission_view; Type: TABLE; Schema: public; Owner: airflow
--

CREATE TABLE public.ab_permission_view (
    id integer NOT NULL,
    permission_id integer,
    view_menu_id integer
);


ALTER TABLE public.ab_permission_view OWNER TO airflow;

--
-- Name: ab_permission_view_id_seq; Type: SEQUENCE; Schema: public; Owner: airflow
--

CREATE SEQUENCE public.ab_permission_view_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ab_permission_view_id_seq OWNER TO airflow;

--
-- Name: ab_permission_view_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: airflow
--

ALTER SEQUENCE public.ab_permission_view_id_seq OWNED BY public.ab_permission_view.id;


--
-- Name: ab_permission_view_role; Type: TABLE; Schema: public; Owner: airflow
--

CREATE TABLE public.ab_permission_view_role (
    id integer NOT NULL,
    permission_view_id integer,
    role_id integer
);


ALTER TABLE public.ab_permission_view_role OWNER TO airflow;

--
-- Name: ab_permission_view_role_id_seq; Type: SEQUENCE; Schema: public; Owner: airflow
--

CREATE SEQUENCE public.ab_permission_view_role_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ab_permission_view_role_id_seq OWNER TO airflow;

--
-- Name: ab_permission_view_role_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: airflow
--

ALTER SEQUENCE public.ab_permission_view_role_id_seq OWNED BY public.ab_permission_view_role.id;


--
-- Name: ab_register_user; Type: TABLE; Schema: public; Owner: airflow
--

CREATE TABLE public.ab_register_user (
    id integer NOT NULL,
    first_name character varying(256) NOT NULL,
    last_name character varying(256) NOT NULL,
    username character varying(512) NOT NULL,
    password character varying(256),
    email character varying(512) NOT NULL,
    registration_date timestamp without time zone,
    registration_hash character varying(256)
);


ALTER TABLE public.ab_register_user OWNER TO airflow;

--
-- Name: ab_register_user_id_seq; Type: SEQUENCE; Schema: public; Owner: airflow
--

CREATE SEQUENCE public.ab_register_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ab_register_user_id_seq OWNER TO airflow;

--
-- Name: ab_register_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: airflow
--

ALTER SEQUENCE public.ab_register_user_id_seq OWNED BY public.ab_register_user.id;


--
-- Name: ab_role; Type: TABLE; Schema: public; Owner: airflow
--

CREATE TABLE public.ab_role (
    id integer NOT NULL,
    name character varying(64) NOT NULL
);


ALTER TABLE public.ab_role OWNER TO airflow;

--
-- Name: ab_role_id_seq; Type: SEQUENCE; Schema: public; Owner: airflow
--

CREATE SEQUENCE public.ab_role_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ab_role_id_seq OWNER TO airflow;

--
-- Name: ab_role_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: airflow
--

ALTER SEQUENCE public.ab_role_id_seq OWNED BY public.ab_role.id;


--
-- Name: ab_user; Type: TABLE; Schema: public; Owner: airflow
--

CREATE TABLE public.ab_user (
    id integer NOT NULL,
    first_name character varying(256) NOT NULL,
    last_name character varying(256) NOT NULL,
    username character varying(512) NOT NULL,
    password character varying(256),
    active boolean,
    email character varying(512) NOT NULL,
    last_login timestamp without time zone,
    login_count integer,
    fail_login_count integer,
    created_on timestamp without time zone,
    changed_on timestamp without time zone,
    created_by_fk integer,
    changed_by_fk integer
);


ALTER TABLE public.ab_user OWNER TO airflow;

--
-- Name: ab_user_id_seq; Type: SEQUENCE; Schema: public; Owner: airflow
--

CREATE SEQUENCE public.ab_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ab_user_id_seq OWNER TO airflow;

--
-- Name: ab_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: airflow
--

ALTER SEQUENCE public.ab_user_id_seq OWNED BY public.ab_user.id;


--
-- Name: ab_user_role; Type: TABLE; Schema: public; Owner: airflow
--

CREATE TABLE public.ab_user_role (
    id integer NOT NULL,
    user_id integer,
    role_id integer
);


ALTER TABLE public.ab_user_role OWNER TO airflow;

--
-- Name: ab_user_role_id_seq; Type: SEQUENCE; Schema: public; Owner: airflow
--

CREATE SEQUENCE public.ab_user_role_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ab_user_role_id_seq OWNER TO airflow;

--
-- Name: ab_user_role_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: airflow
--

ALTER SEQUENCE public.ab_user_role_id_seq OWNED BY public.ab_user_role.id;


--
-- Name: ab_view_menu; Type: TABLE; Schema: public; Owner: airflow
--

CREATE TABLE public.ab_view_menu (
    id integer NOT NULL,
    name character varying(250) NOT NULL
);


ALTER TABLE public.ab_view_menu OWNER TO airflow;

--
-- Name: ab_view_menu_id_seq; Type: SEQUENCE; Schema: public; Owner: airflow
--

CREATE SEQUENCE public.ab_view_menu_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ab_view_menu_id_seq OWNER TO airflow;

--
-- Name: ab_view_menu_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: airflow
--

ALTER SEQUENCE public.ab_view_menu_id_seq OWNED BY public.ab_view_menu.id;


--
-- Name: alembic_version; Type: TABLE; Schema: public; Owner: airflow
--

CREATE TABLE public.alembic_version (
    version_num character varying(32) NOT NULL
);


ALTER TABLE public.alembic_version OWNER TO airflow;

--
-- Name: callback_request; Type: TABLE; Schema: public; Owner: airflow
--

CREATE TABLE public.callback_request (
    id integer NOT NULL,
    created_at timestamp with time zone NOT NULL,
    priority_weight integer NOT NULL,
    callback_data json NOT NULL,
    callback_type character varying(20) NOT NULL,
    processor_subdir character varying(2000)
);


ALTER TABLE public.callback_request OWNER TO airflow;

--
-- Name: callback_request_id_seq; Type: SEQUENCE; Schema: public; Owner: airflow
--

CREATE SEQUENCE public.callback_request_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.callback_request_id_seq OWNER TO airflow;

--
-- Name: callback_request_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: airflow
--

ALTER SEQUENCE public.callback_request_id_seq OWNED BY public.callback_request.id;


--
-- Name: celery_taskmeta; Type: TABLE; Schema: public; Owner: airflow
--

CREATE TABLE public.celery_taskmeta (
    id integer NOT NULL,
    task_id character varying(155),
    status character varying(50),
    result bytea,
    date_done timestamp without time zone,
    traceback text,
    name character varying(155),
    args bytea,
    kwargs bytea,
    worker character varying(155),
    retries integer,
    queue character varying(155)
);


ALTER TABLE public.celery_taskmeta OWNER TO airflow;

--
-- Name: celery_tasksetmeta; Type: TABLE; Schema: public; Owner: airflow
--

CREATE TABLE public.celery_tasksetmeta (
    id integer NOT NULL,
    taskset_id character varying(155),
    result bytea,
    date_done timestamp without time zone
);


ALTER TABLE public.celery_tasksetmeta OWNER TO airflow;

--
-- Name: connection; Type: TABLE; Schema: public; Owner: airflow
--

CREATE TABLE public.connection (
    id integer NOT NULL,
    conn_id character varying(250) NOT NULL,
    conn_type character varying(500) NOT NULL,
    description text,
    host character varying(500),
    schema character varying(500),
    login text,
    password text,
    port integer,
    is_encrypted boolean,
    is_extra_encrypted boolean,
    extra text
);


ALTER TABLE public.connection OWNER TO airflow;

--
-- Name: connection_id_seq; Type: SEQUENCE; Schema: public; Owner: airflow
--

CREATE SEQUENCE public.connection_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.connection_id_seq OWNER TO airflow;

--
-- Name: connection_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: airflow
--

ALTER SEQUENCE public.connection_id_seq OWNED BY public.connection.id;


--
-- Name: dag; Type: TABLE; Schema: public; Owner: airflow
--

CREATE TABLE public.dag (
    dag_id character varying(250) NOT NULL,
    root_dag_id character varying(250),
    is_paused boolean,
    is_subdag boolean,
    is_active boolean,
    last_parsed_time timestamp with time zone,
    last_pickled timestamp with time zone,
    last_expired timestamp with time zone,
    scheduler_lock boolean,
    pickle_id integer,
    fileloc character varying(2000),
    processor_subdir character varying(2000),
    owners character varying(2000),
    dag_display_name character varying(2000),
    description text,
    default_view character varying(25),
    schedule_interval text,
    timetable_description character varying(1000),
    dataset_expression json,
    max_active_tasks integer NOT NULL,
    max_active_runs integer,
    max_consecutive_failed_dag_runs integer NOT NULL,
    has_task_concurrency_limits boolean NOT NULL,
    has_import_errors boolean DEFAULT false,
    next_dagrun timestamp with time zone,
    next_dagrun_data_interval_start timestamp with time zone,
    next_dagrun_data_interval_end timestamp with time zone,
    next_dagrun_create_after timestamp with time zone
);


ALTER TABLE public.dag OWNER TO airflow;

--
-- Name: dag_code; Type: TABLE; Schema: public; Owner: airflow
--

CREATE TABLE public.dag_code (
    fileloc_hash bigint NOT NULL,
    fileloc character varying(2000) NOT NULL,
    last_updated timestamp with time zone NOT NULL,
    source_code text NOT NULL
);


ALTER TABLE public.dag_code OWNER TO airflow;

--
-- Name: dag_owner_attributes; Type: TABLE; Schema: public; Owner: airflow
--

CREATE TABLE public.dag_owner_attributes (
    dag_id character varying(250) NOT NULL,
    owner character varying(500) NOT NULL,
    link character varying(500) NOT NULL
);


ALTER TABLE public.dag_owner_attributes OWNER TO airflow;

--
-- Name: dag_pickle; Type: TABLE; Schema: public; Owner: airflow
--

CREATE TABLE public.dag_pickle (
    id integer NOT NULL,
    pickle bytea,
    created_dttm timestamp with time zone,
    pickle_hash bigint
);


ALTER TABLE public.dag_pickle OWNER TO airflow;

--
-- Name: dag_pickle_id_seq; Type: SEQUENCE; Schema: public; Owner: airflow
--

CREATE SEQUENCE public.dag_pickle_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dag_pickle_id_seq OWNER TO airflow;

--
-- Name: dag_pickle_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: airflow
--

ALTER SEQUENCE public.dag_pickle_id_seq OWNED BY public.dag_pickle.id;


--
-- Name: dag_priority_parsing_request; Type: TABLE; Schema: public; Owner: airflow
--

CREATE TABLE public.dag_priority_parsing_request (
    id character varying(32) NOT NULL,
    fileloc character varying(2000) NOT NULL
);


ALTER TABLE public.dag_priority_parsing_request OWNER TO airflow;

--
-- Name: dag_run; Type: TABLE; Schema: public; Owner: airflow
--

CREATE TABLE public.dag_run (
    id integer NOT NULL,
    dag_id character varying(250) NOT NULL,
    queued_at timestamp with time zone,
    execution_date timestamp with time zone NOT NULL,
    start_date timestamp with time zone,
    end_date timestamp with time zone,
    state character varying(50),
    run_id character varying(250) NOT NULL,
    creating_job_id integer,
    external_trigger boolean,
    run_type character varying(50) NOT NULL,
    conf bytea,
    data_interval_start timestamp with time zone,
    data_interval_end timestamp with time zone,
    last_scheduling_decision timestamp with time zone,
    dag_hash character varying(32),
    log_template_id integer,
    updated_at timestamp with time zone,
    clear_number integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.dag_run OWNER TO airflow;

--
-- Name: dag_run_id_seq; Type: SEQUENCE; Schema: public; Owner: airflow
--

CREATE SEQUENCE public.dag_run_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dag_run_id_seq OWNER TO airflow;

--
-- Name: dag_run_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: airflow
--

ALTER SEQUENCE public.dag_run_id_seq OWNED BY public.dag_run.id;


--
-- Name: dag_run_note; Type: TABLE; Schema: public; Owner: airflow
--

CREATE TABLE public.dag_run_note (
    user_id integer,
    dag_run_id integer NOT NULL,
    content character varying(1000),
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL
);


ALTER TABLE public.dag_run_note OWNER TO airflow;

--
-- Name: dag_schedule_dataset_alias_reference; Type: TABLE; Schema: public; Owner: airflow
--

CREATE TABLE public.dag_schedule_dataset_alias_reference (
    alias_id integer NOT NULL,
    dag_id character varying(250) NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL
);


ALTER TABLE public.dag_schedule_dataset_alias_reference OWNER TO airflow;

--
-- Name: dag_schedule_dataset_reference; Type: TABLE; Schema: public; Owner: airflow
--

CREATE TABLE public.dag_schedule_dataset_reference (
    dataset_id integer NOT NULL,
    dag_id character varying(250) NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL
);


ALTER TABLE public.dag_schedule_dataset_reference OWNER TO airflow;

--
-- Name: dag_tag; Type: TABLE; Schema: public; Owner: airflow
--

CREATE TABLE public.dag_tag (
    name character varying(100) NOT NULL,
    dag_id character varying(250) NOT NULL
);


ALTER TABLE public.dag_tag OWNER TO airflow;

--
-- Name: dag_warning; Type: TABLE; Schema: public; Owner: airflow
--

CREATE TABLE public.dag_warning (
    dag_id character varying(250) NOT NULL,
    warning_type character varying(50) NOT NULL,
    message text NOT NULL,
    "timestamp" timestamp with time zone NOT NULL
);


ALTER TABLE public.dag_warning OWNER TO airflow;

--
-- Name: dagrun_dataset_event; Type: TABLE; Schema: public; Owner: airflow
--

CREATE TABLE public.dagrun_dataset_event (
    dag_run_id integer NOT NULL,
    event_id integer NOT NULL
);


ALTER TABLE public.dagrun_dataset_event OWNER TO airflow;

--
-- Name: dataset; Type: TABLE; Schema: public; Owner: airflow
--

CREATE TABLE public.dataset (
    id integer NOT NULL,
    uri character varying(3000) NOT NULL,
    extra json NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    is_orphaned boolean DEFAULT false NOT NULL
);


ALTER TABLE public.dataset OWNER TO airflow;

--
-- Name: dataset_alias; Type: TABLE; Schema: public; Owner: airflow
--

CREATE TABLE public.dataset_alias (
    id integer NOT NULL,
    name character varying(3000) NOT NULL
);


ALTER TABLE public.dataset_alias OWNER TO airflow;

--
-- Name: dataset_alias_dataset; Type: TABLE; Schema: public; Owner: airflow
--

CREATE TABLE public.dataset_alias_dataset (
    alias_id integer NOT NULL,
    dataset_id integer NOT NULL
);


ALTER TABLE public.dataset_alias_dataset OWNER TO airflow;

--
-- Name: dataset_alias_dataset_event; Type: TABLE; Schema: public; Owner: airflow
--

CREATE TABLE public.dataset_alias_dataset_event (
    alias_id integer NOT NULL,
    event_id integer NOT NULL
);


ALTER TABLE public.dataset_alias_dataset_event OWNER TO airflow;

--
-- Name: dataset_alias_id_seq; Type: SEQUENCE; Schema: public; Owner: airflow
--

CREATE SEQUENCE public.dataset_alias_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dataset_alias_id_seq OWNER TO airflow;

--
-- Name: dataset_alias_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: airflow
--

ALTER SEQUENCE public.dataset_alias_id_seq OWNED BY public.dataset_alias.id;


--
-- Name: dataset_dag_run_queue; Type: TABLE; Schema: public; Owner: airflow
--

CREATE TABLE public.dataset_dag_run_queue (
    dataset_id integer NOT NULL,
    target_dag_id character varying(250) NOT NULL,
    created_at timestamp with time zone NOT NULL
);


ALTER TABLE public.dataset_dag_run_queue OWNER TO airflow;

--
-- Name: dataset_event; Type: TABLE; Schema: public; Owner: airflow
--

CREATE TABLE public.dataset_event (
    id integer NOT NULL,
    dataset_id integer NOT NULL,
    extra json NOT NULL,
    source_task_id character varying(250),
    source_dag_id character varying(250),
    source_run_id character varying(250),
    source_map_index integer DEFAULT '-1'::integer,
    "timestamp" timestamp with time zone NOT NULL
);


ALTER TABLE public.dataset_event OWNER TO airflow;

--
-- Name: dataset_event_id_seq; Type: SEQUENCE; Schema: public; Owner: airflow
--

CREATE SEQUENCE public.dataset_event_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dataset_event_id_seq OWNER TO airflow;

--
-- Name: dataset_event_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: airflow
--

ALTER SEQUENCE public.dataset_event_id_seq OWNED BY public.dataset_event.id;


--
-- Name: dataset_id_seq; Type: SEQUENCE; Schema: public; Owner: airflow
--

CREATE SEQUENCE public.dataset_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dataset_id_seq OWNER TO airflow;

--
-- Name: dataset_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: airflow
--

ALTER SEQUENCE public.dataset_id_seq OWNED BY public.dataset.id;


--
-- Name: import_error; Type: TABLE; Schema: public; Owner: airflow
--

CREATE TABLE public.import_error (
    id integer NOT NULL,
    "timestamp" timestamp with time zone,
    filename character varying(1024),
    stacktrace text,
    processor_subdir character varying(2000)
);


ALTER TABLE public.import_error OWNER TO airflow;

--
-- Name: import_error_id_seq; Type: SEQUENCE; Schema: public; Owner: airflow
--

CREATE SEQUENCE public.import_error_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.import_error_id_seq OWNER TO airflow;

--
-- Name: import_error_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: airflow
--

ALTER SEQUENCE public.import_error_id_seq OWNED BY public.import_error.id;


--
-- Name: job; Type: TABLE; Schema: public; Owner: airflow
--

CREATE TABLE public.job (
    id integer NOT NULL,
    dag_id character varying(250),
    state character varying(20),
    job_type character varying(30),
    start_date timestamp with time zone,
    end_date timestamp with time zone,
    latest_heartbeat timestamp with time zone,
    executor_class character varying(500),
    hostname character varying(500),
    unixname character varying(1000)
);


ALTER TABLE public.job OWNER TO airflow;

--
-- Name: job_id_seq; Type: SEQUENCE; Schema: public; Owner: airflow
--

CREATE SEQUENCE public.job_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.job_id_seq OWNER TO airflow;

--
-- Name: job_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: airflow
--

ALTER SEQUENCE public.job_id_seq OWNED BY public.job.id;


--
-- Name: log; Type: TABLE; Schema: public; Owner: airflow
--

CREATE TABLE public.log (
    id integer NOT NULL,
    dttm timestamp with time zone,
    dag_id character varying(250),
    task_id character varying(250),
    map_index integer,
    event character varying(60),
    execution_date timestamp with time zone,
    run_id character varying(250),
    owner character varying(500),
    owner_display_name character varying(500),
    extra text,
    try_number integer
);


ALTER TABLE public.log OWNER TO airflow;

--
-- Name: log_id_seq; Type: SEQUENCE; Schema: public; Owner: airflow
--

CREATE SEQUENCE public.log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.log_id_seq OWNER TO airflow;

--
-- Name: log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: airflow
--

ALTER SEQUENCE public.log_id_seq OWNED BY public.log.id;


--
-- Name: log_template; Type: TABLE; Schema: public; Owner: airflow
--

CREATE TABLE public.log_template (
    id integer NOT NULL,
    filename text NOT NULL,
    elasticsearch_id text NOT NULL,
    created_at timestamp with time zone NOT NULL
);


ALTER TABLE public.log_template OWNER TO airflow;

--
-- Name: log_template_id_seq; Type: SEQUENCE; Schema: public; Owner: airflow
--

CREATE SEQUENCE public.log_template_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.log_template_id_seq OWNER TO airflow;

--
-- Name: log_template_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: airflow
--

ALTER SEQUENCE public.log_template_id_seq OWNED BY public.log_template.id;


--
-- Name: rendered_task_instance_fields; Type: TABLE; Schema: public; Owner: airflow
--

CREATE TABLE public.rendered_task_instance_fields (
    dag_id character varying(250) NOT NULL,
    task_id character varying(250) NOT NULL,
    run_id character varying(250) NOT NULL,
    map_index integer DEFAULT '-1'::integer NOT NULL,
    rendered_fields json NOT NULL,
    k8s_pod_yaml json
);


ALTER TABLE public.rendered_task_instance_fields OWNER TO airflow;

--
-- Name: serialized_dag; Type: TABLE; Schema: public; Owner: airflow
--

CREATE TABLE public.serialized_dag (
    dag_id character varying(250) NOT NULL,
    fileloc character varying(2000) NOT NULL,
    fileloc_hash bigint NOT NULL,
    data json,
    data_compressed bytea,
    last_updated timestamp with time zone NOT NULL,
    dag_hash character varying(32) NOT NULL,
    processor_subdir character varying(2000)
);


ALTER TABLE public.serialized_dag OWNER TO airflow;

--
-- Name: session; Type: TABLE; Schema: public; Owner: airflow
--

CREATE TABLE public.session (
    id integer NOT NULL,
    session_id character varying(255),
    data bytea,
    expiry timestamp without time zone
);


ALTER TABLE public.session OWNER TO airflow;

--
-- Name: session_id_seq; Type: SEQUENCE; Schema: public; Owner: airflow
--

CREATE SEQUENCE public.session_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.session_id_seq OWNER TO airflow;

--
-- Name: session_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: airflow
--

ALTER SEQUENCE public.session_id_seq OWNED BY public.session.id;


--
-- Name: sla_miss; Type: TABLE; Schema: public; Owner: airflow
--

CREATE TABLE public.sla_miss (
    task_id character varying(250) NOT NULL,
    dag_id character varying(250) NOT NULL,
    execution_date timestamp with time zone NOT NULL,
    email_sent boolean,
    "timestamp" timestamp with time zone,
    description text,
    notification_sent boolean
);


ALTER TABLE public.sla_miss OWNER TO airflow;

--
-- Name: slot_pool; Type: TABLE; Schema: public; Owner: airflow
--

CREATE TABLE public.slot_pool (
    id integer NOT NULL,
    pool character varying(256),
    slots integer,
    description text,
    include_deferred boolean NOT NULL
);


ALTER TABLE public.slot_pool OWNER TO airflow;

--
-- Name: slot_pool_id_seq; Type: SEQUENCE; Schema: public; Owner: airflow
--

CREATE SEQUENCE public.slot_pool_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.slot_pool_id_seq OWNER TO airflow;

--
-- Name: slot_pool_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: airflow
--

ALTER SEQUENCE public.slot_pool_id_seq OWNED BY public.slot_pool.id;


--
-- Name: task_fail; Type: TABLE; Schema: public; Owner: airflow
--

CREATE TABLE public.task_fail (
    id integer NOT NULL,
    task_id character varying(250) NOT NULL,
    dag_id character varying(250) NOT NULL,
    run_id character varying(250) NOT NULL,
    map_index integer DEFAULT '-1'::integer NOT NULL,
    start_date timestamp with time zone,
    end_date timestamp with time zone,
    duration integer
);


ALTER TABLE public.task_fail OWNER TO airflow;

--
-- Name: task_fail_id_seq; Type: SEQUENCE; Schema: public; Owner: airflow
--

CREATE SEQUENCE public.task_fail_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.task_fail_id_seq OWNER TO airflow;

--
-- Name: task_fail_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: airflow
--

ALTER SEQUENCE public.task_fail_id_seq OWNED BY public.task_fail.id;


--
-- Name: task_id_sequence; Type: SEQUENCE; Schema: public; Owner: airflow
--

CREATE SEQUENCE public.task_id_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.task_id_sequence OWNER TO airflow;

--
-- Name: task_instance; Type: TABLE; Schema: public; Owner: airflow
--

CREATE TABLE public.task_instance (
    task_id character varying(250) NOT NULL,
    dag_id character varying(250) NOT NULL,
    run_id character varying(250) NOT NULL,
    map_index integer DEFAULT '-1'::integer NOT NULL,
    start_date timestamp with time zone,
    end_date timestamp with time zone,
    duration double precision,
    state character varying(20),
    try_number integer,
    max_tries integer DEFAULT '-1'::integer,
    hostname character varying(1000),
    unixname character varying(1000),
    job_id integer,
    pool character varying(256) NOT NULL,
    pool_slots integer NOT NULL,
    queue character varying(256),
    priority_weight integer,
    operator character varying(1000),
    custom_operator_name character varying(1000),
    queued_dttm timestamp with time zone,
    queued_by_job_id integer,
    pid integer,
    executor character varying(1000),
    executor_config bytea,
    updated_at timestamp with time zone,
    rendered_map_index character varying(250),
    external_executor_id character varying(250),
    trigger_id integer,
    trigger_timeout timestamp without time zone,
    next_method character varying(1000),
    next_kwargs json,
    task_display_name character varying(2000)
);


ALTER TABLE public.task_instance OWNER TO airflow;

--
-- Name: task_instance_history; Type: TABLE; Schema: public; Owner: airflow
--

CREATE TABLE public.task_instance_history (
    id integer NOT NULL,
    task_id character varying(250) NOT NULL,
    dag_id character varying(250) NOT NULL,
    run_id character varying(250) NOT NULL,
    map_index integer DEFAULT '-1'::integer NOT NULL,
    try_number integer NOT NULL,
    start_date timestamp with time zone,
    end_date timestamp with time zone,
    duration double precision,
    state character varying(20),
    max_tries integer DEFAULT '-1'::integer,
    hostname character varying(1000),
    unixname character varying(1000),
    job_id integer,
    pool character varying(256) NOT NULL,
    pool_slots integer NOT NULL,
    queue character varying(256),
    priority_weight integer,
    operator character varying(1000),
    custom_operator_name character varying(1000),
    queued_dttm timestamp with time zone,
    queued_by_job_id integer,
    pid integer,
    executor character varying(1000),
    executor_config bytea,
    updated_at timestamp with time zone,
    rendered_map_index character varying(250),
    external_executor_id character varying(250),
    trigger_id integer,
    trigger_timeout timestamp without time zone,
    next_method character varying(1000),
    next_kwargs json,
    task_display_name character varying(2000)
);


ALTER TABLE public.task_instance_history OWNER TO airflow;

--
-- Name: task_instance_history_id_seq; Type: SEQUENCE; Schema: public; Owner: airflow
--

CREATE SEQUENCE public.task_instance_history_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.task_instance_history_id_seq OWNER TO airflow;

--
-- Name: task_instance_history_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: airflow
--

ALTER SEQUENCE public.task_instance_history_id_seq OWNED BY public.task_instance_history.id;


--
-- Name: task_instance_note; Type: TABLE; Schema: public; Owner: airflow
--

CREATE TABLE public.task_instance_note (
    user_id integer,
    task_id character varying(250) NOT NULL,
    dag_id character varying(250) NOT NULL,
    run_id character varying(250) NOT NULL,
    map_index integer NOT NULL,
    content character varying(1000),
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL
);


ALTER TABLE public.task_instance_note OWNER TO airflow;

--
-- Name: task_map; Type: TABLE; Schema: public; Owner: airflow
--

CREATE TABLE public.task_map (
    dag_id character varying(250) NOT NULL,
    task_id character varying(250) NOT NULL,
    run_id character varying(250) NOT NULL,
    map_index integer NOT NULL,
    length integer NOT NULL,
    keys json,
    CONSTRAINT ck_task_map_task_map_length_not_negative CHECK ((length >= 0))
);


ALTER TABLE public.task_map OWNER TO airflow;

--
-- Name: task_outlet_dataset_reference; Type: TABLE; Schema: public; Owner: airflow
--

CREATE TABLE public.task_outlet_dataset_reference (
    dataset_id integer NOT NULL,
    dag_id character varying(250) NOT NULL,
    task_id character varying(250) NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL
);


ALTER TABLE public.task_outlet_dataset_reference OWNER TO airflow;

--
-- Name: task_reschedule; Type: TABLE; Schema: public; Owner: airflow
--

CREATE TABLE public.task_reschedule (
    id integer NOT NULL,
    task_id character varying(250) NOT NULL,
    dag_id character varying(250) NOT NULL,
    run_id character varying(250) NOT NULL,
    map_index integer DEFAULT '-1'::integer NOT NULL,
    try_number integer NOT NULL,
    start_date timestamp with time zone NOT NULL,
    end_date timestamp with time zone NOT NULL,
    duration integer NOT NULL,
    reschedule_date timestamp with time zone NOT NULL
);


ALTER TABLE public.task_reschedule OWNER TO airflow;

--
-- Name: task_reschedule_id_seq; Type: SEQUENCE; Schema: public; Owner: airflow
--

CREATE SEQUENCE public.task_reschedule_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.task_reschedule_id_seq OWNER TO airflow;

--
-- Name: task_reschedule_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: airflow
--

ALTER SEQUENCE public.task_reschedule_id_seq OWNED BY public.task_reschedule.id;


--
-- Name: taskset_id_sequence; Type: SEQUENCE; Schema: public; Owner: airflow
--

CREATE SEQUENCE public.taskset_id_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.taskset_id_sequence OWNER TO airflow;

--
-- Name: trigger; Type: TABLE; Schema: public; Owner: airflow
--

CREATE TABLE public.trigger (
    id integer NOT NULL,
    classpath character varying(1000) NOT NULL,
    kwargs text NOT NULL,
    created_date timestamp with time zone NOT NULL,
    triggerer_id integer
);


ALTER TABLE public.trigger OWNER TO airflow;

--
-- Name: trigger_id_seq; Type: SEQUENCE; Schema: public; Owner: airflow
--

CREATE SEQUENCE public.trigger_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.trigger_id_seq OWNER TO airflow;

--
-- Name: trigger_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: airflow
--

ALTER SEQUENCE public.trigger_id_seq OWNED BY public.trigger.id;


--
-- Name: variable; Type: TABLE; Schema: public; Owner: airflow
--

CREATE TABLE public.variable (
    id integer NOT NULL,
    key character varying(250),
    val text,
    description text,
    is_encrypted boolean
);


ALTER TABLE public.variable OWNER TO airflow;

--
-- Name: variable_id_seq; Type: SEQUENCE; Schema: public; Owner: airflow
--

CREATE SEQUENCE public.variable_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.variable_id_seq OWNER TO airflow;

--
-- Name: variable_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: airflow
--

ALTER SEQUENCE public.variable_id_seq OWNED BY public.variable.id;


--
-- Name: xcom; Type: TABLE; Schema: public; Owner: airflow
--

CREATE TABLE public.xcom (
    dag_run_id integer NOT NULL,
    task_id character varying(250) NOT NULL,
    map_index integer DEFAULT '-1'::integer NOT NULL,
    key character varying(512) NOT NULL,
    dag_id character varying(250) NOT NULL,
    run_id character varying(250) NOT NULL,
    value bytea,
    "timestamp" timestamp with time zone NOT NULL
);


ALTER TABLE public.xcom OWNER TO airflow;

--
-- Name: ab_permission id; Type: DEFAULT; Schema: public; Owner: airflow
--

ALTER TABLE ONLY public.ab_permission ALTER COLUMN id SET DEFAULT nextval('public.ab_permission_id_seq'::regclass);


--
-- Name: ab_permission_view id; Type: DEFAULT; Schema: public; Owner: airflow
--

ALTER TABLE ONLY public.ab_permission_view ALTER COLUMN id SET DEFAULT nextval('public.ab_permission_view_id_seq'::regclass);


--
-- Name: ab_permission_view_role id; Type: DEFAULT; Schema: public; Owner: airflow
--

ALTER TABLE ONLY public.ab_permission_view_role ALTER COLUMN id SET DEFAULT nextval('public.ab_permission_view_role_id_seq'::regclass);


--
-- Name: ab_register_user id; Type: DEFAULT; Schema: public; Owner: airflow
--

ALTER TABLE ONLY public.ab_register_user ALTER COLUMN id SET DEFAULT nextval('public.ab_register_user_id_seq'::regclass);


--
-- Name: ab_role id; Type: DEFAULT; Schema: public; Owner: airflow
--

ALTER TABLE ONLY public.ab_role ALTER COLUMN id SET DEFAULT nextval('public.ab_role_id_seq'::regclass);


--
-- Name: ab_user id; Type: DEFAULT; Schema: public; Owner: airflow
--

ALTER TABLE ONLY public.ab_user ALTER COLUMN id SET DEFAULT nextval('public.ab_user_id_seq'::regclass);


--
-- Name: ab_user_role id; Type: DEFAULT; Schema: public; Owner: airflow
--

ALTER TABLE ONLY public.ab_user_role ALTER COLUMN id SET DEFAULT nextval('public.ab_user_role_id_seq'::regclass);


--
-- Name: ab_view_menu id; Type: DEFAULT; Schema: public; Owner: airflow
--

ALTER TABLE ONLY public.ab_view_menu ALTER COLUMN id SET DEFAULT nextval('public.ab_view_menu_id_seq'::regclass);


--
-- Name: callback_request id; Type: DEFAULT; Schema: public; Owner: airflow
--

ALTER TABLE ONLY public.callback_request ALTER COLUMN id SET DEFAULT nextval('public.callback_request_id_seq'::regclass);


--
-- Name: connection id; Type: DEFAULT; Schema: public; Owner: airflow
--

ALTER TABLE ONLY public.connection ALTER COLUMN id SET DEFAULT nextval('public.connection_id_seq'::regclass);


--
-- Name: dag_pickle id; Type: DEFAULT; Schema: public; Owner: airflow
--

ALTER TABLE ONLY public.dag_pickle ALTER COLUMN id SET DEFAULT nextval('public.dag_pickle_id_seq'::regclass);


--
-- Name: dag_run id; Type: DEFAULT; Schema: public; Owner: airflow
--

ALTER TABLE ONLY public.dag_run ALTER COLUMN id SET DEFAULT nextval('public.dag_run_id_seq'::regclass);


--
-- Name: dataset id; Type: DEFAULT; Schema: public; Owner: airflow
--

ALTER TABLE ONLY public.dataset ALTER COLUMN id SET DEFAULT nextval('public.dataset_id_seq'::regclass);


--
-- Name: dataset_alias id; Type: DEFAULT; Schema: public; Owner: airflow
--

ALTER TABLE ONLY public.dataset_alias ALTER COLUMN id SET DEFAULT nextval('public.dataset_alias_id_seq'::regclass);


--
-- Name: dataset_event id; Type: DEFAULT; Schema: public; Owner: airflow
--

ALTER TABLE ONLY public.dataset_event ALTER COLUMN id SET DEFAULT nextval('public.dataset_event_id_seq'::regclass);


--
-- Name: import_error id; Type: DEFAULT; Schema: public; Owner: airflow
--

ALTER TABLE ONLY public.import_error ALTER COLUMN id SET DEFAULT nextval('public.import_error_id_seq'::regclass);


--
-- Name: job id; Type: DEFAULT; Schema: public; Owner: airflow
--

ALTER TABLE ONLY public.job ALTER COLUMN id SET DEFAULT nextval('public.job_id_seq'::regclass);


--
-- Name: log id; Type: DEFAULT; Schema: public; Owner: airflow
--

ALTER TABLE ONLY public.log ALTER COLUMN id SET DEFAULT nextval('public.log_id_seq'::regclass);


--
-- Name: log_template id; Type: DEFAULT; Schema: public; Owner: airflow
--

ALTER TABLE ONLY public.log_template ALTER COLUMN id SET DEFAULT nextval('public.log_template_id_seq'::regclass);


--
-- Name: session id; Type: DEFAULT; Schema: public; Owner: airflow
--

ALTER TABLE ONLY public.session ALTER COLUMN id SET DEFAULT nextval('public.session_id_seq'::regclass);


--
-- Name: slot_pool id; Type: DEFAULT; Schema: public; Owner: airflow
--

ALTER TABLE ONLY public.slot_pool ALTER COLUMN id SET DEFAULT nextval('public.slot_pool_id_seq'::regclass);


--
-- Name: task_fail id; Type: DEFAULT; Schema: public; Owner: airflow
--

ALTER TABLE ONLY public.task_fail ALTER COLUMN id SET DEFAULT nextval('public.task_fail_id_seq'::regclass);


--
-- Name: task_instance_history id; Type: DEFAULT; Schema: public; Owner: airflow
--

ALTER TABLE ONLY public.task_instance_history ALTER COLUMN id SET DEFAULT nextval('public.task_instance_history_id_seq'::regclass);


--
-- Name: task_reschedule id; Type: DEFAULT; Schema: public; Owner: airflow
--

ALTER TABLE ONLY public.task_reschedule ALTER COLUMN id SET DEFAULT nextval('public.task_reschedule_id_seq'::regclass);


--
-- Name: trigger id; Type: DEFAULT; Schema: public; Owner: airflow
--

ALTER TABLE ONLY public.trigger ALTER COLUMN id SET DEFAULT nextval('public.trigger_id_seq'::regclass);


--
-- Name: variable id; Type: DEFAULT; Schema: public; Owner: airflow
--

ALTER TABLE ONLY public.variable ALTER COLUMN id SET DEFAULT nextval('public.variable_id_seq'::regclass);


--
-- Data for Name: ab_permission; Type: TABLE DATA; Schema: public; Owner: airflow
--

COPY public.ab_permission (id, name) FROM stdin;
1	can_edit
2	can_read
3	can_create
4	can_delete
5	menu_access
6	can_list
7	menu_acccess
\.


--
-- Data for Name: ab_permission_view; Type: TABLE DATA; Schema: public; Owner: airflow
--

COPY public.ab_permission_view (id, permission_id, view_menu_id) FROM stdin;
1	1	4
2	2	4
3	1	5
4	2	5
5	1	6
6	2	6
7	3	8
8	2	8
9	1	8
10	4	8
11	5	9
12	5	10
13	3	11
14	2	11
15	1	11
16	4	11
17	5	12
18	2	13
19	5	14
20	2	15
21	5	16
22	2	17
23	5	18
24	2	19
25	5	20
26	6	21
27	3	21
28	7	21
29	5	22
30	5	23
31	5	24
32	5	25
33	3	28
34	2	28
35	1	28
36	4	28
37	5	28
38	5	29
39	2	30
40	5	30
41	2	31
42	5	31
43	3	32
44	2	32
45	1	32
46	4	32
47	5	32
48	3	33
49	2	33
50	1	33
51	4	33
52	5	33
53	2	34
54	5	34
55	2	35
56	5	35
57	2	36
58	5	36
59	3	37
60	2	37
61	1	37
62	4	37
63	5	37
64	2	38
65	5	38
66	4	38
67	1	38
68	2	39
69	5	39
70	2	40
71	5	40
72	3	41
73	2	41
74	1	41
75	4	41
76	5	41
77	2	42
78	4	42
79	5	42
80	5	44
81	5	48
82	5	49
83	5	50
84	5	51
85	2	48
86	1	48
87	4	48
88	2	44
89	2	52
90	2	50
91	2	49
92	2	53
93	2	54
94	2	55
95	2	56
96	3	50
97	4	50
98	2	57
99	1	57
100	4	57
101	2	58
102	5	58
103	3	58
104	4	58
\.


--
-- Data for Name: ab_permission_view_role; Type: TABLE DATA; Schema: public; Owner: airflow
--

COPY public.ab_permission_view_role (id, permission_view_id, role_id) FROM stdin;
1	1	1
2	2	1
3	3	1
4	4	1
5	5	1
6	6	1
7	7	1
8	8	1
9	9	1
10	10	1
11	11	1
12	12	1
13	13	1
14	14	1
15	15	1
16	16	1
17	17	1
18	18	1
19	19	1
20	20	1
21	21	1
22	22	1
23	23	1
24	24	1
25	25	1
26	26	1
27	27	1
28	28	1
29	29	1
30	30	1
31	31	1
32	32	1
33	33	1
34	34	1
35	35	1
36	36	1
37	37	1
38	38	1
39	39	1
40	40	1
41	41	1
42	42	1
43	43	1
44	44	1
45	45	1
46	46	1
47	47	1
48	48	1
49	49	1
50	50	1
51	51	1
52	52	1
53	53	1
54	54	1
55	55	1
56	56	1
57	57	1
58	58	1
59	59	1
60	60	1
61	61	1
62	62	1
63	63	1
64	64	1
65	65	1
66	66	1
67	67	1
68	68	1
69	69	1
70	70	1
71	71	1
72	72	1
73	73	1
74	74	1
75	75	1
76	76	1
77	77	1
78	78	1
79	79	1
80	80	1
81	81	1
82	82	1
83	83	1
84	84	1
85	85	3
86	88	3
87	89	3
88	34	3
89	90	3
90	91	3
91	73	3
92	92	3
93	93	3
94	39	3
95	4	3
96	3	3
97	6	3
98	5	3
99	64	3
100	49	3
101	94	3
102	77	3
103	95	3
104	38	3
105	81	3
106	80	3
107	37	3
108	83	3
109	82	3
110	84	3
111	32	3
112	40	3
113	65	3
114	52	3
115	85	4
116	88	4
117	89	4
118	34	4
119	90	4
120	91	4
121	73	4
122	92	4
123	93	4
124	39	4
125	4	4
126	3	4
127	6	4
128	5	4
129	64	4
130	49	4
131	94	4
132	77	4
133	95	4
134	38	4
135	81	4
136	80	4
137	37	4
138	83	4
139	82	4
140	84	4
141	32	4
142	40	4
143	65	4
144	52	4
145	86	4
146	87	4
147	48	4
148	50	4
149	51	4
150	33	4
151	35	4
152	36	4
153	96	4
154	85	5
155	88	5
156	89	5
157	34	5
158	90	5
159	91	5
160	73	5
161	92	5
162	93	5
163	39	5
164	4	5
165	3	5
166	6	5
167	5	5
168	64	5
169	49	5
170	94	5
171	77	5
172	95	5
173	38	5
174	81	5
175	80	5
176	37	5
177	83	5
178	82	5
179	84	5
180	32	5
181	40	5
182	65	5
183	52	5
184	86	5
185	87	5
186	48	5
187	50	5
188	51	5
189	33	5
190	35	5
191	36	5
192	96	5
193	57	5
194	30	5
195	58	5
196	63	5
197	76	5
198	69	5
199	47	5
200	71	5
201	79	5
202	59	5
203	60	5
204	61	5
205	62	5
206	72	5
207	74	5
208	75	5
209	68	5
210	70	5
211	43	5
212	44	5
213	45	5
214	46	5
215	78	5
216	97	5
217	85	1
218	88	1
219	89	1
220	90	1
221	91	1
222	92	1
223	93	1
224	94	1
225	95	1
226	86	1
227	87	1
228	96	1
229	97	1
\.


--
-- Data for Name: ab_register_user; Type: TABLE DATA; Schema: public; Owner: airflow
--

COPY public.ab_register_user (id, first_name, last_name, username, password, email, registration_date, registration_hash) FROM stdin;
\.


--
-- Data for Name: ab_role; Type: TABLE DATA; Schema: public; Owner: airflow
--

COPY public.ab_role (id, name) FROM stdin;
1	Admin
2	Public
3	Viewer
4	User
5	Op
\.


--
-- Data for Name: ab_user; Type: TABLE DATA; Schema: public; Owner: airflow
--

COPY public.ab_user (id, first_name, last_name, username, password, active, email, last_login, login_count, fail_login_count, created_on, changed_on, created_by_fk, changed_by_fk) FROM stdin;
1	Airflow	Admin	airflow	pbkdf2:sha256:260000$KxknEaFFieosuq8Y$c22a29397fd2b6635132fcd859599bbf909f7253d944088100766241acf7e69e	t	airflowadmin@example.com	2025-12-23 10:58:58.380925	2	0	2025-12-23 07:40:33.278458	2025-12-23 07:40:33.278464	\N	\N
\.


--
-- Data for Name: ab_user_role; Type: TABLE DATA; Schema: public; Owner: airflow
--

COPY public.ab_user_role (id, user_id, role_id) FROM stdin;
1	1	1
\.


--
-- Data for Name: ab_view_menu; Type: TABLE DATA; Schema: public; Owner: airflow
--

COPY public.ab_view_menu (id, name) FROM stdin;
1	IndexView
2	UtilView
3	LocaleView
4	Passwords
5	My Password
6	My Profile
7	AuthDBView
8	Users
9	List Users
10	Security
11	Roles
12	List Roles
13	User Stats Chart
14	User's Statistics
15	Permissions
16	Actions
17	View Menus
18	Resources
19	Permission Views
20	Permission Pairs
21	AppBuilderCodeEditorView
22	Airflow Code Editor
23	Admin
24	Airflow Code Editor REST API Reference
25	Docs
26	AutocompleteView
27	Airflow
28	DAG Runs
29	Browse
30	Jobs
31	Audit Logs
32	Variables
33	Task Instances
34	Task Reschedules
35	Triggers
36	Configurations
37	Connections
38	SLA Misses
39	Plugins
40	Providers
41	Pools
42	XComs
43	DagDependenciesView
44	DAG Dependencies
45	RedocView
46	DevView
47	DocsView
48	DAGs
49	Cluster Activity
50	Datasets
51	Documentation
52	DAG Code
53	ImportError
54	DAG Warnings
55	Task Logs
56	Website
57	DAG:click_house_work
58	DAG Run:click_house_work
\.


--
-- Data for Name: alembic_version; Type: TABLE DATA; Schema: public; Owner: airflow
--

COPY public.alembic_version (version_num) FROM stdin;
5f2621c13b39
\.


--
-- Data for Name: callback_request; Type: TABLE DATA; Schema: public; Owner: airflow
--

COPY public.callback_request (id, created_at, priority_weight, callback_data, callback_type, processor_subdir) FROM stdin;
\.


--
-- Data for Name: celery_taskmeta; Type: TABLE DATA; Schema: public; Owner: airflow
--

COPY public.celery_taskmeta (id, task_id, status, result, date_done, traceback, name, args, kwargs, worker, retries, queue) FROM stdin;
1	2065d7d8-e877-44e8-aad7-822f061a35ea	SUCCESS	\N	2025-12-23 09:11:44.266976	\N	\N	\N	\N	\N	\N	\N
2	fdbed8d4-a277-436b-95a7-653dbbb196e0	SUCCESS	\N	2025-12-23 10:59:05.45573	\N	\N	\N	\N	\N	\N	\N
\.


--
-- Data for Name: celery_tasksetmeta; Type: TABLE DATA; Schema: public; Owner: airflow
--

COPY public.celery_tasksetmeta (id, taskset_id, result, date_done) FROM stdin;
\.


--
-- Data for Name: connection; Type: TABLE DATA; Schema: public; Owner: airflow
--

COPY public.connection (id, conn_id, conn_type, description, host, schema, login, password, port, is_encrypted, is_extra_encrypted, extra) FROM stdin;
1	click_house_work	sqlite		5.35.90.239	default	etl_user	h48acnEqkpaX	9000	f	f	
\.


--
-- Data for Name: dag; Type: TABLE DATA; Schema: public; Owner: airflow
--

COPY public.dag (dag_id, root_dag_id, is_paused, is_subdag, is_active, last_parsed_time, last_pickled, last_expired, scheduler_lock, pickle_id, fileloc, processor_subdir, owners, dag_display_name, description, default_view, schedule_interval, timetable_description, dataset_expression, max_active_tasks, max_active_runs, max_consecutive_failed_dag_runs, has_task_concurrency_limits, has_import_errors, next_dagrun, next_dagrun_data_interval_start, next_dagrun_data_interval_end, next_dagrun_create_after) FROM stdin;
click_house_work	\N	f	f	t	2025-12-23 11:08:51.75279+00	\N	\N	\N	\N	/opt/airflow/dags/dag_with_clickhouse.py	/opt/airflow/dags	airflow	\N	\N	grid	null	Never, external triggers only	null	2	16	0	f	f	\N	\N	\N	\N
\.


--
-- Data for Name: dag_code; Type: TABLE DATA; Schema: public; Owner: airflow
--

COPY public.dag_code (fileloc_hash, fileloc, last_updated, source_code) FROM stdin;
3796940801909150	/opt/airflow/dags/dag_with_clickhouse.py	2025-12-23 09:09:16.583881+00	from airflow import DAG\nfrom airflow_clickhouse_plugin.operators.clickhouse import ClickHouseOperator\nfrom airflow.utils.dates import days_ago\n\nwith DAG(\n    dag_id='click_house_work',\n    start_date=days_ago(1),\n    schedule_interval=None,\n) as dag:\n    check = ClickHouseOperator(\n        task_id='select_version',\n        sql='SELECT version()',\n        clickhouse_conn_id='click_house_work',  # id соединения Airflow для ClickHouse\n    )\n
\.


--
-- Data for Name: dag_owner_attributes; Type: TABLE DATA; Schema: public; Owner: airflow
--

COPY public.dag_owner_attributes (dag_id, owner, link) FROM stdin;
\.


--
-- Data for Name: dag_pickle; Type: TABLE DATA; Schema: public; Owner: airflow
--

COPY public.dag_pickle (id, pickle, created_dttm, pickle_hash) FROM stdin;
\.


--
-- Data for Name: dag_priority_parsing_request; Type: TABLE DATA; Schema: public; Owner: airflow
--

COPY public.dag_priority_parsing_request (id, fileloc) FROM stdin;
\.


--
-- Data for Name: dag_run; Type: TABLE DATA; Schema: public; Owner: airflow
--

COPY public.dag_run (id, dag_id, queued_at, execution_date, start_date, end_date, state, run_id, creating_job_id, external_trigger, run_type, conf, data_interval_start, data_interval_end, last_scheduling_decision, dag_hash, log_template_id, updated_at, clear_number) FROM stdin;
1	click_house_work	2025-12-23 09:11:42.244488+00	2025-12-23 09:11:42.230154+00	2025-12-23 09:11:42.547362+00	2025-12-23 09:11:44.268977+00	success	manual__2025-12-23T09:11:42.230154+00:00	\N	t	manual	\\x80057d942e	2025-12-23 09:11:42.230154+00	2025-12-23 09:11:42.230154+00	2025-12-23 09:11:44.266978+00	6b50f3685b9ef71ebe5d44cec6b14187	2	2025-12-23 09:11:44.270116+00	0
2	click_house_work	2025-12-23 10:59:02.881925+00	2025-12-23 10:59:02.8655+00	2025-12-23 10:59:03.379689+00	2025-12-23 10:59:06.381284+00	success	manual__2025-12-23T10:59:02.865500+00:00	\N	t	manual	\\x80057d942e	2025-12-23 10:59:02.8655+00	2025-12-23 10:59:02.8655+00	2025-12-23 10:59:06.379589+00	6b50f3685b9ef71ebe5d44cec6b14187	2	2025-12-23 10:59:06.382103+00	0
\.


--
-- Data for Name: dag_run_note; Type: TABLE DATA; Schema: public; Owner: airflow
--

COPY public.dag_run_note (user_id, dag_run_id, content, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: dag_schedule_dataset_alias_reference; Type: TABLE DATA; Schema: public; Owner: airflow
--

COPY public.dag_schedule_dataset_alias_reference (alias_id, dag_id, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: dag_schedule_dataset_reference; Type: TABLE DATA; Schema: public; Owner: airflow
--

COPY public.dag_schedule_dataset_reference (dataset_id, dag_id, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: dag_tag; Type: TABLE DATA; Schema: public; Owner: airflow
--

COPY public.dag_tag (name, dag_id) FROM stdin;
\.


--
-- Data for Name: dag_warning; Type: TABLE DATA; Schema: public; Owner: airflow
--

COPY public.dag_warning (dag_id, warning_type, message, "timestamp") FROM stdin;
\.


--
-- Data for Name: dagrun_dataset_event; Type: TABLE DATA; Schema: public; Owner: airflow
--

COPY public.dagrun_dataset_event (dag_run_id, event_id) FROM stdin;
\.


--
-- Data for Name: dataset; Type: TABLE DATA; Schema: public; Owner: airflow
--

COPY public.dataset (id, uri, extra, created_at, updated_at, is_orphaned) FROM stdin;
\.


--
-- Data for Name: dataset_alias; Type: TABLE DATA; Schema: public; Owner: airflow
--

COPY public.dataset_alias (id, name) FROM stdin;
\.


--
-- Data for Name: dataset_alias_dataset; Type: TABLE DATA; Schema: public; Owner: airflow
--

COPY public.dataset_alias_dataset (alias_id, dataset_id) FROM stdin;
\.


--
-- Data for Name: dataset_alias_dataset_event; Type: TABLE DATA; Schema: public; Owner: airflow
--

COPY public.dataset_alias_dataset_event (alias_id, event_id) FROM stdin;
\.


--
-- Data for Name: dataset_dag_run_queue; Type: TABLE DATA; Schema: public; Owner: airflow
--

COPY public.dataset_dag_run_queue (dataset_id, target_dag_id, created_at) FROM stdin;
\.


--
-- Data for Name: dataset_event; Type: TABLE DATA; Schema: public; Owner: airflow
--

COPY public.dataset_event (id, dataset_id, extra, source_task_id, source_dag_id, source_run_id, source_map_index, "timestamp") FROM stdin;
\.


--
-- Data for Name: import_error; Type: TABLE DATA; Schema: public; Owner: airflow
--

COPY public.import_error (id, "timestamp", filename, stacktrace, processor_subdir) FROM stdin;
\.


--
-- Data for Name: job; Type: TABLE DATA; Schema: public; Owner: airflow
--

COPY public.job (id, dag_id, state, job_type, start_date, end_date, latest_heartbeat, executor_class, hostname, unixname) FROM stdin;
3	click_house_work	success	LocalTaskJob	2025-12-23 09:11:43.892307+00	2025-12-23 09:11:44.24141+00	2025-12-23 09:11:43.869957+00	\N	99191eebe667	airflow
8	click_house_work	success	LocalTaskJob	2025-12-23 10:59:04.827081+00	2025-12-23 10:59:05.432006+00	2025-12-23 10:59:04.752951+00	\N	838506d0a24c	airflow
1	\N	success	TriggererJob	2025-12-23 08:44:09.830906+00	2025-12-23 09:27:21.978897+00	2025-12-23 09:27:20.335921+00	\N	a492d12acc5f	airflow
2	\N	success	SchedulerJob	2025-12-23 08:44:15.394694+00	2025-12-23 09:27:23.084364+00	2025-12-23 09:27:19.216262+00	\N	c0e44510361e	airflow
4	\N	success	TriggererJob	2025-12-23 10:54:22.286713+00	2025-12-23 10:56:39.415189+00	2025-12-23 10:56:37.221777+00	\N	7e1987865a61	airflow
5	\N	success	SchedulerJob	2025-12-23 10:54:26.471382+00	2025-12-23 10:56:40.326762+00	2025-12-23 10:56:37.333542+00	\N	a39932a04260	airflow
7	\N	running	SchedulerJob	2025-12-23 10:57:13.753241+00	\N	2025-12-23 11:09:12.573999+00	\N	fdd43bbb7cf0	airflow
6	\N	running	TriggererJob	2025-12-23 10:57:09.672635+00	\N	2025-12-23 11:09:14.303717+00	\N	f0d34b371fc5	airflow
\.


--
-- Data for Name: log; Type: TABLE DATA; Schema: public; Owner: airflow
--

COPY public.log (id, dttm, dag_id, task_id, map_index, event, execution_date, run_id, owner, owner_display_name, extra, try_number) FROM stdin;
1	2025-12-23 07:40:31.165415+00	\N	\N	\N	cli_users_create	\N	\N	root	\N	{"host_name": "2599c8a47cfc", "full_command": "['/home/airflow/.local/bin/airflow', 'users', 'create', '--username', 'airflow', '--firstname', 'Airflow', '--lastname', 'Admin', '--email', 'airflowadmin@example.com', '--role', 'Admin', '--password', '********']"}	\N
2	2025-12-23 07:40:37.407572+00	\N	\N	\N	cli_check	\N	\N	root	\N	{"host_name": "2599c8a47cfc", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'check']"}	\N
3	2025-12-23 07:40:39.594874+00	\N	\N	\N	cli_migratedb	\N	\N	root	\N	{"host_name": "2599c8a47cfc", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'migrate']"}	\N
4	2025-12-23 07:40:41.852876+00	\N	\N	\N	cli_users_create	\N	\N	root	\N	{"host_name": "2599c8a47cfc", "full_command": "['/home/airflow/.local/bin/airflow', 'users', 'create', '--username', 'airflow', '--firstname', 'Airflow', '--lastname', 'Admin', '--email', 'airflowadmin@example.com', '--role', 'Admin', '--password', '********']"}	\N
5	2025-12-23 07:40:47.141634+00	\N	\N	\N	cli_check	\N	\N	root	\N	{"host_name": "2599c8a47cfc", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'check']"}	\N
6	2025-12-23 07:40:48.980063+00	\N	\N	\N	cli_migratedb	\N	\N	root	\N	{"host_name": "2599c8a47cfc", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'migrate']"}	\N
7	2025-12-23 07:40:51.115676+00	\N	\N	\N	cli_users_create	\N	\N	root	\N	{"host_name": "2599c8a47cfc", "full_command": "['/home/airflow/.local/bin/airflow', 'users', 'create', '--username', 'airflow', '--firstname', 'Airflow', '--lastname', 'Admin', '--email', 'airflowadmin@example.com', '--role', 'Admin', '--password', '********']"}	\N
8	2025-12-23 07:40:56.614046+00	\N	\N	\N	cli_check	\N	\N	root	\N	{"host_name": "2599c8a47cfc", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'check']"}	\N
9	2025-12-23 07:40:58.388651+00	\N	\N	\N	cli_migratedb	\N	\N	root	\N	{"host_name": "2599c8a47cfc", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'migrate']"}	\N
10	2025-12-23 07:41:00.725258+00	\N	\N	\N	cli_users_create	\N	\N	root	\N	{"host_name": "2599c8a47cfc", "full_command": "['/home/airflow/.local/bin/airflow', 'users', 'create', '--username', 'airflow', '--firstname', 'Airflow', '--lastname', 'Admin', '--email', 'airflowadmin@example.com', '--role', 'Admin', '--password', '********']"}	\N
11	2025-12-23 07:41:06.663117+00	\N	\N	\N	cli_check	\N	\N	root	\N	{"host_name": "2599c8a47cfc", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'check']"}	\N
12	2025-12-23 07:41:08.364475+00	\N	\N	\N	cli_migratedb	\N	\N	root	\N	{"host_name": "2599c8a47cfc", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'migrate']"}	\N
13	2025-12-23 07:41:10.799967+00	\N	\N	\N	cli_users_create	\N	\N	root	\N	{"host_name": "2599c8a47cfc", "full_command": "['/home/airflow/.local/bin/airflow', 'users', 'create', '--username', 'airflow', '--firstname', 'Airflow', '--lastname', 'Admin', '--email', 'airflowadmin@example.com', '--role', 'Admin', '--password', '********']"}	\N
14	2025-12-23 07:41:17.657134+00	\N	\N	\N	cli_check	\N	\N	root	\N	{"host_name": "2599c8a47cfc", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'check']"}	\N
15	2025-12-23 07:41:19.478503+00	\N	\N	\N	cli_migratedb	\N	\N	root	\N	{"host_name": "2599c8a47cfc", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'migrate']"}	\N
16	2025-12-23 07:41:21.595951+00	\N	\N	\N	cli_users_create	\N	\N	root	\N	{"host_name": "2599c8a47cfc", "full_command": "['/home/airflow/.local/bin/airflow', 'users', 'create', '--username', 'airflow', '--firstname', 'Airflow', '--lastname', 'Admin', '--email', 'airflowadmin@example.com', '--role', 'Admin', '--password', '********']"}	\N
17	2025-12-23 07:41:29.708195+00	\N	\N	\N	cli_check	\N	\N	root	\N	{"host_name": "2599c8a47cfc", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'check']"}	\N
18	2025-12-23 07:41:31.441117+00	\N	\N	\N	cli_migratedb	\N	\N	root	\N	{"host_name": "2599c8a47cfc", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'migrate']"}	\N
19	2025-12-23 07:41:33.658328+00	\N	\N	\N	cli_users_create	\N	\N	root	\N	{"host_name": "2599c8a47cfc", "full_command": "['/home/airflow/.local/bin/airflow', 'users', 'create', '--username', 'airflow', '--firstname', 'Airflow', '--lastname', 'Admin', '--email', 'airflowadmin@example.com', '--role', 'Admin', '--password', '********']"}	\N
20	2025-12-23 07:41:45.150321+00	\N	\N	\N	cli_check	\N	\N	root	\N	{"host_name": "2599c8a47cfc", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'check']"}	\N
21	2025-12-23 07:41:46.850798+00	\N	\N	\N	cli_migratedb	\N	\N	root	\N	{"host_name": "2599c8a47cfc", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'migrate']"}	\N
22	2025-12-23 07:41:48.994367+00	\N	\N	\N	cli_users_create	\N	\N	root	\N	{"host_name": "2599c8a47cfc", "full_command": "['/home/airflow/.local/bin/airflow', 'users', 'create', '--username', 'airflow', '--firstname', 'Airflow', '--lastname', 'Admin', '--email', 'airflowadmin@example.com', '--role', 'Admin', '--password', '********']"}	\N
23	2025-12-23 07:42:35.223696+00	\N	\N	\N	cli_check	\N	\N	root	\N	{"host_name": "eb9e9c5b1ee5", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'check']"}	\N
24	2025-12-23 07:42:37.522325+00	\N	\N	\N	cli_migratedb	\N	\N	root	\N	{"host_name": "eb9e9c5b1ee5", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'migrate']"}	\N
25	2025-12-23 07:42:40.632471+00	\N	\N	\N	cli_users_create	\N	\N	root	\N	{"host_name": "eb9e9c5b1ee5", "full_command": "['/home/airflow/.local/bin/airflow', 'users', 'create', '--username', 'airflow', '--firstname', 'Airflow', '--lastname', 'Admin', '--email', 'airflowadmin@example.com', '--role', 'Admin', '--password', '********']"}	\N
26	2025-12-23 07:42:46.772729+00	\N	\N	\N	cli_check	\N	\N	root	\N	{"host_name": "eb9e9c5b1ee5", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'check']"}	\N
27	2025-12-23 07:42:48.619616+00	\N	\N	\N	cli_migratedb	\N	\N	root	\N	{"host_name": "eb9e9c5b1ee5", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'migrate']"}	\N
28	2025-12-23 07:42:50.83796+00	\N	\N	\N	cli_users_create	\N	\N	root	\N	{"host_name": "eb9e9c5b1ee5", "full_command": "['/home/airflow/.local/bin/airflow', 'users', 'create', '--username', 'airflow', '--firstname', 'Airflow', '--lastname', 'Admin', '--email', 'airflowadmin@example.com', '--role', 'Admin', '--password', '********']"}	\N
29	2025-12-23 07:42:56.438739+00	\N	\N	\N	cli_check	\N	\N	root	\N	{"host_name": "eb9e9c5b1ee5", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'check']"}	\N
30	2025-12-23 07:42:58.197678+00	\N	\N	\N	cli_migratedb	\N	\N	root	\N	{"host_name": "eb9e9c5b1ee5", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'migrate']"}	\N
31	2025-12-23 07:43:00.766908+00	\N	\N	\N	cli_users_create	\N	\N	root	\N	{"host_name": "eb9e9c5b1ee5", "full_command": "['/home/airflow/.local/bin/airflow', 'users', 'create', '--username', 'airflow', '--firstname', 'Airflow', '--lastname', 'Admin', '--email', 'airflowadmin@example.com', '--role', 'Admin', '--password', '********']"}	\N
32	2025-12-23 07:43:05.983351+00	\N	\N	\N	cli_check	\N	\N	root	\N	{"host_name": "eb9e9c5b1ee5", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'check']"}	\N
33	2025-12-23 07:43:07.679119+00	\N	\N	\N	cli_migratedb	\N	\N	root	\N	{"host_name": "eb9e9c5b1ee5", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'migrate']"}	\N
34	2025-12-23 07:43:09.93965+00	\N	\N	\N	cli_users_create	\N	\N	root	\N	{"host_name": "eb9e9c5b1ee5", "full_command": "['/home/airflow/.local/bin/airflow', 'users', 'create', '--username', 'airflow', '--firstname', 'Airflow', '--lastname', 'Admin', '--email', 'airflowadmin@example.com', '--role', 'Admin', '--password', '********']"}	\N
35	2025-12-23 07:43:15.474402+00	\N	\N	\N	cli_check	\N	\N	root	\N	{"host_name": "eb9e9c5b1ee5", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'check']"}	\N
36	2025-12-23 07:43:17.186308+00	\N	\N	\N	cli_migratedb	\N	\N	root	\N	{"host_name": "eb9e9c5b1ee5", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'migrate']"}	\N
37	2025-12-23 07:43:19.527297+00	\N	\N	\N	cli_users_create	\N	\N	root	\N	{"host_name": "eb9e9c5b1ee5", "full_command": "['/home/airflow/.local/bin/airflow', 'users', 'create', '--username', 'airflow', '--firstname', 'Airflow', '--lastname', 'Admin', '--email', 'airflowadmin@example.com', '--role', 'Admin', '--password', '********']"}	\N
38	2025-12-23 07:43:26.058782+00	\N	\N	\N	cli_check	\N	\N	root	\N	{"host_name": "eb9e9c5b1ee5", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'check']"}	\N
39	2025-12-23 07:43:27.766722+00	\N	\N	\N	cli_migratedb	\N	\N	root	\N	{"host_name": "eb9e9c5b1ee5", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'migrate']"}	\N
40	2025-12-23 07:43:30.006052+00	\N	\N	\N	cli_users_create	\N	\N	root	\N	{"host_name": "eb9e9c5b1ee5", "full_command": "['/home/airflow/.local/bin/airflow', 'users', 'create', '--username', 'airflow', '--firstname', 'Airflow', '--lastname', 'Admin', '--email', 'airflowadmin@example.com', '--role', 'Admin', '--password', '********']"}	\N
41	2025-12-23 07:43:37.965413+00	\N	\N	\N	cli_check	\N	\N	root	\N	{"host_name": "eb9e9c5b1ee5", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'check']"}	\N
42	2025-12-23 07:43:39.802736+00	\N	\N	\N	cli_migratedb	\N	\N	root	\N	{"host_name": "eb9e9c5b1ee5", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'migrate']"}	\N
43	2025-12-23 07:43:41.953102+00	\N	\N	\N	cli_users_create	\N	\N	root	\N	{"host_name": "eb9e9c5b1ee5", "full_command": "['/home/airflow/.local/bin/airflow', 'users', 'create', '--username', 'airflow', '--firstname', 'Airflow', '--lastname', 'Admin', '--email', 'airflowadmin@example.com', '--role', 'Admin', '--password', '********']"}	\N
44	2025-12-23 07:43:53.12206+00	\N	\N	\N	cli_check	\N	\N	root	\N	{"host_name": "eb9e9c5b1ee5", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'check']"}	\N
45	2025-12-23 07:43:54.821277+00	\N	\N	\N	cli_migratedb	\N	\N	root	\N	{"host_name": "eb9e9c5b1ee5", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'migrate']"}	\N
46	2025-12-23 07:43:56.942763+00	\N	\N	\N	cli_users_create	\N	\N	root	\N	{"host_name": "eb9e9c5b1ee5", "full_command": "['/home/airflow/.local/bin/airflow', 'users', 'create', '--username', 'airflow', '--firstname', 'Airflow', '--lastname', 'Admin', '--email', 'airflowadmin@example.com', '--role', 'Admin', '--password', '********']"}	\N
47	2025-12-23 07:44:14.500238+00	\N	\N	\N	cli_check	\N	\N	root	\N	{"host_name": "eb9e9c5b1ee5", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'check']"}	\N
48	2025-12-23 07:44:16.229647+00	\N	\N	\N	cli_migratedb	\N	\N	root	\N	{"host_name": "eb9e9c5b1ee5", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'migrate']"}	\N
49	2025-12-23 07:44:18.393391+00	\N	\N	\N	cli_users_create	\N	\N	root	\N	{"host_name": "eb9e9c5b1ee5", "full_command": "['/home/airflow/.local/bin/airflow', 'users', 'create', '--username', 'airflow', '--firstname', 'Airflow', '--lastname', 'Admin', '--email', 'airflowadmin@example.com', '--role', 'Admin', '--password', '********']"}	\N
50	2025-12-23 07:44:48.821534+00	\N	\N	\N	cli_check	\N	\N	root	\N	{"host_name": "eb9e9c5b1ee5", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'check']"}	\N
51	2025-12-23 07:44:50.659818+00	\N	\N	\N	cli_migratedb	\N	\N	root	\N	{"host_name": "eb9e9c5b1ee5", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'migrate']"}	\N
52	2025-12-23 07:44:52.830081+00	\N	\N	\N	cli_users_create	\N	\N	root	\N	{"host_name": "eb9e9c5b1ee5", "full_command": "['/home/airflow/.local/bin/airflow', 'users', 'create', '--username', 'airflow', '--firstname', 'Airflow', '--lastname', 'Admin', '--email', 'airflowadmin@example.com', '--role', 'Admin', '--password', '********']"}	\N
53	2025-12-23 07:45:48.792853+00	\N	\N	\N	cli_check	\N	\N	root	\N	{"host_name": "eb9e9c5b1ee5", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'check']"}	\N
54	2025-12-23 07:45:50.597848+00	\N	\N	\N	cli_migratedb	\N	\N	root	\N	{"host_name": "eb9e9c5b1ee5", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'migrate']"}	\N
55	2025-12-23 07:45:52.71371+00	\N	\N	\N	cli_users_create	\N	\N	root	\N	{"host_name": "eb9e9c5b1ee5", "full_command": "['/home/airflow/.local/bin/airflow', 'users', 'create', '--username', 'airflow', '--firstname', 'Airflow', '--lastname', 'Admin', '--email', 'airflowadmin@example.com', '--role', 'Admin', '--password', '********']"}	\N
56	2025-12-23 07:46:49.603683+00	\N	\N	\N	cli_check	\N	\N	root	\N	{"host_name": "eb9e9c5b1ee5", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'check']"}	\N
57	2025-12-23 07:46:51.480056+00	\N	\N	\N	cli_migratedb	\N	\N	root	\N	{"host_name": "eb9e9c5b1ee5", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'migrate']"}	\N
58	2025-12-23 07:46:54.07922+00	\N	\N	\N	cli_users_create	\N	\N	root	\N	{"host_name": "eb9e9c5b1ee5", "full_command": "['/home/airflow/.local/bin/airflow', 'users', 'create', '--username', 'airflow', '--firstname', 'Airflow', '--lastname', 'Admin', '--email', 'airflowadmin@example.com', '--role', 'Admin', '--password', '********']"}	\N
59	2025-12-23 07:46:59.694684+00	\N	\N	\N	cli_check	\N	\N	root	\N	{"host_name": "eb9e9c5b1ee5", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'check']"}	\N
60	2025-12-23 07:47:01.607343+00	\N	\N	\N	cli_migratedb	\N	\N	root	\N	{"host_name": "eb9e9c5b1ee5", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'migrate']"}	\N
61	2025-12-23 07:47:04.181677+00	\N	\N	\N	cli_users_create	\N	\N	root	\N	{"host_name": "eb9e9c5b1ee5", "full_command": "['/home/airflow/.local/bin/airflow', 'users', 'create', '--username', 'airflow', '--firstname', 'Airflow', '--lastname', 'Admin', '--email', 'airflowadmin@example.com', '--role', 'Admin', '--password', '********']"}	\N
62	2025-12-23 07:47:09.658083+00	\N	\N	\N	cli_check	\N	\N	root	\N	{"host_name": "eb9e9c5b1ee5", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'check']"}	\N
63	2025-12-23 07:47:11.606574+00	\N	\N	\N	cli_migratedb	\N	\N	root	\N	{"host_name": "eb9e9c5b1ee5", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'migrate']"}	\N
64	2025-12-23 07:47:14.114902+00	\N	\N	\N	cli_users_create	\N	\N	root	\N	{"host_name": "eb9e9c5b1ee5", "full_command": "['/home/airflow/.local/bin/airflow', 'users', 'create', '--username', 'airflow', '--firstname', 'Airflow', '--lastname', 'Admin', '--email', 'airflowadmin@example.com', '--role', 'Admin', '--password', '********']"}	\N
65	2025-12-23 07:47:19.907832+00	\N	\N	\N	cli_check	\N	\N	root	\N	{"host_name": "eb9e9c5b1ee5", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'check']"}	\N
66	2025-12-23 07:47:21.865296+00	\N	\N	\N	cli_migratedb	\N	\N	root	\N	{"host_name": "eb9e9c5b1ee5", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'migrate']"}	\N
67	2025-12-23 07:47:24.223363+00	\N	\N	\N	cli_users_create	\N	\N	root	\N	{"host_name": "eb9e9c5b1ee5", "full_command": "['/home/airflow/.local/bin/airflow', 'users', 'create', '--username', 'airflow', '--firstname', 'Airflow', '--lastname', 'Admin', '--email', 'airflowadmin@example.com', '--role', 'Admin', '--password', '********']"}	\N
68	2025-12-23 07:47:29.634173+00	\N	\N	\N	cli_check	\N	\N	root	\N	{"host_name": "eb9e9c5b1ee5", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'check']"}	\N
69	2025-12-23 07:47:31.361256+00	\N	\N	\N	cli_migratedb	\N	\N	root	\N	{"host_name": "eb9e9c5b1ee5", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'migrate']"}	\N
70	2025-12-23 07:47:33.511888+00	\N	\N	\N	cli_users_create	\N	\N	root	\N	{"host_name": "eb9e9c5b1ee5", "full_command": "['/home/airflow/.local/bin/airflow', 'users', 'create', '--username', 'airflow', '--firstname', 'Airflow', '--lastname', 'Admin', '--email', 'airflowadmin@example.com', '--role', 'Admin', '--password', '********']"}	\N
71	2025-12-23 07:47:39.644486+00	\N	\N	\N	cli_check	\N	\N	root	\N	{"host_name": "eb9e9c5b1ee5", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'check']"}	\N
72	2025-12-23 07:47:41.337264+00	\N	\N	\N	cli_migratedb	\N	\N	root	\N	{"host_name": "eb9e9c5b1ee5", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'migrate']"}	\N
73	2025-12-23 07:47:43.460643+00	\N	\N	\N	cli_users_create	\N	\N	root	\N	{"host_name": "eb9e9c5b1ee5", "full_command": "['/home/airflow/.local/bin/airflow', 'users', 'create', '--username', 'airflow', '--firstname', 'Airflow', '--lastname', 'Admin', '--email', 'airflowadmin@example.com', '--role', 'Admin', '--password', '********']"}	\N
74	2025-12-23 07:47:51.645405+00	\N	\N	\N	cli_check	\N	\N	root	\N	{"host_name": "eb9e9c5b1ee5", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'check']"}	\N
75	2025-12-23 07:47:53.559976+00	\N	\N	\N	cli_migratedb	\N	\N	root	\N	{"host_name": "eb9e9c5b1ee5", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'migrate']"}	\N
76	2025-12-23 07:47:56.007951+00	\N	\N	\N	cli_users_create	\N	\N	root	\N	{"host_name": "eb9e9c5b1ee5", "full_command": "['/home/airflow/.local/bin/airflow', 'users', 'create', '--username', 'airflow', '--firstname', 'Airflow', '--lastname', 'Admin', '--email', 'airflowadmin@example.com', '--role', 'Admin', '--password', '********']"}	\N
77	2025-12-23 07:48:07.707622+00	\N	\N	\N	cli_check	\N	\N	root	\N	{"host_name": "eb9e9c5b1ee5", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'check']"}	\N
78	2025-12-23 07:48:09.70378+00	\N	\N	\N	cli_migratedb	\N	\N	root	\N	{"host_name": "eb9e9c5b1ee5", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'migrate']"}	\N
79	2025-12-23 07:48:12.150898+00	\N	\N	\N	cli_users_create	\N	\N	root	\N	{"host_name": "eb9e9c5b1ee5", "full_command": "['/home/airflow/.local/bin/airflow', 'users', 'create', '--username', 'airflow', '--firstname', 'Airflow', '--lastname', 'Admin', '--email', 'airflowadmin@example.com', '--role', 'Admin', '--password', '********']"}	\N
80	2025-12-23 07:48:30.158133+00	\N	\N	\N	cli_check	\N	\N	root	\N	{"host_name": "eb9e9c5b1ee5", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'check']"}	\N
81	2025-12-23 07:48:32.008895+00	\N	\N	\N	cli_migratedb	\N	\N	root	\N	{"host_name": "eb9e9c5b1ee5", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'migrate']"}	\N
82	2025-12-23 07:48:34.381611+00	\N	\N	\N	cli_users_create	\N	\N	root	\N	{"host_name": "eb9e9c5b1ee5", "full_command": "['/home/airflow/.local/bin/airflow', 'users', 'create', '--username', 'airflow', '--firstname', 'Airflow', '--lastname', 'Admin', '--email', 'airflowadmin@example.com', '--role', 'Admin', '--password', '********']"}	\N
83	2025-12-23 07:49:05.087529+00	\N	\N	\N	cli_check	\N	\N	root	\N	{"host_name": "eb9e9c5b1ee5", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'check']"}	\N
84	2025-12-23 07:49:06.962614+00	\N	\N	\N	cli_migratedb	\N	\N	root	\N	{"host_name": "eb9e9c5b1ee5", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'migrate']"}	\N
85	2025-12-23 07:49:09.380039+00	\N	\N	\N	cli_users_create	\N	\N	root	\N	{"host_name": "eb9e9c5b1ee5", "full_command": "['/home/airflow/.local/bin/airflow', 'users', 'create', '--username', 'airflow', '--firstname', 'Airflow', '--lastname', 'Admin', '--email', 'airflowadmin@example.com', '--role', 'Admin', '--password', '********']"}	\N
86	2025-12-23 07:50:05.726174+00	\N	\N	\N	cli_check	\N	\N	root	\N	{"host_name": "eb9e9c5b1ee5", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'check']"}	\N
87	2025-12-23 07:50:07.578051+00	\N	\N	\N	cli_migratedb	\N	\N	root	\N	{"host_name": "eb9e9c5b1ee5", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'migrate']"}	\N
88	2025-12-23 07:50:09.892976+00	\N	\N	\N	cli_users_create	\N	\N	root	\N	{"host_name": "eb9e9c5b1ee5", "full_command": "['/home/airflow/.local/bin/airflow', 'users', 'create', '--username', 'airflow', '--firstname', 'Airflow', '--lastname', 'Admin', '--email', 'airflowadmin@example.com', '--role', 'Admin', '--password', '********']"}	\N
89	2025-12-23 07:51:14.912456+00	\N	\N	\N	cli_check	\N	\N	root	\N	{"host_name": "eb9e9c5b1ee5", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'check']"}	\N
90	2025-12-23 07:51:16.762185+00	\N	\N	\N	cli_migratedb	\N	\N	root	\N	{"host_name": "eb9e9c5b1ee5", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'migrate']"}	\N
91	2025-12-23 07:51:19.166568+00	\N	\N	\N	cli_users_create	\N	\N	root	\N	{"host_name": "eb9e9c5b1ee5", "full_command": "['/home/airflow/.local/bin/airflow', 'users', 'create', '--username', 'airflow', '--firstname', 'Airflow', '--lastname', 'Admin', '--email', 'airflowadmin@example.com', '--role', 'Admin', '--password', '********']"}	\N
92	2025-12-23 07:52:48.853071+00	\N	\N	\N	cli_check	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'check']"}	\N
93	2025-12-23 07:52:50.514797+00	\N	\N	\N	cli_migratedb	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'migrate']"}	\N
94	2025-12-23 07:52:53.054492+00	\N	\N	\N	cli_users_create	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'users', 'create', '--username', 'airflow', '--firstname', 'Airflow', '--lastname', 'Admin', '--email', 'airflowadmin@example.com', '--role', 'Admin', '--password', '********']"}	\N
95	2025-12-23 07:52:59.063127+00	\N	\N	\N	cli_check	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'check']"}	\N
96	2025-12-23 07:53:00.777951+00	\N	\N	\N	cli_migratedb	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'migrate']"}	\N
97	2025-12-23 07:53:02.965134+00	\N	\N	\N	cli_users_create	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'users', 'create', '--username', 'airflow', '--firstname', 'Airflow', '--lastname', 'Admin', '--email', 'airflowadmin@example.com', '--role', 'Admin', '--password', '********']"}	\N
98	2025-12-23 07:53:08.179467+00	\N	\N	\N	cli_check	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'check']"}	\N
99	2025-12-23 07:53:10.014649+00	\N	\N	\N	cli_migratedb	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'migrate']"}	\N
100	2025-12-23 07:53:12.360096+00	\N	\N	\N	cli_users_create	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'users', 'create', '--username', 'airflow', '--firstname', 'Airflow', '--lastname', 'Admin', '--email', 'airflowadmin@example.com', '--role', 'Admin', '--password', '********']"}	\N
101	2025-12-23 07:53:17.960911+00	\N	\N	\N	cli_check	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'check']"}	\N
102	2025-12-23 07:53:19.958611+00	\N	\N	\N	cli_migratedb	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'migrate']"}	\N
103	2025-12-23 07:53:22.474202+00	\N	\N	\N	cli_users_create	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'users', 'create', '--username', 'airflow', '--firstname', 'Airflow', '--lastname', 'Admin', '--email', 'airflowadmin@example.com', '--role', 'Admin', '--password', '********']"}	\N
104	2025-12-23 07:53:28.605179+00	\N	\N	\N	cli_check	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'check']"}	\N
105	2025-12-23 07:53:30.30475+00	\N	\N	\N	cli_migratedb	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'migrate']"}	\N
106	2025-12-23 07:53:32.41746+00	\N	\N	\N	cli_users_create	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'users', 'create', '--username', 'airflow', '--firstname', 'Airflow', '--lastname', 'Admin', '--email', 'airflowadmin@example.com', '--role', 'Admin', '--password', '********']"}	\N
107	2025-12-23 07:53:38.602529+00	\N	\N	\N	cli_check	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'check']"}	\N
108	2025-12-23 07:53:40.340227+00	\N	\N	\N	cli_migratedb	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'migrate']"}	\N
109	2025-12-23 07:53:42.457236+00	\N	\N	\N	cli_users_create	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'users', 'create', '--username', 'airflow', '--firstname', 'Airflow', '--lastname', 'Admin', '--email', 'airflowadmin@example.com', '--role', 'Admin', '--password', '********']"}	\N
110	2025-12-23 07:53:50.264239+00	\N	\N	\N	cli_check	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'check']"}	\N
111	2025-12-23 07:53:51.94283+00	\N	\N	\N	cli_migratedb	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'migrate']"}	\N
112	2025-12-23 07:53:54.069848+00	\N	\N	\N	cli_users_create	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'users', 'create', '--username', 'airflow', '--firstname', 'Airflow', '--lastname', 'Admin', '--email', 'airflowadmin@example.com', '--role', 'Admin', '--password', '********']"}	\N
113	2025-12-23 07:54:05.31039+00	\N	\N	\N	cli_check	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'check']"}	\N
114	2025-12-23 07:54:07.020011+00	\N	\N	\N	cli_migratedb	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'migrate']"}	\N
115	2025-12-23 07:54:09.16248+00	\N	\N	\N	cli_users_create	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'users', 'create', '--username', 'airflow', '--firstname', 'Airflow', '--lastname', 'Admin', '--email', 'airflowadmin@example.com', '--role', 'Admin', '--password', '********']"}	\N
116	2025-12-23 07:54:26.547869+00	\N	\N	\N	cli_check	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'check']"}	\N
117	2025-12-23 07:54:28.225505+00	\N	\N	\N	cli_migratedb	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'migrate']"}	\N
118	2025-12-23 07:54:30.436995+00	\N	\N	\N	cli_users_create	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'users', 'create', '--username', 'airflow', '--firstname', 'Airflow', '--lastname', 'Admin', '--email', 'airflowadmin@example.com', '--role', 'Admin', '--password', '********']"}	\N
119	2025-12-23 07:55:00.862486+00	\N	\N	\N	cli_check	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'check']"}	\N
120	2025-12-23 07:55:02.910914+00	\N	\N	\N	cli_migratedb	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'migrate']"}	\N
121	2025-12-23 07:55:05.634969+00	\N	\N	\N	cli_users_create	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'users', 'create', '--username', 'airflow', '--firstname', 'Airflow', '--lastname', 'Admin', '--email', 'airflowadmin@example.com', '--role', 'Admin', '--password', '********']"}	\N
122	2025-12-23 07:56:01.977191+00	\N	\N	\N	cli_check	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'check']"}	\N
123	2025-12-23 07:56:04.124986+00	\N	\N	\N	cli_migratedb	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'migrate']"}	\N
124	2025-12-23 07:56:06.771353+00	\N	\N	\N	cli_users_create	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'users', 'create', '--username', 'airflow', '--firstname', 'Airflow', '--lastname', 'Admin', '--email', 'airflowadmin@example.com', '--role', 'Admin', '--password', '********']"}	\N
125	2025-12-23 07:56:12.393442+00	\N	\N	\N	cli_check	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'check']"}	\N
126	2025-12-23 07:56:14.438937+00	\N	\N	\N	cli_migratedb	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'migrate']"}	\N
127	2025-12-23 07:56:16.921913+00	\N	\N	\N	cli_users_create	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'users', 'create', '--username', 'airflow', '--firstname', 'Airflow', '--lastname', 'Admin', '--email', 'airflowadmin@example.com', '--role', 'Admin', '--password', '********']"}	\N
128	2025-12-23 07:56:22.159833+00	\N	\N	\N	cli_check	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'check']"}	\N
129	2025-12-23 07:56:24.31065+00	\N	\N	\N	cli_migratedb	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'migrate']"}	\N
130	2025-12-23 07:56:27.125445+00	\N	\N	\N	cli_users_create	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'users', 'create', '--username', 'airflow', '--firstname', 'Airflow', '--lastname', 'Admin', '--email', 'airflowadmin@example.com', '--role', 'Admin', '--password', '********']"}	\N
131	2025-12-23 07:56:32.794692+00	\N	\N	\N	cli_check	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'check']"}	\N
132	2025-12-23 07:56:34.675888+00	\N	\N	\N	cli_migratedb	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'migrate']"}	\N
133	2025-12-23 07:56:37.347887+00	\N	\N	\N	cli_users_create	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'users', 'create', '--username', 'airflow', '--firstname', 'Airflow', '--lastname', 'Admin', '--email', 'airflowadmin@example.com', '--role', 'Admin', '--password', '********']"}	\N
134	2025-12-23 07:56:42.94633+00	\N	\N	\N	cli_check	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'check']"}	\N
135	2025-12-23 07:56:44.702188+00	\N	\N	\N	cli_migratedb	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'migrate']"}	\N
136	2025-12-23 07:56:46.997573+00	\N	\N	\N	cli_users_create	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'users', 'create', '--username', 'airflow', '--firstname', 'Airflow', '--lastname', 'Admin', '--email', 'airflowadmin@example.com', '--role', 'Admin', '--password', '********']"}	\N
137	2025-12-23 07:56:52.281964+00	\N	\N	\N	cli_check	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'check']"}	\N
138	2025-12-23 07:56:53.960492+00	\N	\N	\N	cli_migratedb	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'migrate']"}	\N
139	2025-12-23 07:56:56.080902+00	\N	\N	\N	cli_users_create	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'users', 'create', '--username', 'airflow', '--firstname', 'Airflow', '--lastname', 'Admin', '--email', 'airflowadmin@example.com', '--role', 'Admin', '--password', '********']"}	\N
140	2025-12-23 07:57:01.444989+00	\N	\N	\N	cli_check	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'check']"}	\N
141	2025-12-23 07:57:03.116492+00	\N	\N	\N	cli_migratedb	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'migrate']"}	\N
142	2025-12-23 07:57:05.196939+00	\N	\N	\N	cli_users_create	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'users', 'create', '--username', 'airflow', '--firstname', 'Airflow', '--lastname', 'Admin', '--email', 'airflowadmin@example.com', '--role', 'Admin', '--password', '********']"}	\N
143	2025-12-23 07:57:11.350906+00	\N	\N	\N	cli_check	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'check']"}	\N
144	2025-12-23 07:57:13.032732+00	\N	\N	\N	cli_migratedb	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'migrate']"}	\N
145	2025-12-23 07:57:15.160041+00	\N	\N	\N	cli_users_create	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'users', 'create', '--username', 'airflow', '--firstname', 'Airflow', '--lastname', 'Admin', '--email', 'airflowadmin@example.com', '--role', 'Admin', '--password', '********']"}	\N
146	2025-12-23 07:57:22.903239+00	\N	\N	\N	cli_check	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'check']"}	\N
147	2025-12-23 07:57:24.617155+00	\N	\N	\N	cli_migratedb	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'migrate']"}	\N
148	2025-12-23 07:57:26.744944+00	\N	\N	\N	cli_users_create	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'users', 'create', '--username', 'airflow', '--firstname', 'Airflow', '--lastname', 'Admin', '--email', 'airflowadmin@example.com', '--role', 'Admin', '--password', '********']"}	\N
149	2025-12-23 07:57:37.69723+00	\N	\N	\N	cli_check	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'check']"}	\N
150	2025-12-23 07:57:39.390604+00	\N	\N	\N	cli_migratedb	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'migrate']"}	\N
151	2025-12-23 07:57:41.472482+00	\N	\N	\N	cli_users_create	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'users', 'create', '--username', 'airflow', '--firstname', 'Airflow', '--lastname', 'Admin', '--email', 'airflowadmin@example.com', '--role', 'Admin', '--password', '********']"}	\N
152	2025-12-23 07:57:58.782801+00	\N	\N	\N	cli_check	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'check']"}	\N
153	2025-12-23 07:58:00.460466+00	\N	\N	\N	cli_migratedb	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'migrate']"}	\N
154	2025-12-23 07:58:02.557446+00	\N	\N	\N	cli_users_create	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'users', 'create', '--username', 'airflow', '--firstname', 'Airflow', '--lastname', 'Admin', '--email', 'airflowadmin@example.com', '--role', 'Admin', '--password', '********']"}	\N
155	2025-12-23 07:58:32.643164+00	\N	\N	\N	cli_check	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'check']"}	\N
156	2025-12-23 07:58:34.346264+00	\N	\N	\N	cli_migratedb	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'migrate']"}	\N
157	2025-12-23 07:58:36.462715+00	\N	\N	\N	cli_users_create	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'users', 'create', '--username', 'airflow', '--firstname', 'Airflow', '--lastname', 'Admin', '--email', 'airflowadmin@example.com', '--role', 'Admin', '--password', '********']"}	\N
158	2025-12-23 07:59:32.219297+00	\N	\N	\N	cli_check	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'check']"}	\N
159	2025-12-23 07:59:34.050398+00	\N	\N	\N	cli_migratedb	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'migrate']"}	\N
160	2025-12-23 07:59:36.404643+00	\N	\N	\N	cli_users_create	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'users', 'create', '--username', 'airflow', '--firstname', 'Airflow', '--lastname', 'Admin', '--email', 'airflowadmin@example.com', '--role', 'Admin', '--password', '********']"}	\N
161	2025-12-23 08:00:41.574239+00	\N	\N	\N	cli_check	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'check']"}	\N
162	2025-12-23 08:00:43.236772+00	\N	\N	\N	cli_migratedb	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'migrate']"}	\N
163	2025-12-23 08:00:45.347579+00	\N	\N	\N	cli_users_create	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'users', 'create', '--username', 'airflow', '--firstname', 'Airflow', '--lastname', 'Admin', '--email', 'airflowadmin@example.com', '--role', 'Admin', '--password', '********']"}	\N
164	2025-12-23 08:01:49.855204+00	\N	\N	\N	cli_check	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'check']"}	\N
165	2025-12-23 08:01:51.543998+00	\N	\N	\N	cli_migratedb	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'migrate']"}	\N
166	2025-12-23 08:01:53.653157+00	\N	\N	\N	cli_users_create	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'users', 'create', '--username', 'airflow', '--firstname', 'Airflow', '--lastname', 'Admin', '--email', 'airflowadmin@example.com', '--role', 'Admin', '--password', '********']"}	\N
167	2025-12-23 08:02:58.187029+00	\N	\N	\N	cli_check	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'check']"}	\N
168	2025-12-23 08:02:59.883894+00	\N	\N	\N	cli_migratedb	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'migrate']"}	\N
169	2025-12-23 08:03:01.978036+00	\N	\N	\N	cli_users_create	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'users', 'create', '--username', 'airflow', '--firstname', 'Airflow', '--lastname', 'Admin', '--email', 'airflowadmin@example.com', '--role', 'Admin', '--password', '********']"}	\N
170	2025-12-23 08:04:06.514108+00	\N	\N	\N	cli_check	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'check']"}	\N
171	2025-12-23 08:04:08.22688+00	\N	\N	\N	cli_migratedb	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'migrate']"}	\N
172	2025-12-23 08:04:10.438068+00	\N	\N	\N	cli_users_create	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'users', 'create', '--username', 'airflow', '--firstname', 'Airflow', '--lastname', 'Admin', '--email', 'airflowadmin@example.com', '--role', 'Admin', '--password', '********']"}	\N
173	2025-12-23 08:05:14.987458+00	\N	\N	\N	cli_check	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'check']"}	\N
174	2025-12-23 08:05:16.674226+00	\N	\N	\N	cli_migratedb	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'migrate']"}	\N
175	2025-12-23 08:05:18.812031+00	\N	\N	\N	cli_users_create	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'users', 'create', '--username', 'airflow', '--firstname', 'Airflow', '--lastname', 'Admin', '--email', 'airflowadmin@example.com', '--role', 'Admin', '--password', '********']"}	\N
176	2025-12-23 08:06:23.357326+00	\N	\N	\N	cli_check	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'check']"}	\N
177	2025-12-23 08:06:25.01337+00	\N	\N	\N	cli_migratedb	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'migrate']"}	\N
178	2025-12-23 08:06:27.089205+00	\N	\N	\N	cli_users_create	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'users', 'create', '--username', 'airflow', '--firstname', 'Airflow', '--lastname', 'Admin', '--email', 'airflowadmin@example.com', '--role', 'Admin', '--password', '********']"}	\N
179	2025-12-23 08:07:31.682558+00	\N	\N	\N	cli_check	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'check']"}	\N
180	2025-12-23 08:07:33.616802+00	\N	\N	\N	cli_migratedb	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'migrate']"}	\N
181	2025-12-23 08:07:35.83327+00	\N	\N	\N	cli_users_create	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'users', 'create', '--username', 'airflow', '--firstname', 'Airflow', '--lastname', 'Admin', '--email', 'airflowadmin@example.com', '--role', 'Admin', '--password', '********']"}	\N
182	2025-12-23 08:08:40.37802+00	\N	\N	\N	cli_check	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'check']"}	\N
183	2025-12-23 08:08:42.061706+00	\N	\N	\N	cli_migratedb	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'migrate']"}	\N
184	2025-12-23 08:08:44.125284+00	\N	\N	\N	cli_users_create	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'users', 'create', '--username', 'airflow', '--firstname', 'Airflow', '--lastname', 'Admin', '--email', 'airflowadmin@example.com', '--role', 'Admin', '--password', '********']"}	\N
185	2025-12-23 08:09:48.614609+00	\N	\N	\N	cli_check	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'check']"}	\N
186	2025-12-23 08:09:50.266447+00	\N	\N	\N	cli_migratedb	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'migrate']"}	\N
187	2025-12-23 08:09:52.342399+00	\N	\N	\N	cli_users_create	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'users', 'create', '--username', 'airflow', '--firstname', 'Airflow', '--lastname', 'Admin', '--email', 'airflowadmin@example.com', '--role', 'Admin', '--password', '********']"}	\N
188	2025-12-23 08:10:56.798286+00	\N	\N	\N	cli_check	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'check']"}	\N
189	2025-12-23 08:10:58.470259+00	\N	\N	\N	cli_migratedb	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'migrate']"}	\N
190	2025-12-23 08:11:00.549283+00	\N	\N	\N	cli_users_create	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'users', 'create', '--username', 'airflow', '--firstname', 'Airflow', '--lastname', 'Admin', '--email', 'airflowadmin@example.com', '--role', 'Admin', '--password', '********']"}	\N
191	2025-12-23 08:12:05.076346+00	\N	\N	\N	cli_check	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'check']"}	\N
192	2025-12-23 08:12:06.762354+00	\N	\N	\N	cli_migratedb	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'migrate']"}	\N
193	2025-12-23 08:12:08.855241+00	\N	\N	\N	cli_users_create	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'users', 'create', '--username', 'airflow', '--firstname', 'Airflow', '--lastname', 'Admin', '--email', 'airflowadmin@example.com', '--role', 'Admin', '--password', '********']"}	\N
194	2025-12-23 08:13:13.374717+00	\N	\N	\N	cli_check	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'check']"}	\N
195	2025-12-23 08:13:15.079557+00	\N	\N	\N	cli_migratedb	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'migrate']"}	\N
196	2025-12-23 08:13:17.197442+00	\N	\N	\N	cli_users_create	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'users', 'create', '--username', 'airflow', '--firstname', 'Airflow', '--lastname', 'Admin', '--email', 'airflowadmin@example.com', '--role', 'Admin', '--password', '********']"}	\N
197	2025-12-23 08:14:21.953811+00	\N	\N	\N	cli_check	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'check']"}	\N
198	2025-12-23 08:14:23.771054+00	\N	\N	\N	cli_migratedb	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'migrate']"}	\N
199	2025-12-23 08:14:25.9835+00	\N	\N	\N	cli_users_create	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'users', 'create', '--username', 'airflow', '--firstname', 'Airflow', '--lastname', 'Admin', '--email', 'airflowadmin@example.com', '--role', 'Admin', '--password', '********']"}	\N
200	2025-12-23 08:15:30.476293+00	\N	\N	\N	cli_check	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'check']"}	\N
201	2025-12-23 08:15:32.174578+00	\N	\N	\N	cli_migratedb	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'migrate']"}	\N
202	2025-12-23 08:15:34.302233+00	\N	\N	\N	cli_users_create	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'users', 'create', '--username', 'airflow', '--firstname', 'Airflow', '--lastname', 'Admin', '--email', 'airflowadmin@example.com', '--role', 'Admin', '--password', '********']"}	\N
203	2025-12-23 08:16:38.800206+00	\N	\N	\N	cli_check	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'check']"}	\N
204	2025-12-23 08:16:40.501991+00	\N	\N	\N	cli_migratedb	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'migrate']"}	\N
205	2025-12-23 08:16:42.601081+00	\N	\N	\N	cli_users_create	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'users', 'create', '--username', 'airflow', '--firstname', 'Airflow', '--lastname', 'Admin', '--email', 'airflowadmin@example.com', '--role', 'Admin', '--password', '********']"}	\N
206	2025-12-23 08:17:47.226978+00	\N	\N	\N	cli_check	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'check']"}	\N
207	2025-12-23 08:17:49.084213+00	\N	\N	\N	cli_migratedb	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'migrate']"}	\N
208	2025-12-23 08:17:51.26631+00	\N	\N	\N	cli_users_create	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'users', 'create', '--username', 'airflow', '--firstname', 'Airflow', '--lastname', 'Admin', '--email', 'airflowadmin@example.com', '--role', 'Admin', '--password', '********']"}	\N
209	2025-12-23 08:18:55.858204+00	\N	\N	\N	cli_check	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'check']"}	\N
210	2025-12-23 08:18:57.52925+00	\N	\N	\N	cli_migratedb	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'migrate']"}	\N
211	2025-12-23 08:18:59.590756+00	\N	\N	\N	cli_users_create	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'users', 'create', '--username', 'airflow', '--firstname', 'Airflow', '--lastname', 'Admin', '--email', 'airflowadmin@example.com', '--role', 'Admin', '--password', '********']"}	\N
212	2025-12-23 08:20:04.066819+00	\N	\N	\N	cli_check	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'check']"}	\N
213	2025-12-23 08:20:05.772349+00	\N	\N	\N	cli_migratedb	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'migrate']"}	\N
214	2025-12-23 08:20:07.864202+00	\N	\N	\N	cli_users_create	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'users', 'create', '--username', 'airflow', '--firstname', 'Airflow', '--lastname', 'Admin', '--email', 'airflowadmin@example.com', '--role', 'Admin', '--password', '********']"}	\N
215	2025-12-23 08:21:12.438005+00	\N	\N	\N	cli_check	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'check']"}	\N
216	2025-12-23 08:21:14.107295+00	\N	\N	\N	cli_migratedb	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'migrate']"}	\N
217	2025-12-23 08:21:16.20947+00	\N	\N	\N	cli_users_create	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'users', 'create', '--username', 'airflow', '--firstname', 'Airflow', '--lastname', 'Admin', '--email', 'airflowadmin@example.com', '--role', 'Admin', '--password', '********']"}	\N
218	2025-12-23 08:22:20.63962+00	\N	\N	\N	cli_check	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'check']"}	\N
219	2025-12-23 08:22:22.324529+00	\N	\N	\N	cli_migratedb	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'migrate']"}	\N
220	2025-12-23 08:22:24.410118+00	\N	\N	\N	cli_users_create	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'users', 'create', '--username', 'airflow', '--firstname', 'Airflow', '--lastname', 'Admin', '--email', 'airflowadmin@example.com', '--role', 'Admin', '--password', '********']"}	\N
221	2025-12-23 08:23:28.960986+00	\N	\N	\N	cli_check	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'check']"}	\N
222	2025-12-23 08:23:30.659136+00	\N	\N	\N	cli_migratedb	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'migrate']"}	\N
223	2025-12-23 08:23:32.770697+00	\N	\N	\N	cli_users_create	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'users', 'create', '--username', 'airflow', '--firstname', 'Airflow', '--lastname', 'Admin', '--email', 'airflowadmin@example.com', '--role', 'Admin', '--password', '********']"}	\N
224	2025-12-23 08:24:37.263745+00	\N	\N	\N	cli_check	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'check']"}	\N
225	2025-12-23 08:24:38.915247+00	\N	\N	\N	cli_migratedb	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'migrate']"}	\N
226	2025-12-23 08:24:40.974315+00	\N	\N	\N	cli_users_create	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'users', 'create', '--username', 'airflow', '--firstname', 'Airflow', '--lastname', 'Admin', '--email', 'airflowadmin@example.com', '--role', 'Admin', '--password', '********']"}	\N
227	2025-12-23 08:25:45.510871+00	\N	\N	\N	cli_check	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'check']"}	\N
228	2025-12-23 08:25:47.19764+00	\N	\N	\N	cli_migratedb	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'migrate']"}	\N
229	2025-12-23 08:25:49.282261+00	\N	\N	\N	cli_users_create	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'users', 'create', '--username', 'airflow', '--firstname', 'Airflow', '--lastname', 'Admin', '--email', 'airflowadmin@example.com', '--role', 'Admin', '--password', '********']"}	\N
230	2025-12-23 08:26:53.812072+00	\N	\N	\N	cli_check	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'check']"}	\N
231	2025-12-23 08:26:55.505595+00	\N	\N	\N	cli_migratedb	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'migrate']"}	\N
232	2025-12-23 08:26:57.606701+00	\N	\N	\N	cli_users_create	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'users', 'create', '--username', 'airflow', '--firstname', 'Airflow', '--lastname', 'Admin', '--email', 'airflowadmin@example.com', '--role', 'Admin', '--password', '********']"}	\N
233	2025-12-23 08:28:02.194211+00	\N	\N	\N	cli_check	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'check']"}	\N
234	2025-12-23 08:28:03.898373+00	\N	\N	\N	cli_migratedb	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'migrate']"}	\N
235	2025-12-23 08:28:06.022577+00	\N	\N	\N	cli_users_create	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'users', 'create', '--username', 'airflow', '--firstname', 'Airflow', '--lastname', 'Admin', '--email', 'airflowadmin@example.com', '--role', 'Admin', '--password', '********']"}	\N
236	2025-12-23 08:29:10.605883+00	\N	\N	\N	cli_check	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'check']"}	\N
237	2025-12-23 08:29:12.315163+00	\N	\N	\N	cli_migratedb	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'migrate']"}	\N
238	2025-12-23 08:29:14.4488+00	\N	\N	\N	cli_users_create	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'users', 'create', '--username', 'airflow', '--firstname', 'Airflow', '--lastname', 'Admin', '--email', 'airflowadmin@example.com', '--role', 'Admin', '--password', '********']"}	\N
239	2025-12-23 08:30:19.02524+00	\N	\N	\N	cli_check	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'check']"}	\N
240	2025-12-23 08:30:20.712756+00	\N	\N	\N	cli_migratedb	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'migrate']"}	\N
241	2025-12-23 08:30:22.818593+00	\N	\N	\N	cli_users_create	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'users', 'create', '--username', 'airflow', '--firstname', 'Airflow', '--lastname', 'Admin', '--email', 'airflowadmin@example.com', '--role', 'Admin', '--password', '********']"}	\N
242	2025-12-23 08:31:27.34065+00	\N	\N	\N	cli_check	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'check']"}	\N
243	2025-12-23 08:31:29.038693+00	\N	\N	\N	cli_migratedb	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'migrate']"}	\N
244	2025-12-23 08:31:31.149678+00	\N	\N	\N	cli_users_create	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'users', 'create', '--username', 'airflow', '--firstname', 'Airflow', '--lastname', 'Admin', '--email', 'airflowadmin@example.com', '--role', 'Admin', '--password', '********']"}	\N
245	2025-12-23 08:32:35.775249+00	\N	\N	\N	cli_check	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'check']"}	\N
246	2025-12-23 08:32:37.479518+00	\N	\N	\N	cli_migratedb	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'migrate']"}	\N
247	2025-12-23 08:32:39.594176+00	\N	\N	\N	cli_users_create	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'users', 'create', '--username', 'airflow', '--firstname', 'Airflow', '--lastname', 'Admin', '--email', 'airflowadmin@example.com', '--role', 'Admin', '--password', '********']"}	\N
248	2025-12-23 08:33:44.138952+00	\N	\N	\N	cli_check	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'check']"}	\N
249	2025-12-23 08:33:45.833877+00	\N	\N	\N	cli_migratedb	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'migrate']"}	\N
250	2025-12-23 08:33:47.958662+00	\N	\N	\N	cli_users_create	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'users', 'create', '--username', 'airflow', '--firstname', 'Airflow', '--lastname', 'Admin', '--email', 'airflowadmin@example.com', '--role', 'Admin', '--password', '********']"}	\N
251	2025-12-23 08:35:04.563884+00	\N	\N	\N	cli_check	\N	\N	root	\N	{"host_name": "753828a966b6", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'check']"}	\N
252	2025-12-23 08:35:06.210337+00	\N	\N	\N	cli_migratedb	\N	\N	root	\N	{"host_name": "753828a966b6", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'migrate']"}	\N
253	2025-12-23 08:35:08.654687+00	\N	\N	\N	cli_users_create	\N	\N	root	\N	{"host_name": "753828a966b6", "full_command": "['/home/airflow/.local/bin/airflow', 'users', 'create', '--username', 'airflow', '--firstname', 'Airflow', '--lastname', 'Admin', '--email', 'airflowadmin@example.com', '--role', 'Admin', '--password', '********']"}	\N
254	2025-12-23 08:36:20.628873+00	\N	\N	\N	cli_check	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'check']"}	\N
255	2025-12-23 08:36:22.334094+00	\N	\N	\N	cli_migratedb	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'migrate']"}	\N
256	2025-12-23 08:36:24.434346+00	\N	\N	\N	cli_users_create	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'users', 'create', '--username', 'airflow', '--firstname', 'Airflow', '--lastname', 'Admin', '--email', 'airflowadmin@example.com', '--role', 'Admin', '--password', '********']"}	\N
257	2025-12-23 08:36:29.085986+00	\N	\N	\N	cli_check	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'check']"}	\N
258	2025-12-23 08:36:30.763075+00	\N	\N	\N	cli_migratedb	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'migrate']"}	\N
259	2025-12-23 08:36:32.855781+00	\N	\N	\N	cli_users_create	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'users', 'create', '--username', 'airflow', '--firstname', 'Airflow', '--lastname', 'Admin', '--email', 'airflowadmin@example.com', '--role', 'Admin', '--password', '********']"}	\N
260	2025-12-23 08:36:37.604792+00	\N	\N	\N	cli_check	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'check']"}	\N
261	2025-12-23 08:36:39.28492+00	\N	\N	\N	cli_migratedb	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'migrate']"}	\N
262	2025-12-23 08:36:41.420507+00	\N	\N	\N	cli_users_create	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'users', 'create', '--username', 'airflow', '--firstname', 'Airflow', '--lastname', 'Admin', '--email', 'airflowadmin@example.com', '--role', 'Admin', '--password', '********']"}	\N
263	2025-12-23 08:36:46.671047+00	\N	\N	\N	cli_check	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'check']"}	\N
264	2025-12-23 08:36:48.336824+00	\N	\N	\N	cli_migratedb	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'migrate']"}	\N
265	2025-12-23 08:36:50.651473+00	\N	\N	\N	cli_users_create	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'users', 'create', '--username', 'airflow', '--firstname', 'Airflow', '--lastname', 'Admin', '--email', 'airflowadmin@example.com', '--role', 'Admin', '--password', '********']"}	\N
266	2025-12-23 08:36:56.597468+00	\N	\N	\N	cli_check	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'check']"}	\N
267	2025-12-23 08:36:58.278311+00	\N	\N	\N	cli_migratedb	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'migrate']"}	\N
268	2025-12-23 08:37:00.362858+00	\N	\N	\N	cli_users_create	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'users', 'create', '--username', 'airflow', '--firstname', 'Airflow', '--lastname', 'Admin', '--email', 'airflowadmin@example.com', '--role', 'Admin', '--password', '********']"}	\N
269	2025-12-23 08:37:06.532659+00	\N	\N	\N	cli_check	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'check']"}	\N
270	2025-12-23 08:37:08.248148+00	\N	\N	\N	cli_migratedb	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'migrate']"}	\N
271	2025-12-23 08:37:10.343542+00	\N	\N	\N	cli_users_create	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'users', 'create', '--username', 'airflow', '--firstname', 'Airflow', '--lastname', 'Admin', '--email', 'airflowadmin@example.com', '--role', 'Admin', '--password', '********']"}	\N
272	2025-12-23 08:37:18.092512+00	\N	\N	\N	cli_check	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'check']"}	\N
273	2025-12-23 08:37:19.799546+00	\N	\N	\N	cli_migratedb	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'migrate']"}	\N
274	2025-12-23 08:37:21.910597+00	\N	\N	\N	cli_users_create	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'users', 'create', '--username', 'airflow', '--firstname', 'Airflow', '--lastname', 'Admin', '--email', 'airflowadmin@example.com', '--role', 'Admin', '--password', '********']"}	\N
275	2025-12-23 08:37:32.858736+00	\N	\N	\N	cli_check	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'check']"}	\N
276	2025-12-23 08:37:34.52814+00	\N	\N	\N	cli_migratedb	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'migrate']"}	\N
277	2025-12-23 08:37:36.623427+00	\N	\N	\N	cli_users_create	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'users', 'create', '--username', 'airflow', '--firstname', 'Airflow', '--lastname', 'Admin', '--email', 'airflowadmin@example.com', '--role', 'Admin', '--password', '********']"}	\N
278	2025-12-23 08:37:53.937112+00	\N	\N	\N	cli_check	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'check']"}	\N
279	2025-12-23 08:37:55.612007+00	\N	\N	\N	cli_migratedb	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'migrate']"}	\N
280	2025-12-23 08:37:57.692676+00	\N	\N	\N	cli_users_create	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'users', 'create', '--username', 'airflow', '--firstname', 'Airflow', '--lastname', 'Admin', '--email', 'airflowadmin@example.com', '--role', 'Admin', '--password', '********']"}	\N
281	2025-12-23 08:38:27.784472+00	\N	\N	\N	cli_check	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'check']"}	\N
282	2025-12-23 08:38:29.486005+00	\N	\N	\N	cli_migratedb	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'migrate']"}	\N
283	2025-12-23 08:38:31.548353+00	\N	\N	\N	cli_users_create	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'users', 'create', '--username', 'airflow', '--firstname', 'Airflow', '--lastname', 'Admin', '--email', 'airflowadmin@example.com', '--role', 'Admin', '--password', '********']"}	\N
284	2025-12-23 08:39:27.245662+00	\N	\N	\N	cli_check	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'check']"}	\N
285	2025-12-23 08:39:28.924875+00	\N	\N	\N	cli_migratedb	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'migrate']"}	\N
286	2025-12-23 08:39:31.035948+00	\N	\N	\N	cli_users_create	\N	\N	root	\N	{"host_name": "9d2fa509bd30", "full_command": "['/home/airflow/.local/bin/airflow', 'users', 'create', '--username', 'airflow', '--firstname', 'Airflow', '--lastname', 'Admin', '--email', 'airflowadmin@example.com', '--role', 'Admin', '--password', '********']"}	\N
287	2025-12-23 08:42:24.005947+00	\N	\N	\N	cli_check	\N	\N	root	\N	{"host_name": "3f714c02796f", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'check']"}	\N
288	2025-12-23 08:42:25.711614+00	\N	\N	\N	cli_migratedb	\N	\N	root	\N	{"host_name": "3f714c02796f", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'migrate']"}	\N
289	2025-12-23 08:42:28.165845+00	\N	\N	\N	cli_users_create	\N	\N	root	\N	{"host_name": "3f714c02796f", "full_command": "['/home/airflow/.local/bin/airflow', 'users', 'create', '--username', 'airflow', '--firstname', 'Airflow', '--lastname', 'Admin', '--email', 'airflowadmin@example.com', '--role', 'Admin', '--password', '********']"}	\N
290	2025-12-23 08:42:33.372211+00	\N	\N	\N	cli_check	\N	\N	root	\N	{"host_name": "3f714c02796f", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'check']"}	\N
291	2025-12-23 08:42:35.068306+00	\N	\N	\N	cli_migratedb	\N	\N	root	\N	{"host_name": "3f714c02796f", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'migrate']"}	\N
292	2025-12-23 08:42:37.178999+00	\N	\N	\N	cli_users_create	\N	\N	root	\N	{"host_name": "3f714c02796f", "full_command": "['/home/airflow/.local/bin/airflow', 'users', 'create', '--username', 'airflow', '--firstname', 'Airflow', '--lastname', 'Admin', '--email', 'airflowadmin@example.com', '--role', 'Admin', '--password', '********']"}	\N
293	2025-12-23 08:42:41.928387+00	\N	\N	\N	cli_check	\N	\N	root	\N	{"host_name": "3f714c02796f", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'check']"}	\N
294	2025-12-23 08:42:43.628866+00	\N	\N	\N	cli_migratedb	\N	\N	root	\N	{"host_name": "3f714c02796f", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'migrate']"}	\N
295	2025-12-23 08:42:45.71194+00	\N	\N	\N	cli_users_create	\N	\N	root	\N	{"host_name": "3f714c02796f", "full_command": "['/home/airflow/.local/bin/airflow', 'users', 'create', '--username', 'airflow', '--firstname', 'Airflow', '--lastname', 'Admin', '--email', 'airflowadmin@example.com', '--role', 'Admin', '--password', '********']"}	\N
296	2025-12-23 08:42:50.629304+00	\N	\N	\N	cli_check	\N	\N	root	\N	{"host_name": "3f714c02796f", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'check']"}	\N
297	2025-12-23 08:42:52.318041+00	\N	\N	\N	cli_migratedb	\N	\N	root	\N	{"host_name": "3f714c02796f", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'migrate']"}	\N
298	2025-12-23 08:42:54.458498+00	\N	\N	\N	cli_users_create	\N	\N	root	\N	{"host_name": "3f714c02796f", "full_command": "['/home/airflow/.local/bin/airflow', 'users', 'create', '--username', 'airflow', '--firstname', 'Airflow', '--lastname', 'Admin', '--email', 'airflowadmin@example.com', '--role', 'Admin', '--password', '********']"}	\N
299	2025-12-23 08:43:49.884164+00	\N	\N	\N	cli_check	\N	\N	root	\N	{"host_name": "925f344bb8fe", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'check']"}	\N
300	2025-12-23 08:43:51.538495+00	\N	\N	\N	cli_migratedb	\N	\N	root	\N	{"host_name": "925f344bb8fe", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'migrate']"}	\N
301	2025-12-23 08:43:54.018907+00	\N	\N	\N	cli_users_create	\N	\N	root	\N	{"host_name": "925f344bb8fe", "full_command": "['/home/airflow/.local/bin/airflow', 'users', 'create', '--username', 'airflow', '--firstname', 'Airflow', '--lastname', 'Admin', '--email', 'airflowadmin@example.com', '--role', 'Admin', '--password', '********']"}	\N
302	2025-12-23 08:44:04.439871+00	\N	\N	\N	cli_check	\N	\N	airflow	\N	{"host_name": "a492d12acc5f", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'check']"}	\N
303	2025-12-23 08:44:04.555398+00	\N	\N	\N	cli_check	\N	\N	airflow	\N	{"host_name": "013003cb65b5", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'check']"}	\N
304	2025-12-23 08:44:04.614492+00	\N	\N	\N	cli_check	\N	\N	airflow	\N	{"host_name": "c0e44510361e", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'check']"}	\N
305	2025-12-23 08:44:06.788966+00	\N	\N	\N	cli_check	\N	\N	airflow	\N	{"host_name": "99191eebe667", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'check']"}	\N
306	2025-12-23 08:44:07.497378+00	\N	\N	\N	cli_webserver	\N	\N	airflow	\N	{"host_name": "013003cb65b5", "full_command": "['/home/airflow/.local/bin/airflow', 'webserver']"}	\N
307	2025-12-23 08:44:07.59116+00	\N	\N	\N	cli_triggerer	\N	\N	airflow	\N	{"host_name": "a492d12acc5f", "full_command": "['/home/airflow/.local/bin/airflow', 'triggerer']"}	\N
308	2025-12-23 08:44:13.376854+00	\N	\N	\N	cli_scheduler	\N	\N	airflow	\N	{"host_name": "c0e44510361e", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}	\N
309	2025-12-23 08:44:24.326488+00	\N	\N	\N	cli_wrapper	\N	\N	airflow	\N	{"host_name": "99191eebe667", "full_command": "['/home/airflow/.local/bin/airflow', 'celery', 'worker']"}	\N
310	2025-12-23 09:02:39.403663+00	\N	\N	\N	connection.create	\N	\N	airflow	Airflow Admin	{}	\N
311	2025-12-23 09:04:11.31495+00	\N	\N	\N	connection.create	\N	\N	airflow	Airflow Admin	{"conn_id": "click_house_work", "conn_type": "sqlite", "description": "", "host": "5.35.90.239", "schema": "default", "login": "etl_user", "password": "***", "port": "9000", "extra": ""}	\N
312	2025-12-23 09:11:40.900943+00	click_house_work	\N	\N	paused	\N	\N	airflow	Airflow Admin	{"is_paused": false}	\N
313	2025-12-23 09:11:42.228544+00	click_house_work	\N	\N	trigger	\N	\N	airflow	Airflow Admin	{"redirect_url": "/home"}	\N
314	2025-12-23 09:11:42.864822+00	click_house_work	select_version	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "99191eebe667", "full_command": "['/home/airflow/.local/bin/airflow', 'celery', 'worker']"}	\N
315	2025-12-23 09:11:43.94863+00	click_house_work	select_version	-1	running	2025-12-23 09:11:42.230154+00	manual__2025-12-23T09:11:42.230154+00:00	airflow	\N	\N	1
316	2025-12-23 09:11:43.972747+00	click_house_work	select_version	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "99191eebe667", "full_command": "['/home/airflow/.local/bin/airflow', 'celery', 'worker']"}	\N
317	2025-12-23 09:11:44.178082+00	click_house_work	select_version	-1	success	2025-12-23 09:11:42.230154+00	manual__2025-12-23T09:11:42.230154+00:00	airflow	\N	\N	1
318	2025-12-23 10:54:02.567958+00	\N	\N	\N	cli_check	\N	\N	root	\N	{"host_name": "f809790ef756", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'check']"}	\N
319	2025-12-23 10:54:04.293054+00	\N	\N	\N	cli_migratedb	\N	\N	root	\N	{"host_name": "f809790ef756", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'migrate']"}	\N
320	2025-12-23 10:54:06.811605+00	\N	\N	\N	cli_users_create	\N	\N	root	\N	{"host_name": "f809790ef756", "full_command": "['/home/airflow/.local/bin/airflow', 'users', 'create', '--username', 'airflow', '--firstname', 'Airflow', '--lastname', 'Admin', '--email', 'airflowadmin@example.com', '--role', 'Admin', '--password', '********']"}	\N
321	2025-12-23 10:54:16.690573+00	\N	\N	\N	cli_check	\N	\N	airflow	\N	{"host_name": "a39932a04260", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'check']"}	\N
322	2025-12-23 10:54:16.724181+00	\N	\N	\N	cli_check	\N	\N	airflow	\N	{"host_name": "f4fefb00072b", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'check']"}	\N
323	2025-12-23 10:54:17.039978+00	\N	\N	\N	cli_check	\N	\N	airflow	\N	{"host_name": "7e1987865a61", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'check']"}	\N
324	2025-12-23 10:54:19.322825+00	\N	\N	\N	cli_webserver	\N	\N	airflow	\N	{"host_name": "f4fefb00072b", "full_command": "['/home/airflow/.local/bin/airflow', 'webserver']"}	\N
325	2025-12-23 10:54:19.574085+00	\N	\N	\N	cli_check	\N	\N	airflow	\N	{"host_name": "9637d792a4e9", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'check']"}	\N
326	2025-12-23 10:54:20.096346+00	\N	\N	\N	cli_triggerer	\N	\N	airflow	\N	{"host_name": "7e1987865a61", "full_command": "['/home/airflow/.local/bin/airflow', 'triggerer']"}	\N
327	2025-12-23 10:54:24.561474+00	\N	\N	\N	cli_scheduler	\N	\N	airflow	\N	{"host_name": "a39932a04260", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}	\N
328	2025-12-23 10:54:36.159372+00	\N	\N	\N	cli_wrapper	\N	\N	airflow	\N	{"host_name": "9637d792a4e9", "full_command": "['/home/airflow/.local/bin/airflow', 'celery', 'worker']"}	\N
329	2025-12-23 10:56:49.975237+00	\N	\N	\N	cli_check	\N	\N	root	\N	{"host_name": "f4eb2a96a290", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'check']"}	\N
330	2025-12-23 10:56:51.668647+00	\N	\N	\N	cli_migratedb	\N	\N	root	\N	{"host_name": "f4eb2a96a290", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'migrate']"}	\N
331	2025-12-23 10:56:54.124114+00	\N	\N	\N	cli_users_create	\N	\N	root	\N	{"host_name": "f4eb2a96a290", "full_command": "['/home/airflow/.local/bin/airflow', 'users', 'create', '--username', 'airflow', '--firstname', 'Airflow', '--lastname', 'Admin', '--email', 'airflowadmin@example.com', '--role', 'Admin', '--password', '********']"}	\N
332	2025-12-23 10:57:04.030045+00	\N	\N	\N	cli_check	\N	\N	airflow	\N	{"host_name": "fdd43bbb7cf0", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'check']"}	\N
333	2025-12-23 10:57:04.174375+00	\N	\N	\N	cli_check	\N	\N	airflow	\N	{"host_name": "f0d34b371fc5", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'check']"}	\N
334	2025-12-23 10:57:04.227412+00	\N	\N	\N	cli_check	\N	\N	airflow	\N	{"host_name": "db067e7cb18b", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'check']"}	\N
335	2025-12-23 10:57:06.872003+00	\N	\N	\N	cli_webserver	\N	\N	airflow	\N	{"host_name": "db067e7cb18b", "full_command": "['/home/airflow/.local/bin/airflow', 'webserver']"}	\N
336	2025-12-23 10:57:07.129152+00	\N	\N	\N	cli_check	\N	\N	airflow	\N	{"host_name": "838506d0a24c", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'check']"}	\N
337	2025-12-23 10:57:07.792803+00	\N	\N	\N	cli_triggerer	\N	\N	airflow	\N	{"host_name": "f0d34b371fc5", "full_command": "['/home/airflow/.local/bin/airflow', 'triggerer']"}	\N
338	2025-12-23 10:57:11.873563+00	\N	\N	\N	cli_scheduler	\N	\N	airflow	\N	{"host_name": "fdd43bbb7cf0", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}	\N
339	2025-12-23 10:57:23.74679+00	\N	\N	\N	cli_wrapper	\N	\N	airflow	\N	{"host_name": "838506d0a24c", "full_command": "['/home/airflow/.local/bin/airflow', 'celery', 'worker']"}	\N
340	2025-12-23 10:59:02.862929+00	click_house_work	\N	\N	trigger	\N	\N	airflow	Airflow Admin	{"redirect_url": "/home"}	\N
341	2025-12-23 10:59:03.66889+00	click_house_work	select_version	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "838506d0a24c", "full_command": "['/home/airflow/.local/bin/airflow', 'celery', 'worker']"}	\N
342	2025-12-23 10:59:04.922602+00	click_house_work	select_version	-1	running	2025-12-23 10:59:02.8655+00	manual__2025-12-23T10:59:02.865500+00:00	airflow	\N	\N	1
343	2025-12-23 10:59:04.941613+00	click_house_work	select_version	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "838506d0a24c", "full_command": "['/home/airflow/.local/bin/airflow', 'celery', 'worker']"}	\N
344	2025-12-23 10:59:05.335265+00	click_house_work	select_version	-1	success	2025-12-23 10:59:02.8655+00	manual__2025-12-23T10:59:02.865500+00:00	airflow	\N	\N	1
\.


--
-- Data for Name: log_template; Type: TABLE DATA; Schema: public; Owner: airflow
--

COPY public.log_template (id, filename, elasticsearch_id, created_at) FROM stdin;
1	{{ ti.dag_id }}/{{ ti.task_id }}/{{ ts }}/{{ try_number }}.log	{dag_id}-{task_id}-{execution_date}-{try_number}	2025-12-23 07:40:29.311948+00
2	dag_id={{ ti.dag_id }}/run_id={{ ti.run_id }}/task_id={{ ti.task_id }}/{% if ti.map_index >= 0 %}map_index={{ ti.map_index }}/{% endif %}attempt={{ try_number }}.log	{dag_id}-{task_id}-{run_id}-{map_index}-{try_number}	2025-12-23 07:40:29.311956+00
\.


--
-- Data for Name: rendered_task_instance_fields; Type: TABLE DATA; Schema: public; Owner: airflow
--

COPY public.rendered_task_instance_fields (dag_id, task_id, run_id, map_index, rendered_fields, k8s_pod_yaml) FROM stdin;
click_house_work	select_version	manual__2025-12-23T09:11:42.230154+00:00	-1	{"_sql": "SELECT version()", "_parameters": null, "_external_tables": null, "_query_id": null, "_settings": null, "_database": null}	null
click_house_work	select_version	manual__2025-12-23T10:59:02.865500+00:00	-1	{"_sql": "SELECT version()", "_parameters": null, "_external_tables": null, "_query_id": null, "_settings": null, "_database": null}	null
\.


--
-- Data for Name: serialized_dag; Type: TABLE DATA; Schema: public; Owner: airflow
--

COPY public.serialized_dag (dag_id, fileloc, fileloc_hash, data, data_compressed, last_updated, dag_hash, processor_subdir) FROM stdin;
click_house_work	/opt/airflow/dags/dag_with_clickhouse.py	3796940801909150	{"__version": 1, "dag": {"timezone": "UTC", "_task_group": {"_group_id": null, "prefix_group_id": true, "tooltip": "", "ui_color": "CornflowerBlue", "ui_fgcolor": "#000", "children": {"select_version": ["operator", "select_version"]}, "upstream_group_ids": [], "downstream_group_ids": [], "upstream_task_ids": [], "downstream_task_ids": []}, "schedule_interval": null, "_dag_id": "click_house_work", "start_date": 1766361600.0, "edge_info": {}, "fileloc": "/opt/airflow/dags/dag_with_clickhouse.py", "_processor_dags_folder": "/opt/airflow/dags", "tasks": [{"__var": {"is_teardown": false, "start_from_trigger": false, "on_failure_fail_dagrun": false, "template_fields_renderers": {"_sql": "sql", "_parameters": "json", "_external_tables": "json", "_settings": "json"}, "downstream_task_ids": [], "ui_fgcolor": "#000", "ui_color": "#fff", "is_setup": false, "weight_rule": "downstream", "_needs_expansion": false, "template_fields": ["_sql", "_parameters", "_external_tables", "_query_id", "_settings", "_database"], "_log_config_logger_name": "airflow.task.operators", "pool": "default_pool", "template_ext": [".sql"], "task_id": "select_version", "_task_type": "ClickHouseOperator", "_task_module": "airflow_clickhouse_plugin.operators.clickhouse", "_is_empty": false, "start_trigger_args": null, "_sql": "SELECT version()"}, "__type": "operator"}], "dag_dependencies": [], "params": []}}	\N	2025-12-23 09:09:16.497028+00	6b50f3685b9ef71ebe5d44cec6b14187	/opt/airflow/dags
\.


--
-- Data for Name: session; Type: TABLE DATA; Schema: public; Owner: airflow
--

COPY public.session (id, session_id, data, expiry) FROM stdin;
2	9ae535f0-d239-4154-b905-e0728545fb8e	\\x80049553010000000000007d94288c0a5f7065726d616e656e7494888c065f667265736894888c0a637372665f746f6b656e948c2862623966613265303836333335386439343234356438636562666161326637346339666562623361948c066c6f63616c65948c02656e948c085f757365725f6964944b018c035f6964948c803537646634383761373263343739356462633363366335343431313062323366333735643266616138373634323262343463306262653533306232313766646663626430623735333463626664356364326237666137306138613033306534313563616166613634633932343137303137396431323033353464643336346637948c116461675f7374617475735f66696c746572948c03616c6c948c0c706167655f686973746f7279945d948c2b687474703a2f2f3139342e36372e3132342e3231323a383038302f636f6e6e656374696f6e2f6c6973742f9461752e	2026-01-22 09:11:48.562493
3	60c37b7a-4bdb-4b7c-9159-09990e5a4993	\\x80049563000000000000007d94288c0a5f7065726d616e656e7494888c065f667265736894898c0a637372665f746f6b656e948c2835646164633266626233353635386234623833663536633965656536373763313963343064633131948c066c6f63616c65948c02656e94752e	2026-01-22 10:58:53.240809
4	4b6286a1-cefe-4568-a9f3-ed16e7fa9498	\\x80049513010000000000007d94288c0a5f7065726d616e656e7494888c065f667265736894888c0a637372665f746f6b656e948c2835646164633266626233353635386234623833663536633965656536373763313963343064633131948c066c6f63616c65948c02656e948c085f757365725f6964944b018c035f6964948c803537646634383761373263343739356462633363366335343431313062323366333735643266616138373634323262343463306262653533306232313766646663626430623735333463626664356364326237666137306138613033306534313563616166613634633932343137303137396431323033353464643336346637948c116461675f7374617475735f66696c746572948c03616c6c94752e	2026-01-22 10:59:09.339932
1	de6c51bf-71a0-43b8-86f4-27306fa1c883	\\x80049563000000000000007d94288c0a5f7065726d616e656e7494888c065f667265736894898c0a637372665f746f6b656e948c2862623966613265303836333335386439343234356438636562666161326637346339666562623361948c066c6f63616c65948c02656e94752e	2026-01-22 08:58:17.499121
\.


--
-- Data for Name: sla_miss; Type: TABLE DATA; Schema: public; Owner: airflow
--

COPY public.sla_miss (task_id, dag_id, execution_date, email_sent, "timestamp", description, notification_sent) FROM stdin;
\.


--
-- Data for Name: slot_pool; Type: TABLE DATA; Schema: public; Owner: airflow
--

COPY public.slot_pool (id, pool, slots, description, include_deferred) FROM stdin;
1	default_pool	128	Default pool	f
\.


--
-- Data for Name: task_fail; Type: TABLE DATA; Schema: public; Owner: airflow
--

COPY public.task_fail (id, task_id, dag_id, run_id, map_index, start_date, end_date, duration) FROM stdin;
\.


--
-- Data for Name: task_instance; Type: TABLE DATA; Schema: public; Owner: airflow
--

COPY public.task_instance (task_id, dag_id, run_id, map_index, start_date, end_date, duration, state, try_number, max_tries, hostname, unixname, job_id, pool, pool_slots, queue, priority_weight, operator, custom_operator_name, queued_dttm, queued_by_job_id, pid, executor, executor_config, updated_at, rendered_map_index, external_executor_id, trigger_id, trigger_timeout, next_method, next_kwargs, task_display_name) FROM stdin;
select_version	click_house_work	manual__2025-12-23T09:11:42.230154+00:00	-1	2025-12-23 09:11:43.942771+00	2025-12-23 09:11:44.1778+00	0.235029	success	1	0	99191eebe667	airflow	3	default_pool	1	default	1	ClickHouseOperator	\N	2025-12-23 09:11:42.573935+00	2	396	\N	\\x80057d942e	2025-12-23 09:11:44.187963+00	\N	2065d7d8-e877-44e8-aad7-822f061a35ea	\N	\N	\N	\N	select_version
select_version	click_house_work	manual__2025-12-23T10:59:02.865500+00:00	-1	2025-12-23 10:59:04.865157+00	2025-12-23 10:59:05.335027+00	0.46987	success	1	0	838506d0a24c	airflow	8	default_pool	1	default	1	ClickHouseOperator	\N	2025-12-23 10:59:03.400785+00	7	71	\N	\\x80057d942e	2025-12-23 10:59:05.344844+00	\N	fdbed8d4-a277-436b-95a7-653dbbb196e0	\N	\N	\N	\N	select_version
\.


--
-- Data for Name: task_instance_history; Type: TABLE DATA; Schema: public; Owner: airflow
--

COPY public.task_instance_history (id, task_id, dag_id, run_id, map_index, try_number, start_date, end_date, duration, state, max_tries, hostname, unixname, job_id, pool, pool_slots, queue, priority_weight, operator, custom_operator_name, queued_dttm, queued_by_job_id, pid, executor, executor_config, updated_at, rendered_map_index, external_executor_id, trigger_id, trigger_timeout, next_method, next_kwargs, task_display_name) FROM stdin;
\.


--
-- Data for Name: task_instance_note; Type: TABLE DATA; Schema: public; Owner: airflow
--

COPY public.task_instance_note (user_id, task_id, dag_id, run_id, map_index, content, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: task_map; Type: TABLE DATA; Schema: public; Owner: airflow
--

COPY public.task_map (dag_id, task_id, run_id, map_index, length, keys) FROM stdin;
\.


--
-- Data for Name: task_outlet_dataset_reference; Type: TABLE DATA; Schema: public; Owner: airflow
--

COPY public.task_outlet_dataset_reference (dataset_id, dag_id, task_id, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: task_reschedule; Type: TABLE DATA; Schema: public; Owner: airflow
--

COPY public.task_reschedule (id, task_id, dag_id, run_id, map_index, try_number, start_date, end_date, duration, reschedule_date) FROM stdin;
\.


--
-- Data for Name: trigger; Type: TABLE DATA; Schema: public; Owner: airflow
--

COPY public.trigger (id, classpath, kwargs, created_date, triggerer_id) FROM stdin;
\.


--
-- Data for Name: variable; Type: TABLE DATA; Schema: public; Owner: airflow
--

COPY public.variable (id, key, val, description, is_encrypted) FROM stdin;
\.


--
-- Data for Name: xcom; Type: TABLE DATA; Schema: public; Owner: airflow
--

COPY public.xcom (dag_run_id, task_id, map_index, key, dag_id, run_id, value, "timestamp") FROM stdin;
1	select_version	-1	return_value	click_house_work	manual__2025-12-23T09:11:42.230154+00:00	\\x5b5b2232352e382e332e3636225d5d	2025-12-23 09:11:44.168163+00
2	select_version	-1	return_value	click_house_work	manual__2025-12-23T10:59:02.865500+00:00	\\x5b5b2232352e382e332e3636225d5d	2025-12-23 10:59:05.326006+00
\.


--
-- Name: ab_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: airflow
--

SELECT pg_catalog.setval('public.ab_permission_id_seq', 7, true);


--
-- Name: ab_permission_view_id_seq; Type: SEQUENCE SET; Schema: public; Owner: airflow
--

SELECT pg_catalog.setval('public.ab_permission_view_id_seq', 104, true);


--
-- Name: ab_permission_view_role_id_seq; Type: SEQUENCE SET; Schema: public; Owner: airflow
--

SELECT pg_catalog.setval('public.ab_permission_view_role_id_seq', 229, true);


--
-- Name: ab_register_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: airflow
--

SELECT pg_catalog.setval('public.ab_register_user_id_seq', 1, false);


--
-- Name: ab_role_id_seq; Type: SEQUENCE SET; Schema: public; Owner: airflow
--

SELECT pg_catalog.setval('public.ab_role_id_seq', 5, true);


--
-- Name: ab_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: airflow
--

SELECT pg_catalog.setval('public.ab_user_id_seq', 1, true);


--
-- Name: ab_user_role_id_seq; Type: SEQUENCE SET; Schema: public; Owner: airflow
--

SELECT pg_catalog.setval('public.ab_user_role_id_seq', 1, true);


--
-- Name: ab_view_menu_id_seq; Type: SEQUENCE SET; Schema: public; Owner: airflow
--

SELECT pg_catalog.setval('public.ab_view_menu_id_seq', 58, true);


--
-- Name: callback_request_id_seq; Type: SEQUENCE SET; Schema: public; Owner: airflow
--

SELECT pg_catalog.setval('public.callback_request_id_seq', 1, false);


--
-- Name: connection_id_seq; Type: SEQUENCE SET; Schema: public; Owner: airflow
--

SELECT pg_catalog.setval('public.connection_id_seq', 1, true);


--
-- Name: dag_pickle_id_seq; Type: SEQUENCE SET; Schema: public; Owner: airflow
--

SELECT pg_catalog.setval('public.dag_pickle_id_seq', 1, false);


--
-- Name: dag_run_id_seq; Type: SEQUENCE SET; Schema: public; Owner: airflow
--

SELECT pg_catalog.setval('public.dag_run_id_seq', 2, true);


--
-- Name: dataset_alias_id_seq; Type: SEQUENCE SET; Schema: public; Owner: airflow
--

SELECT pg_catalog.setval('public.dataset_alias_id_seq', 1, false);


--
-- Name: dataset_event_id_seq; Type: SEQUENCE SET; Schema: public; Owner: airflow
--

SELECT pg_catalog.setval('public.dataset_event_id_seq', 1, false);


--
-- Name: dataset_id_seq; Type: SEQUENCE SET; Schema: public; Owner: airflow
--

SELECT pg_catalog.setval('public.dataset_id_seq', 1, false);


--
-- Name: import_error_id_seq; Type: SEQUENCE SET; Schema: public; Owner: airflow
--

SELECT pg_catalog.setval('public.import_error_id_seq', 1, false);


--
-- Name: job_id_seq; Type: SEQUENCE SET; Schema: public; Owner: airflow
--

SELECT pg_catalog.setval('public.job_id_seq', 8, true);


--
-- Name: log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: airflow
--

SELECT pg_catalog.setval('public.log_id_seq', 344, true);


--
-- Name: log_template_id_seq; Type: SEQUENCE SET; Schema: public; Owner: airflow
--

SELECT pg_catalog.setval('public.log_template_id_seq', 2, true);


--
-- Name: session_id_seq; Type: SEQUENCE SET; Schema: public; Owner: airflow
--

SELECT pg_catalog.setval('public.session_id_seq', 4, true);


--
-- Name: slot_pool_id_seq; Type: SEQUENCE SET; Schema: public; Owner: airflow
--

SELECT pg_catalog.setval('public.slot_pool_id_seq', 1, true);


--
-- Name: task_fail_id_seq; Type: SEQUENCE SET; Schema: public; Owner: airflow
--

SELECT pg_catalog.setval('public.task_fail_id_seq', 1, false);


--
-- Name: task_id_sequence; Type: SEQUENCE SET; Schema: public; Owner: airflow
--

SELECT pg_catalog.setval('public.task_id_sequence', 2, true);


--
-- Name: task_instance_history_id_seq; Type: SEQUENCE SET; Schema: public; Owner: airflow
--

SELECT pg_catalog.setval('public.task_instance_history_id_seq', 1, false);


--
-- Name: task_reschedule_id_seq; Type: SEQUENCE SET; Schema: public; Owner: airflow
--

SELECT pg_catalog.setval('public.task_reschedule_id_seq', 1, false);


--
-- Name: taskset_id_sequence; Type: SEQUENCE SET; Schema: public; Owner: airflow
--

SELECT pg_catalog.setval('public.taskset_id_sequence', 1, false);


--
-- Name: trigger_id_seq; Type: SEQUENCE SET; Schema: public; Owner: airflow
--

SELECT pg_catalog.setval('public.trigger_id_seq', 1, false);


--
-- Name: variable_id_seq; Type: SEQUENCE SET; Schema: public; Owner: airflow
--

SELECT pg_catalog.setval('public.variable_id_seq', 1, false);


--
-- Name: ab_permission ab_permission_name_uq; Type: CONSTRAINT; Schema: public; Owner: airflow
--

ALTER TABLE ONLY public.ab_permission
    ADD CONSTRAINT ab_permission_name_uq UNIQUE (name);


--
-- Name: ab_permission ab_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: airflow
--

ALTER TABLE ONLY public.ab_permission
    ADD CONSTRAINT ab_permission_pkey PRIMARY KEY (id);


--
-- Name: ab_permission_view ab_permission_view_permission_id_view_menu_id_uq; Type: CONSTRAINT; Schema: public; Owner: airflow
--

ALTER TABLE ONLY public.ab_permission_view
    ADD CONSTRAINT ab_permission_view_permission_id_view_menu_id_uq UNIQUE (permission_id, view_menu_id);


--
-- Name: ab_permission_view ab_permission_view_pkey; Type: CONSTRAINT; Schema: public; Owner: airflow
--

ALTER TABLE ONLY public.ab_permission_view
    ADD CONSTRAINT ab_permission_view_pkey PRIMARY KEY (id);


--
-- Name: ab_permission_view_role ab_permission_view_role_permission_view_id_role_id_uq; Type: CONSTRAINT; Schema: public; Owner: airflow
--

ALTER TABLE ONLY public.ab_permission_view_role
    ADD CONSTRAINT ab_permission_view_role_permission_view_id_role_id_uq UNIQUE (permission_view_id, role_id);


--
-- Name: ab_permission_view_role ab_permission_view_role_pkey; Type: CONSTRAINT; Schema: public; Owner: airflow
--

ALTER TABLE ONLY public.ab_permission_view_role
    ADD CONSTRAINT ab_permission_view_role_pkey PRIMARY KEY (id);


--
-- Name: ab_register_user ab_register_user_pkey; Type: CONSTRAINT; Schema: public; Owner: airflow
--

ALTER TABLE ONLY public.ab_register_user
    ADD CONSTRAINT ab_register_user_pkey PRIMARY KEY (id);


--
-- Name: ab_register_user ab_register_user_username_uq; Type: CONSTRAINT; Schema: public; Owner: airflow
--

ALTER TABLE ONLY public.ab_register_user
    ADD CONSTRAINT ab_register_user_username_uq UNIQUE (username);


--
-- Name: ab_role ab_role_name_uq; Type: CONSTRAINT; Schema: public; Owner: airflow
--

ALTER TABLE ONLY public.ab_role
    ADD CONSTRAINT ab_role_name_uq UNIQUE (name);


--
-- Name: ab_role ab_role_pkey; Type: CONSTRAINT; Schema: public; Owner: airflow
--

ALTER TABLE ONLY public.ab_role
    ADD CONSTRAINT ab_role_pkey PRIMARY KEY (id);


--
-- Name: ab_user ab_user_email_uq; Type: CONSTRAINT; Schema: public; Owner: airflow
--

ALTER TABLE ONLY public.ab_user
    ADD CONSTRAINT ab_user_email_uq UNIQUE (email);


--
-- Name: ab_user ab_user_pkey; Type: CONSTRAINT; Schema: public; Owner: airflow
--

ALTER TABLE ONLY public.ab_user
    ADD CONSTRAINT ab_user_pkey PRIMARY KEY (id);


--
-- Name: ab_user_role ab_user_role_pkey; Type: CONSTRAINT; Schema: public; Owner: airflow
--

ALTER TABLE ONLY public.ab_user_role
    ADD CONSTRAINT ab_user_role_pkey PRIMARY KEY (id);


--
-- Name: ab_user_role ab_user_role_user_id_role_id_uq; Type: CONSTRAINT; Schema: public; Owner: airflow
--

ALTER TABLE ONLY public.ab_user_role
    ADD CONSTRAINT ab_user_role_user_id_role_id_uq UNIQUE (user_id, role_id);


--
-- Name: ab_user ab_user_username_uq; Type: CONSTRAINT; Schema: public; Owner: airflow
--

ALTER TABLE ONLY public.ab_user
    ADD CONSTRAINT ab_user_username_uq UNIQUE (username);


--
-- Name: ab_view_menu ab_view_menu_name_uq; Type: CONSTRAINT; Schema: public; Owner: airflow
--

ALTER TABLE ONLY public.ab_view_menu
    ADD CONSTRAINT ab_view_menu_name_uq UNIQUE (name);


--
-- Name: ab_view_menu ab_view_menu_pkey; Type: CONSTRAINT; Schema: public; Owner: airflow
--

ALTER TABLE ONLY public.ab_view_menu
    ADD CONSTRAINT ab_view_menu_pkey PRIMARY KEY (id);


--
-- Name: alembic_version alembic_version_pkc; Type: CONSTRAINT; Schema: public; Owner: airflow
--

ALTER TABLE ONLY public.alembic_version
    ADD CONSTRAINT alembic_version_pkc PRIMARY KEY (version_num);


--
-- Name: callback_request callback_request_pkey; Type: CONSTRAINT; Schema: public; Owner: airflow
--

ALTER TABLE ONLY public.callback_request
    ADD CONSTRAINT callback_request_pkey PRIMARY KEY (id);


--
-- Name: celery_taskmeta celery_taskmeta_pkey; Type: CONSTRAINT; Schema: public; Owner: airflow
--

ALTER TABLE ONLY public.celery_taskmeta
    ADD CONSTRAINT celery_taskmeta_pkey PRIMARY KEY (id);


--
-- Name: celery_taskmeta celery_taskmeta_task_id_key; Type: CONSTRAINT; Schema: public; Owner: airflow
--

ALTER TABLE ONLY public.celery_taskmeta
    ADD CONSTRAINT celery_taskmeta_task_id_key UNIQUE (task_id);


--
-- Name: celery_tasksetmeta celery_tasksetmeta_pkey; Type: CONSTRAINT; Schema: public; Owner: airflow
--

ALTER TABLE ONLY public.celery_tasksetmeta
    ADD CONSTRAINT celery_tasksetmeta_pkey PRIMARY KEY (id);


--
-- Name: celery_tasksetmeta celery_tasksetmeta_taskset_id_key; Type: CONSTRAINT; Schema: public; Owner: airflow
--

ALTER TABLE ONLY public.celery_tasksetmeta
    ADD CONSTRAINT celery_tasksetmeta_taskset_id_key UNIQUE (taskset_id);


--
-- Name: connection connection_conn_id_uq; Type: CONSTRAINT; Schema: public; Owner: airflow
--

ALTER TABLE ONLY public.connection
    ADD CONSTRAINT connection_conn_id_uq UNIQUE (conn_id);


--
-- Name: connection connection_pkey; Type: CONSTRAINT; Schema: public; Owner: airflow
--

ALTER TABLE ONLY public.connection
    ADD CONSTRAINT connection_pkey PRIMARY KEY (id);


--
-- Name: dag_code dag_code_pkey; Type: CONSTRAINT; Schema: public; Owner: airflow
--

ALTER TABLE ONLY public.dag_code
    ADD CONSTRAINT dag_code_pkey PRIMARY KEY (fileloc_hash);


--
-- Name: dag_owner_attributes dag_owner_attributes_pkey; Type: CONSTRAINT; Schema: public; Owner: airflow
--

ALTER TABLE ONLY public.dag_owner_attributes
    ADD CONSTRAINT dag_owner_attributes_pkey PRIMARY KEY (dag_id, owner);


--
-- Name: dag_pickle dag_pickle_pkey; Type: CONSTRAINT; Schema: public; Owner: airflow
--

ALTER TABLE ONLY public.dag_pickle
    ADD CONSTRAINT dag_pickle_pkey PRIMARY KEY (id);


--
-- Name: dag dag_pkey; Type: CONSTRAINT; Schema: public; Owner: airflow
--

ALTER TABLE ONLY public.dag
    ADD CONSTRAINT dag_pkey PRIMARY KEY (dag_id);


--
-- Name: dag_priority_parsing_request dag_priority_parsing_request_pkey; Type: CONSTRAINT; Schema: public; Owner: airflow
--

ALTER TABLE ONLY public.dag_priority_parsing_request
    ADD CONSTRAINT dag_priority_parsing_request_pkey PRIMARY KEY (id);


--
-- Name: dag_run dag_run_dag_id_execution_date_key; Type: CONSTRAINT; Schema: public; Owner: airflow
--

ALTER TABLE ONLY public.dag_run
    ADD CONSTRAINT dag_run_dag_id_execution_date_key UNIQUE (dag_id, execution_date);


--
-- Name: dag_run dag_run_dag_id_run_id_key; Type: CONSTRAINT; Schema: public; Owner: airflow
--

ALTER TABLE ONLY public.dag_run
    ADD CONSTRAINT dag_run_dag_id_run_id_key UNIQUE (dag_id, run_id);


--
-- Name: dag_run_note dag_run_note_pkey; Type: CONSTRAINT; Schema: public; Owner: airflow
--

ALTER TABLE ONLY public.dag_run_note
    ADD CONSTRAINT dag_run_note_pkey PRIMARY KEY (dag_run_id);


--
-- Name: dag_run dag_run_pkey; Type: CONSTRAINT; Schema: public; Owner: airflow
--

ALTER TABLE ONLY public.dag_run
    ADD CONSTRAINT dag_run_pkey PRIMARY KEY (id);


--
-- Name: dag_tag dag_tag_pkey; Type: CONSTRAINT; Schema: public; Owner: airflow
--

ALTER TABLE ONLY public.dag_tag
    ADD CONSTRAINT dag_tag_pkey PRIMARY KEY (name, dag_id);


--
-- Name: dag_warning dag_warning_pkey; Type: CONSTRAINT; Schema: public; Owner: airflow
--

ALTER TABLE ONLY public.dag_warning
    ADD CONSTRAINT dag_warning_pkey PRIMARY KEY (dag_id, warning_type);


--
-- Name: dagrun_dataset_event dagrun_dataset_event_pkey; Type: CONSTRAINT; Schema: public; Owner: airflow
--

ALTER TABLE ONLY public.dagrun_dataset_event
    ADD CONSTRAINT dagrun_dataset_event_pkey PRIMARY KEY (dag_run_id, event_id);


--
-- Name: dataset_alias_dataset_event dataset_alias_dataset_event_pkey; Type: CONSTRAINT; Schema: public; Owner: airflow
--

ALTER TABLE ONLY public.dataset_alias_dataset_event
    ADD CONSTRAINT dataset_alias_dataset_event_pkey PRIMARY KEY (alias_id, event_id);


--
-- Name: dataset_alias_dataset dataset_alias_dataset_pkey; Type: CONSTRAINT; Schema: public; Owner: airflow
--

ALTER TABLE ONLY public.dataset_alias_dataset
    ADD CONSTRAINT dataset_alias_dataset_pkey PRIMARY KEY (alias_id, dataset_id);


--
-- Name: dataset_alias dataset_alias_pkey; Type: CONSTRAINT; Schema: public; Owner: airflow
--

ALTER TABLE ONLY public.dataset_alias
    ADD CONSTRAINT dataset_alias_pkey PRIMARY KEY (id);


--
-- Name: dataset_event dataset_event_pkey; Type: CONSTRAINT; Schema: public; Owner: airflow
--

ALTER TABLE ONLY public.dataset_event
    ADD CONSTRAINT dataset_event_pkey PRIMARY KEY (id);


--
-- Name: dataset dataset_pkey; Type: CONSTRAINT; Schema: public; Owner: airflow
--

ALTER TABLE ONLY public.dataset
    ADD CONSTRAINT dataset_pkey PRIMARY KEY (id);


--
-- Name: dataset_dag_run_queue datasetdagrunqueue_pkey; Type: CONSTRAINT; Schema: public; Owner: airflow
--

ALTER TABLE ONLY public.dataset_dag_run_queue
    ADD CONSTRAINT datasetdagrunqueue_pkey PRIMARY KEY (dataset_id, target_dag_id);


--
-- Name: dag_schedule_dataset_alias_reference dsdar_pkey; Type: CONSTRAINT; Schema: public; Owner: airflow
--

ALTER TABLE ONLY public.dag_schedule_dataset_alias_reference
    ADD CONSTRAINT dsdar_pkey PRIMARY KEY (alias_id, dag_id);


--
-- Name: dag_schedule_dataset_reference dsdr_pkey; Type: CONSTRAINT; Schema: public; Owner: airflow
--

ALTER TABLE ONLY public.dag_schedule_dataset_reference
    ADD CONSTRAINT dsdr_pkey PRIMARY KEY (dataset_id, dag_id);


--
-- Name: import_error import_error_pkey; Type: CONSTRAINT; Schema: public; Owner: airflow
--

ALTER TABLE ONLY public.import_error
    ADD CONSTRAINT import_error_pkey PRIMARY KEY (id);


--
-- Name: job job_pkey; Type: CONSTRAINT; Schema: public; Owner: airflow
--

ALTER TABLE ONLY public.job
    ADD CONSTRAINT job_pkey PRIMARY KEY (id);


--
-- Name: log log_pkey; Type: CONSTRAINT; Schema: public; Owner: airflow
--

ALTER TABLE ONLY public.log
    ADD CONSTRAINT log_pkey PRIMARY KEY (id);


--
-- Name: log_template log_template_pkey; Type: CONSTRAINT; Schema: public; Owner: airflow
--

ALTER TABLE ONLY public.log_template
    ADD CONSTRAINT log_template_pkey PRIMARY KEY (id);


--
-- Name: rendered_task_instance_fields rendered_task_instance_fields_pkey; Type: CONSTRAINT; Schema: public; Owner: airflow
--

ALTER TABLE ONLY public.rendered_task_instance_fields
    ADD CONSTRAINT rendered_task_instance_fields_pkey PRIMARY KEY (dag_id, task_id, run_id, map_index);


--
-- Name: serialized_dag serialized_dag_pkey; Type: CONSTRAINT; Schema: public; Owner: airflow
--

ALTER TABLE ONLY public.serialized_dag
    ADD CONSTRAINT serialized_dag_pkey PRIMARY KEY (dag_id);


--
-- Name: session session_pkey; Type: CONSTRAINT; Schema: public; Owner: airflow
--

ALTER TABLE ONLY public.session
    ADD CONSTRAINT session_pkey PRIMARY KEY (id);


--
-- Name: session session_session_id_key; Type: CONSTRAINT; Schema: public; Owner: airflow
--

ALTER TABLE ONLY public.session
    ADD CONSTRAINT session_session_id_key UNIQUE (session_id);


--
-- Name: sla_miss sla_miss_pkey; Type: CONSTRAINT; Schema: public; Owner: airflow
--

ALTER TABLE ONLY public.sla_miss
    ADD CONSTRAINT sla_miss_pkey PRIMARY KEY (task_id, dag_id, execution_date);


--
-- Name: slot_pool slot_pool_pkey; Type: CONSTRAINT; Schema: public; Owner: airflow
--

ALTER TABLE ONLY public.slot_pool
    ADD CONSTRAINT slot_pool_pkey PRIMARY KEY (id);


--
-- Name: slot_pool slot_pool_pool_uq; Type: CONSTRAINT; Schema: public; Owner: airflow
--

ALTER TABLE ONLY public.slot_pool
    ADD CONSTRAINT slot_pool_pool_uq UNIQUE (pool);


--
-- Name: task_fail task_fail_pkey; Type: CONSTRAINT; Schema: public; Owner: airflow
--

ALTER TABLE ONLY public.task_fail
    ADD CONSTRAINT task_fail_pkey PRIMARY KEY (id);


--
-- Name: task_instance_history task_instance_history_dtrt_uq; Type: CONSTRAINT; Schema: public; Owner: airflow
--

ALTER TABLE ONLY public.task_instance_history
    ADD CONSTRAINT task_instance_history_dtrt_uq UNIQUE (dag_id, task_id, run_id, map_index, try_number);


--
-- Name: task_instance_history task_instance_history_pkey; Type: CONSTRAINT; Schema: public; Owner: airflow
--

ALTER TABLE ONLY public.task_instance_history
    ADD CONSTRAINT task_instance_history_pkey PRIMARY KEY (id);


--
-- Name: task_instance_note task_instance_note_pkey; Type: CONSTRAINT; Schema: public; Owner: airflow
--

ALTER TABLE ONLY public.task_instance_note
    ADD CONSTRAINT task_instance_note_pkey PRIMARY KEY (task_id, dag_id, run_id, map_index);


--
-- Name: task_instance task_instance_pkey; Type: CONSTRAINT; Schema: public; Owner: airflow
--

ALTER TABLE ONLY public.task_instance
    ADD CONSTRAINT task_instance_pkey PRIMARY KEY (dag_id, task_id, run_id, map_index);


--
-- Name: task_map task_map_pkey; Type: CONSTRAINT; Schema: public; Owner: airflow
--

ALTER TABLE ONLY public.task_map
    ADD CONSTRAINT task_map_pkey PRIMARY KEY (dag_id, task_id, run_id, map_index);


--
-- Name: task_reschedule task_reschedule_pkey; Type: CONSTRAINT; Schema: public; Owner: airflow
--

ALTER TABLE ONLY public.task_reschedule
    ADD CONSTRAINT task_reschedule_pkey PRIMARY KEY (id);


--
-- Name: task_outlet_dataset_reference todr_pkey; Type: CONSTRAINT; Schema: public; Owner: airflow
--

ALTER TABLE ONLY public.task_outlet_dataset_reference
    ADD CONSTRAINT todr_pkey PRIMARY KEY (dataset_id, dag_id, task_id);


--
-- Name: trigger trigger_pkey; Type: CONSTRAINT; Schema: public; Owner: airflow
--

ALTER TABLE ONLY public.trigger
    ADD CONSTRAINT trigger_pkey PRIMARY KEY (id);


--
-- Name: variable variable_key_uq; Type: CONSTRAINT; Schema: public; Owner: airflow
--

ALTER TABLE ONLY public.variable
    ADD CONSTRAINT variable_key_uq UNIQUE (key);


--
-- Name: variable variable_pkey; Type: CONSTRAINT; Schema: public; Owner: airflow
--

ALTER TABLE ONLY public.variable
    ADD CONSTRAINT variable_pkey PRIMARY KEY (id);


--
-- Name: xcom xcom_pkey; Type: CONSTRAINT; Schema: public; Owner: airflow
--

ALTER TABLE ONLY public.xcom
    ADD CONSTRAINT xcom_pkey PRIMARY KEY (dag_run_id, task_id, map_index, key);


--
-- Name: dag_id_state; Type: INDEX; Schema: public; Owner: airflow
--

CREATE INDEX dag_id_state ON public.dag_run USING btree (dag_id, state);


--
-- Name: idx_ab_register_user_username; Type: INDEX; Schema: public; Owner: airflow
--

CREATE UNIQUE INDEX idx_ab_register_user_username ON public.ab_register_user USING btree (lower((username)::text));


--
-- Name: idx_ab_user_username; Type: INDEX; Schema: public; Owner: airflow
--

CREATE UNIQUE INDEX idx_ab_user_username ON public.ab_user USING btree (lower((username)::text));


--
-- Name: idx_dag_run_dag_id; Type: INDEX; Schema: public; Owner: airflow
--

CREATE INDEX idx_dag_run_dag_id ON public.dag_run USING btree (dag_id);


--
-- Name: idx_dag_run_queued_dags; Type: INDEX; Schema: public; Owner: airflow
--

CREATE INDEX idx_dag_run_queued_dags ON public.dag_run USING btree (state, dag_id) WHERE ((state)::text = 'queued'::text);


--
-- Name: idx_dag_run_running_dags; Type: INDEX; Schema: public; Owner: airflow
--

CREATE INDEX idx_dag_run_running_dags ON public.dag_run USING btree (state, dag_id) WHERE ((state)::text = 'running'::text);


--
-- Name: idx_dag_schedule_dataset_alias_reference_dag_id; Type: INDEX; Schema: public; Owner: airflow
--

CREATE INDEX idx_dag_schedule_dataset_alias_reference_dag_id ON public.dag_schedule_dataset_alias_reference USING btree (dag_id);


--
-- Name: idx_dag_schedule_dataset_reference_dag_id; Type: INDEX; Schema: public; Owner: airflow
--

CREATE INDEX idx_dag_schedule_dataset_reference_dag_id ON public.dag_schedule_dataset_reference USING btree (dag_id);


--
-- Name: idx_dag_tag_dag_id; Type: INDEX; Schema: public; Owner: airflow
--

CREATE INDEX idx_dag_tag_dag_id ON public.dag_tag USING btree (dag_id);


--
-- Name: idx_dag_warning_dag_id; Type: INDEX; Schema: public; Owner: airflow
--

CREATE INDEX idx_dag_warning_dag_id ON public.dag_warning USING btree (dag_id);


--
-- Name: idx_dagrun_dataset_events_dag_run_id; Type: INDEX; Schema: public; Owner: airflow
--

CREATE INDEX idx_dagrun_dataset_events_dag_run_id ON public.dagrun_dataset_event USING btree (dag_run_id);


--
-- Name: idx_dagrun_dataset_events_event_id; Type: INDEX; Schema: public; Owner: airflow
--

CREATE INDEX idx_dagrun_dataset_events_event_id ON public.dagrun_dataset_event USING btree (event_id);


--
-- Name: idx_dataset_alias_dataset_alias_dataset_id; Type: INDEX; Schema: public; Owner: airflow
--

CREATE INDEX idx_dataset_alias_dataset_alias_dataset_id ON public.dataset_alias_dataset USING btree (dataset_id);


--
-- Name: idx_dataset_alias_dataset_alias_id; Type: INDEX; Schema: public; Owner: airflow
--

CREATE INDEX idx_dataset_alias_dataset_alias_id ON public.dataset_alias_dataset USING btree (alias_id);


--
-- Name: idx_dataset_alias_dataset_event_alias_id; Type: INDEX; Schema: public; Owner: airflow
--

CREATE INDEX idx_dataset_alias_dataset_event_alias_id ON public.dataset_alias_dataset_event USING btree (alias_id);


--
-- Name: idx_dataset_alias_dataset_event_event_id; Type: INDEX; Schema: public; Owner: airflow
--

CREATE INDEX idx_dataset_alias_dataset_event_event_id ON public.dataset_alias_dataset_event USING btree (event_id);


--
-- Name: idx_dataset_dag_run_queue_target_dag_id; Type: INDEX; Schema: public; Owner: airflow
--

CREATE INDEX idx_dataset_dag_run_queue_target_dag_id ON public.dataset_dag_run_queue USING btree (target_dag_id);


--
-- Name: idx_dataset_id_timestamp; Type: INDEX; Schema: public; Owner: airflow
--

CREATE INDEX idx_dataset_id_timestamp ON public.dataset_event USING btree (dataset_id, "timestamp");


--
-- Name: idx_fileloc_hash; Type: INDEX; Schema: public; Owner: airflow
--

CREATE INDEX idx_fileloc_hash ON public.serialized_dag USING btree (fileloc_hash);


--
-- Name: idx_job_dag_id; Type: INDEX; Schema: public; Owner: airflow
--

CREATE INDEX idx_job_dag_id ON public.job USING btree (dag_id);


--
-- Name: idx_job_state_heartbeat; Type: INDEX; Schema: public; Owner: airflow
--

CREATE INDEX idx_job_state_heartbeat ON public.job USING btree (state, latest_heartbeat);


--
-- Name: idx_log_dag; Type: INDEX; Schema: public; Owner: airflow
--

CREATE INDEX idx_log_dag ON public.log USING btree (dag_id);


--
-- Name: idx_log_dttm; Type: INDEX; Schema: public; Owner: airflow
--

CREATE INDEX idx_log_dttm ON public.log USING btree (dttm);


--
-- Name: idx_log_event; Type: INDEX; Schema: public; Owner: airflow
--

CREATE INDEX idx_log_event ON public.log USING btree (event);


--
-- Name: idx_log_task_instance; Type: INDEX; Schema: public; Owner: airflow
--

CREATE INDEX idx_log_task_instance ON public.log USING btree (dag_id, task_id, run_id, map_index, try_number);


--
-- Name: idx_name_unique; Type: INDEX; Schema: public; Owner: airflow
--

CREATE UNIQUE INDEX idx_name_unique ON public.dataset_alias USING btree (name);


--
-- Name: idx_next_dagrun_create_after; Type: INDEX; Schema: public; Owner: airflow
--

CREATE INDEX idx_next_dagrun_create_after ON public.dag USING btree (next_dagrun_create_after);


--
-- Name: idx_root_dag_id; Type: INDEX; Schema: public; Owner: airflow
--

CREATE INDEX idx_root_dag_id ON public.dag USING btree (root_dag_id);


--
-- Name: idx_task_fail_task_instance; Type: INDEX; Schema: public; Owner: airflow
--

CREATE INDEX idx_task_fail_task_instance ON public.task_fail USING btree (dag_id, task_id, run_id, map_index);


--
-- Name: idx_task_outlet_dataset_reference_dag_id; Type: INDEX; Schema: public; Owner: airflow
--

CREATE INDEX idx_task_outlet_dataset_reference_dag_id ON public.task_outlet_dataset_reference USING btree (dag_id);


--
-- Name: idx_task_reschedule_dag_run; Type: INDEX; Schema: public; Owner: airflow
--

CREATE INDEX idx_task_reschedule_dag_run ON public.task_reschedule USING btree (dag_id, run_id);


--
-- Name: idx_task_reschedule_dag_task_run; Type: INDEX; Schema: public; Owner: airflow
--

CREATE INDEX idx_task_reschedule_dag_task_run ON public.task_reschedule USING btree (dag_id, task_id, run_id, map_index);


--
-- Name: idx_uri_unique; Type: INDEX; Schema: public; Owner: airflow
--

CREATE UNIQUE INDEX idx_uri_unique ON public.dataset USING btree (uri);


--
-- Name: idx_xcom_key; Type: INDEX; Schema: public; Owner: airflow
--

CREATE INDEX idx_xcom_key ON public.xcom USING btree (key);


--
-- Name: idx_xcom_task_instance; Type: INDEX; Schema: public; Owner: airflow
--

CREATE INDEX idx_xcom_task_instance ON public.xcom USING btree (dag_id, task_id, run_id, map_index);


--
-- Name: job_type_heart; Type: INDEX; Schema: public; Owner: airflow
--

CREATE INDEX job_type_heart ON public.job USING btree (job_type, latest_heartbeat);


--
-- Name: sm_dag; Type: INDEX; Schema: public; Owner: airflow
--

CREATE INDEX sm_dag ON public.sla_miss USING btree (dag_id);


--
-- Name: ti_dag_run; Type: INDEX; Schema: public; Owner: airflow
--

CREATE INDEX ti_dag_run ON public.task_instance USING btree (dag_id, run_id);


--
-- Name: ti_dag_state; Type: INDEX; Schema: public; Owner: airflow
--

CREATE INDEX ti_dag_state ON public.task_instance USING btree (dag_id, state);


--
-- Name: ti_job_id; Type: INDEX; Schema: public; Owner: airflow
--

CREATE INDEX ti_job_id ON public.task_instance USING btree (job_id);


--
-- Name: ti_pool; Type: INDEX; Schema: public; Owner: airflow
--

CREATE INDEX ti_pool ON public.task_instance USING btree (pool, state, priority_weight);


--
-- Name: ti_state; Type: INDEX; Schema: public; Owner: airflow
--

CREATE INDEX ti_state ON public.task_instance USING btree (state);


--
-- Name: ti_state_lkp; Type: INDEX; Schema: public; Owner: airflow
--

CREATE INDEX ti_state_lkp ON public.task_instance USING btree (dag_id, task_id, run_id, state);


--
-- Name: ti_trigger_id; Type: INDEX; Schema: public; Owner: airflow
--

CREATE INDEX ti_trigger_id ON public.task_instance USING btree (trigger_id);


--
-- Name: ab_permission_view ab_permission_view_permission_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: airflow
--

ALTER TABLE ONLY public.ab_permission_view
    ADD CONSTRAINT ab_permission_view_permission_id_fkey FOREIGN KEY (permission_id) REFERENCES public.ab_permission(id);


--
-- Name: ab_permission_view_role ab_permission_view_role_permission_view_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: airflow
--

ALTER TABLE ONLY public.ab_permission_view_role
    ADD CONSTRAINT ab_permission_view_role_permission_view_id_fkey FOREIGN KEY (permission_view_id) REFERENCES public.ab_permission_view(id);


--
-- Name: ab_permission_view_role ab_permission_view_role_role_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: airflow
--

ALTER TABLE ONLY public.ab_permission_view_role
    ADD CONSTRAINT ab_permission_view_role_role_id_fkey FOREIGN KEY (role_id) REFERENCES public.ab_role(id);


--
-- Name: ab_permission_view ab_permission_view_view_menu_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: airflow
--

ALTER TABLE ONLY public.ab_permission_view
    ADD CONSTRAINT ab_permission_view_view_menu_id_fkey FOREIGN KEY (view_menu_id) REFERENCES public.ab_view_menu(id);


--
-- Name: ab_user ab_user_changed_by_fk_fkey; Type: FK CONSTRAINT; Schema: public; Owner: airflow
--

ALTER TABLE ONLY public.ab_user
    ADD CONSTRAINT ab_user_changed_by_fk_fkey FOREIGN KEY (changed_by_fk) REFERENCES public.ab_user(id);


--
-- Name: ab_user ab_user_created_by_fk_fkey; Type: FK CONSTRAINT; Schema: public; Owner: airflow
--

ALTER TABLE ONLY public.ab_user
    ADD CONSTRAINT ab_user_created_by_fk_fkey FOREIGN KEY (created_by_fk) REFERENCES public.ab_user(id);


--
-- Name: ab_user_role ab_user_role_role_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: airflow
--

ALTER TABLE ONLY public.ab_user_role
    ADD CONSTRAINT ab_user_role_role_id_fkey FOREIGN KEY (role_id) REFERENCES public.ab_role(id);


--
-- Name: ab_user_role ab_user_role_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: airflow
--

ALTER TABLE ONLY public.ab_user_role
    ADD CONSTRAINT ab_user_role_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.ab_user(id);


--
-- Name: dag_owner_attributes dag.dag_id; Type: FK CONSTRAINT; Schema: public; Owner: airflow
--

ALTER TABLE ONLY public.dag_owner_attributes
    ADD CONSTRAINT "dag.dag_id" FOREIGN KEY (dag_id) REFERENCES public.dag(dag_id) ON DELETE CASCADE;


--
-- Name: dag_run_note dag_run_note_dr_fkey; Type: FK CONSTRAINT; Schema: public; Owner: airflow
--

ALTER TABLE ONLY public.dag_run_note
    ADD CONSTRAINT dag_run_note_dr_fkey FOREIGN KEY (dag_run_id) REFERENCES public.dag_run(id) ON DELETE CASCADE;


--
-- Name: dag_run_note dag_run_note_user_fkey; Type: FK CONSTRAINT; Schema: public; Owner: airflow
--

ALTER TABLE ONLY public.dag_run_note
    ADD CONSTRAINT dag_run_note_user_fkey FOREIGN KEY (user_id) REFERENCES public.ab_user(id);


--
-- Name: dag_tag dag_tag_dag_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: airflow
--

ALTER TABLE ONLY public.dag_tag
    ADD CONSTRAINT dag_tag_dag_id_fkey FOREIGN KEY (dag_id) REFERENCES public.dag(dag_id) ON DELETE CASCADE;


--
-- Name: dagrun_dataset_event dagrun_dataset_event_dag_run_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: airflow
--

ALTER TABLE ONLY public.dagrun_dataset_event
    ADD CONSTRAINT dagrun_dataset_event_dag_run_id_fkey FOREIGN KEY (dag_run_id) REFERENCES public.dag_run(id) ON DELETE CASCADE;


--
-- Name: dagrun_dataset_event dagrun_dataset_event_event_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: airflow
--

ALTER TABLE ONLY public.dagrun_dataset_event
    ADD CONSTRAINT dagrun_dataset_event_event_id_fkey FOREIGN KEY (event_id) REFERENCES public.dataset_event(id) ON DELETE CASCADE;


--
-- Name: dataset_alias_dataset dataset_alias_dataset_alias_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: airflow
--

ALTER TABLE ONLY public.dataset_alias_dataset
    ADD CONSTRAINT dataset_alias_dataset_alias_id_fkey FOREIGN KEY (alias_id) REFERENCES public.dataset_alias(id) ON DELETE CASCADE;


--
-- Name: dataset_alias_dataset dataset_alias_dataset_dataset_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: airflow
--

ALTER TABLE ONLY public.dataset_alias_dataset
    ADD CONSTRAINT dataset_alias_dataset_dataset_id_fkey FOREIGN KEY (dataset_id) REFERENCES public.dataset(id) ON DELETE CASCADE;


--
-- Name: dataset_alias_dataset_event dataset_alias_dataset_event_alias_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: airflow
--

ALTER TABLE ONLY public.dataset_alias_dataset_event
    ADD CONSTRAINT dataset_alias_dataset_event_alias_id_fkey FOREIGN KEY (alias_id) REFERENCES public.dataset_alias(id) ON DELETE CASCADE;


--
-- Name: dataset_alias_dataset_event dataset_alias_dataset_event_event_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: airflow
--

ALTER TABLE ONLY public.dataset_alias_dataset_event
    ADD CONSTRAINT dataset_alias_dataset_event_event_id_fkey FOREIGN KEY (event_id) REFERENCES public.dataset_event(id) ON DELETE CASCADE;


--
-- Name: dag_warning dcw_dag_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: airflow
--

ALTER TABLE ONLY public.dag_warning
    ADD CONSTRAINT dcw_dag_id_fkey FOREIGN KEY (dag_id) REFERENCES public.dag(dag_id) ON DELETE CASCADE;


--
-- Name: dataset_dag_run_queue ddrq_dag_fkey; Type: FK CONSTRAINT; Schema: public; Owner: airflow
--

ALTER TABLE ONLY public.dataset_dag_run_queue
    ADD CONSTRAINT ddrq_dag_fkey FOREIGN KEY (target_dag_id) REFERENCES public.dag(dag_id) ON DELETE CASCADE;


--
-- Name: dataset_dag_run_queue ddrq_dataset_fkey; Type: FK CONSTRAINT; Schema: public; Owner: airflow
--

ALTER TABLE ONLY public.dataset_dag_run_queue
    ADD CONSTRAINT ddrq_dataset_fkey FOREIGN KEY (dataset_id) REFERENCES public.dataset(id) ON DELETE CASCADE;


--
-- Name: dataset_alias_dataset ds_dsa_alias_id; Type: FK CONSTRAINT; Schema: public; Owner: airflow
--

ALTER TABLE ONLY public.dataset_alias_dataset
    ADD CONSTRAINT ds_dsa_alias_id FOREIGN KEY (alias_id) REFERENCES public.dataset_alias(id) ON DELETE CASCADE;


--
-- Name: dataset_alias_dataset ds_dsa_dataset_id; Type: FK CONSTRAINT; Schema: public; Owner: airflow
--

ALTER TABLE ONLY public.dataset_alias_dataset
    ADD CONSTRAINT ds_dsa_dataset_id FOREIGN KEY (dataset_id) REFERENCES public.dataset(id) ON DELETE CASCADE;


--
-- Name: dag_schedule_dataset_alias_reference dsdar_dag_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: airflow
--

ALTER TABLE ONLY public.dag_schedule_dataset_alias_reference
    ADD CONSTRAINT dsdar_dag_id_fkey FOREIGN KEY (dag_id) REFERENCES public.dag(dag_id) ON DELETE CASCADE;


--
-- Name: dag_schedule_dataset_alias_reference dsdar_dataset_alias_fkey; Type: FK CONSTRAINT; Schema: public; Owner: airflow
--

ALTER TABLE ONLY public.dag_schedule_dataset_alias_reference
    ADD CONSTRAINT dsdar_dataset_alias_fkey FOREIGN KEY (alias_id) REFERENCES public.dataset_alias(id) ON DELETE CASCADE;


--
-- Name: dag_schedule_dataset_reference dsdr_dag_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: airflow
--

ALTER TABLE ONLY public.dag_schedule_dataset_reference
    ADD CONSTRAINT dsdr_dag_id_fkey FOREIGN KEY (dag_id) REFERENCES public.dag(dag_id) ON DELETE CASCADE;


--
-- Name: dag_schedule_dataset_reference dsdr_dataset_fkey; Type: FK CONSTRAINT; Schema: public; Owner: airflow
--

ALTER TABLE ONLY public.dag_schedule_dataset_reference
    ADD CONSTRAINT dsdr_dataset_fkey FOREIGN KEY (dataset_id) REFERENCES public.dataset(id) ON DELETE CASCADE;


--
-- Name: dataset_alias_dataset_event dss_de_alias_id; Type: FK CONSTRAINT; Schema: public; Owner: airflow
--

ALTER TABLE ONLY public.dataset_alias_dataset_event
    ADD CONSTRAINT dss_de_alias_id FOREIGN KEY (alias_id) REFERENCES public.dataset_alias(id) ON DELETE CASCADE;


--
-- Name: dataset_alias_dataset_event dss_de_event_id; Type: FK CONSTRAINT; Schema: public; Owner: airflow
--

ALTER TABLE ONLY public.dataset_alias_dataset_event
    ADD CONSTRAINT dss_de_event_id FOREIGN KEY (event_id) REFERENCES public.dataset_event(id) ON DELETE CASCADE;


--
-- Name: rendered_task_instance_fields rtif_ti_fkey; Type: FK CONSTRAINT; Schema: public; Owner: airflow
--

ALTER TABLE ONLY public.rendered_task_instance_fields
    ADD CONSTRAINT rtif_ti_fkey FOREIGN KEY (dag_id, task_id, run_id, map_index) REFERENCES public.task_instance(dag_id, task_id, run_id, map_index) ON DELETE CASCADE;


--
-- Name: task_fail task_fail_ti_fkey; Type: FK CONSTRAINT; Schema: public; Owner: airflow
--

ALTER TABLE ONLY public.task_fail
    ADD CONSTRAINT task_fail_ti_fkey FOREIGN KEY (dag_id, task_id, run_id, map_index) REFERENCES public.task_instance(dag_id, task_id, run_id, map_index) ON DELETE CASCADE;


--
-- Name: task_instance task_instance_dag_run_fkey; Type: FK CONSTRAINT; Schema: public; Owner: airflow
--

ALTER TABLE ONLY public.task_instance
    ADD CONSTRAINT task_instance_dag_run_fkey FOREIGN KEY (dag_id, run_id) REFERENCES public.dag_run(dag_id, run_id) ON DELETE CASCADE;


--
-- Name: task_instance_history task_instance_history_ti_fkey; Type: FK CONSTRAINT; Schema: public; Owner: airflow
--

ALTER TABLE ONLY public.task_instance_history
    ADD CONSTRAINT task_instance_history_ti_fkey FOREIGN KEY (dag_id, task_id, run_id, map_index) REFERENCES public.task_instance(dag_id, task_id, run_id, map_index) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: dag_run task_instance_log_template_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: airflow
--

ALTER TABLE ONLY public.dag_run
    ADD CONSTRAINT task_instance_log_template_id_fkey FOREIGN KEY (log_template_id) REFERENCES public.log_template(id);


--
-- Name: task_instance_note task_instance_note_ti_fkey; Type: FK CONSTRAINT; Schema: public; Owner: airflow
--

ALTER TABLE ONLY public.task_instance_note
    ADD CONSTRAINT task_instance_note_ti_fkey FOREIGN KEY (dag_id, task_id, run_id, map_index) REFERENCES public.task_instance(dag_id, task_id, run_id, map_index) ON DELETE CASCADE;


--
-- Name: task_instance_note task_instance_note_user_fkey; Type: FK CONSTRAINT; Schema: public; Owner: airflow
--

ALTER TABLE ONLY public.task_instance_note
    ADD CONSTRAINT task_instance_note_user_fkey FOREIGN KEY (user_id) REFERENCES public.ab_user(id);


--
-- Name: task_instance task_instance_trigger_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: airflow
--

ALTER TABLE ONLY public.task_instance
    ADD CONSTRAINT task_instance_trigger_id_fkey FOREIGN KEY (trigger_id) REFERENCES public.trigger(id) ON DELETE CASCADE;


--
-- Name: task_map task_map_task_instance_fkey; Type: FK CONSTRAINT; Schema: public; Owner: airflow
--

ALTER TABLE ONLY public.task_map
    ADD CONSTRAINT task_map_task_instance_fkey FOREIGN KEY (dag_id, task_id, run_id, map_index) REFERENCES public.task_instance(dag_id, task_id, run_id, map_index) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: task_reschedule task_reschedule_dr_fkey; Type: FK CONSTRAINT; Schema: public; Owner: airflow
--

ALTER TABLE ONLY public.task_reschedule
    ADD CONSTRAINT task_reschedule_dr_fkey FOREIGN KEY (dag_id, run_id) REFERENCES public.dag_run(dag_id, run_id) ON DELETE CASCADE;


--
-- Name: task_reschedule task_reschedule_ti_fkey; Type: FK CONSTRAINT; Schema: public; Owner: airflow
--

ALTER TABLE ONLY public.task_reschedule
    ADD CONSTRAINT task_reschedule_ti_fkey FOREIGN KEY (dag_id, task_id, run_id, map_index) REFERENCES public.task_instance(dag_id, task_id, run_id, map_index) ON DELETE CASCADE;


--
-- Name: task_outlet_dataset_reference todr_dag_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: airflow
--

ALTER TABLE ONLY public.task_outlet_dataset_reference
    ADD CONSTRAINT todr_dag_id_fkey FOREIGN KEY (dag_id) REFERENCES public.dag(dag_id) ON DELETE CASCADE;


--
-- Name: task_outlet_dataset_reference todr_dataset_fkey; Type: FK CONSTRAINT; Schema: public; Owner: airflow
--

ALTER TABLE ONLY public.task_outlet_dataset_reference
    ADD CONSTRAINT todr_dataset_fkey FOREIGN KEY (dataset_id) REFERENCES public.dataset(id) ON DELETE CASCADE;


--
-- Name: xcom xcom_task_instance_fkey; Type: FK CONSTRAINT; Schema: public; Owner: airflow
--

ALTER TABLE ONLY public.xcom
    ADD CONSTRAINT xcom_task_instance_fkey FOREIGN KEY (dag_id, task_id, run_id, map_index) REFERENCES public.task_instance(dag_id, task_id, run_id, map_index) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

\unrestrict 8UhL1x1MUjgOmXePOGB9ChxbypmmzFdeXYpgtlS9bA9hdySvX44HZHcNczFciaV

