--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-0ubuntu0.20.04.1)

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
-- Name: auth_group; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO admin;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO admin;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO admin;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO admin;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO admin;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO admin;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO admin;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO admin;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO admin;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO admin;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO admin;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO admin;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO admin;

--
-- Name: store_buyer; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.store_buyer (
    id integer NOT NULL,
    name character varying(120) NOT NULL,
    address character varying(220) NOT NULL,
    created_date date NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.store_buyer OWNER TO admin;

--
-- Name: store_buyer_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.store_buyer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.store_buyer_id_seq OWNER TO admin;

--
-- Name: store_buyer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.store_buyer_id_seq OWNED BY public.store_buyer.id;


--
-- Name: store_delivery; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.store_delivery (
    id integer NOT NULL,
    courier_name character varying(120) NOT NULL,
    created_date date NOT NULL,
    order_id integer NOT NULL
);


ALTER TABLE public.store_delivery OWNER TO admin;

--
-- Name: store_delivery_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.store_delivery_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.store_delivery_id_seq OWNER TO admin;

--
-- Name: store_delivery_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.store_delivery_id_seq OWNED BY public.store_delivery.id;


--
-- Name: store_drop; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.store_drop (
    id integer NOT NULL,
    name character varying(120) NOT NULL,
    created_date date NOT NULL
);


ALTER TABLE public.store_drop OWNER TO admin;

--
-- Name: store_drop_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.store_drop_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.store_drop_id_seq OWNER TO admin;

--
-- Name: store_drop_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.store_drop_id_seq OWNED BY public.store_drop.id;


--
-- Name: store_order; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.store_order (
    id integer NOT NULL,
    design character varying(50) NOT NULL,
    color character varying(50) NOT NULL,
    status character varying(10) NOT NULL,
    created_date date NOT NULL,
    buyer_id integer,
    drop_id integer,
    product_id integer NOT NULL,
    season_id integer,
    supplier_id integer NOT NULL
);


ALTER TABLE public.store_order OWNER TO admin;

--
-- Name: store_order_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.store_order_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.store_order_id_seq OWNER TO admin;

--
-- Name: store_order_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.store_order_id_seq OWNED BY public.store_order.id;


--
-- Name: store_product; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.store_product (
    id integer NOT NULL,
    name character varying(120) NOT NULL,
    sortno integer NOT NULL,
    created_date date NOT NULL,
    CONSTRAINT store_product_sortno_check CHECK ((sortno >= 0))
);


ALTER TABLE public.store_product OWNER TO admin;

--
-- Name: store_product_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.store_product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.store_product_id_seq OWNER TO admin;

--
-- Name: store_product_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.store_product_id_seq OWNED BY public.store_product.id;


--
-- Name: store_season; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.store_season (
    id integer NOT NULL,
    name character varying(120) NOT NULL,
    description character varying(220) NOT NULL,
    created_date date NOT NULL
);


ALTER TABLE public.store_season OWNER TO admin;

--
-- Name: store_season_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.store_season_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.store_season_id_seq OWNER TO admin;

--
-- Name: store_season_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.store_season_id_seq OWNED BY public.store_season.id;


--
-- Name: store_supplier; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.store_supplier (
    id integer NOT NULL,
    name character varying(120) NOT NULL,
    address character varying(220) NOT NULL,
    created_date date NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.store_supplier OWNER TO admin;

--
-- Name: store_supplier_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.store_supplier_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.store_supplier_id_seq OWNER TO admin;

--
-- Name: store_supplier_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.store_supplier_id_seq OWNED BY public.store_supplier.id;


--
-- Name: users_user; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.users_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL,
    is_buyer boolean NOT NULL,
    is_supplier boolean NOT NULL,
    is_admin boolean NOT NULL
);


ALTER TABLE public.users_user OWNER TO admin;

--
-- Name: users_user_groups; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.users_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.users_user_groups OWNER TO admin;

--
-- Name: users_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.users_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_groups_id_seq OWNER TO admin;

--
-- Name: users_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.users_user_groups_id_seq OWNED BY public.users_user_groups.id;


--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO admin;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users_user.id;


--
-- Name: users_user_user_permissions; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.users_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.users_user_user_permissions OWNER TO admin;

--
-- Name: users_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.users_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_user_permissions_id_seq OWNER TO admin;

--
-- Name: users_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.users_user_user_permissions_id_seq OWNED BY public.users_user_user_permissions.id;


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: store_buyer id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.store_buyer ALTER COLUMN id SET DEFAULT nextval('public.store_buyer_id_seq'::regclass);


--
-- Name: store_delivery id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.store_delivery ALTER COLUMN id SET DEFAULT nextval('public.store_delivery_id_seq'::regclass);


--
-- Name: store_drop id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.store_drop ALTER COLUMN id SET DEFAULT nextval('public.store_drop_id_seq'::regclass);


--
-- Name: store_order id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.store_order ALTER COLUMN id SET DEFAULT nextval('public.store_order_id_seq'::regclass);


--
-- Name: store_product id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.store_product ALTER COLUMN id SET DEFAULT nextval('public.store_product_id_seq'::regclass);


--
-- Name: store_season id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.store_season ALTER COLUMN id SET DEFAULT nextval('public.store_season_id_seq'::regclass);


--
-- Name: store_supplier id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.store_supplier ALTER COLUMN id SET DEFAULT nextval('public.store_supplier_id_seq'::regclass);


--
-- Name: users_user id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.users_user ALTER COLUMN id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Name: users_user_groups id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.users_user_groups ALTER COLUMN id SET DEFAULT nextval('public.users_user_groups_id_seq'::regclass);


--
-- Name: users_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.users_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.users_user_user_permissions_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add content type	4	add_contenttype
14	Can change content type	4	change_contenttype
15	Can delete content type	4	delete_contenttype
16	Can view content type	4	view_contenttype
17	Can add session	5	add_session
18	Can change session	5	change_session
19	Can delete session	5	delete_session
20	Can view session	5	view_session
21	Can add supplier	6	add_supplier
22	Can change supplier	6	change_supplier
23	Can delete supplier	6	delete_supplier
24	Can view supplier	6	view_supplier
25	Can add buyer	7	add_buyer
26	Can change buyer	7	change_buyer
27	Can delete buyer	7	delete_buyer
28	Can view buyer	7	view_buyer
29	Can add drop	8	add_drop
30	Can change drop	8	change_drop
31	Can delete drop	8	delete_drop
32	Can view drop	8	view_drop
33	Can add product	9	add_product
34	Can change product	9	change_product
35	Can delete product	9	delete_product
36	Can view product	9	view_product
37	Can add season	10	add_season
38	Can change season	10	change_season
39	Can delete season	10	delete_season
40	Can view season	10	view_season
41	Can add order	11	add_order
42	Can change order	11	change_order
43	Can delete order	11	delete_order
44	Can view order	11	view_order
45	Can add delivery	12	add_delivery
46	Can change delivery	12	change_delivery
47	Can delete delivery	12	delete_delivery
48	Can view delivery	12	view_delivery
49	Can add user	13	add_user
50	Can change user	13	change_user
51	Can delete user	13	delete_user
52	Can view user	13	view_user
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	contenttypes	contenttype
5	sessions	session
6	store	supplier
7	store	buyer
8	store	drop
9	store	product
10	store	season
11	store	order
12	store	delivery
13	users	user
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2021-12-09 22:05:03.357973-05
2	contenttypes	0002_remove_content_type_name	2021-12-09 22:05:03.380736-05
3	auth	0001_initial	2021-12-09 22:05:03.434688-05
4	auth	0002_alter_permission_name_max_length	2021-12-09 22:05:03.483843-05
5	auth	0003_alter_user_email_max_length	2021-12-09 22:05:03.501365-05
6	auth	0004_alter_user_username_opts	2021-12-09 22:05:03.51532-05
7	auth	0005_alter_user_last_login_null	2021-12-09 22:05:03.535604-05
8	auth	0006_require_contenttypes_0002	2021-12-09 22:05:03.540923-05
9	auth	0007_alter_validators_add_error_messages	2021-12-09 22:05:03.55993-05
10	auth	0008_alter_user_username_max_length	2021-12-09 22:05:03.575908-05
11	auth	0009_alter_user_last_name_max_length	2021-12-09 22:05:03.593142-05
12	auth	0010_alter_group_name_max_length	2021-12-09 22:05:03.612891-05
13	auth	0011_update_proxy_permissions	2021-12-09 22:05:03.632542-05
14	users	0001_initial	2021-12-09 22:05:03.686805-05
15	admin	0001_initial	2021-12-09 22:05:03.761738-05
16	admin	0002_logentry_remove_auto_add	2021-12-09 22:05:03.801711-05
17	admin	0003_logentry_add_action_flag_choices	2021-12-09 22:05:03.824903-05
18	sessions	0001_initial	2021-12-09 22:05:03.843938-05
19	store	0001_initial	2021-12-09 22:05:03.897334-05
20	store	0002_buyer	2021-12-09 22:05:03.943506-05
21	store	0003_drop_product_season	2021-12-09 22:05:04.000476-05
22	store	0004_delivery_order	2021-12-09 22:05:04.087915-05
23	store	0005_auto_20200722_0405	2021-12-09 22:05:04.154281-05
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
89gh8w7k6i2qgd9a2vflxz59cdldvfd0	MWUyMzkyYmVhZjAxNmYzNjgzNTgxNzVlZDQyZDI4MTVmNzhlNzM1ODp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyYTJlMDEyNDgxZmZhNDhmNjA4NmZkMjkxYWEzZjQwMTQxN2I0YWExIn0=	2021-12-24 16:34:49.642429-05
g0haj445564i6yc7mww85gz5l8l93n9b	MWUyMzkyYmVhZjAxNmYzNjgzNTgxNzVlZDQyZDI4MTVmNzhlNzM1ODp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyYTJlMDEyNDgxZmZhNDhmNjA4NmZkMjkxYWEzZjQwMTQxN2I0YWExIn0=	2021-12-24 16:46:29.516224-05
3ntuia15i3qqhxx6zvzdvuv0hp3w69ps	MWUyMzkyYmVhZjAxNmYzNjgzNTgxNzVlZDQyZDI4MTVmNzhlNzM1ODp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyYTJlMDEyNDgxZmZhNDhmNjA4NmZkMjkxYWEzZjQwMTQxN2I0YWExIn0=	2021-12-24 17:50:51.615385-05
\.


--
-- Data for Name: store_buyer; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.store_buyer (id, name, address, created_date, user_id) FROM stdin;
\.


--
-- Data for Name: store_delivery; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.store_delivery (id, courier_name, created_date, order_id) FROM stdin;
\.


--
-- Data for Name: store_drop; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.store_drop (id, name, created_date) FROM stdin;
\.


--
-- Data for Name: store_order; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.store_order (id, design, color, status, created_date, buyer_id, drop_id, product_id, season_id, supplier_id) FROM stdin;
\.


--
-- Data for Name: store_product; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.store_product (id, name, sortno, created_date) FROM stdin;
\.


--
-- Data for Name: store_season; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.store_season (id, name, description, created_date) FROM stdin;
\.


--
-- Data for Name: store_supplier; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.store_supplier (id, name, address, created_date, user_id) FROM stdin;
\.


--
-- Data for Name: users_user; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.users_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined, is_buyer, is_supplier, is_admin) FROM stdin;
1	pbkdf2_sha256$180000$zTV4ODCa7Xp6$j9ZMc1T1iJP+vV5DezZCwJKB8l9l+5ds54wwvIWFlF4=	2021-12-10 17:50:51.600481-05	t	usuarioprueba			usuarioprueba@gmail.com	t	t	2021-12-09 22:06:40.795957-05	f	f	f
\.


--
-- Data for Name: users_user_groups; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.users_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: users_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.users_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 52, true);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 13, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 23, true);


--
-- Name: store_buyer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.store_buyer_id_seq', 1, false);


--
-- Name: store_delivery_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.store_delivery_id_seq', 1, false);


--
-- Name: store_drop_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.store_drop_id_seq', 1, false);


--
-- Name: store_order_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.store_order_id_seq', 1, false);


--
-- Name: store_product_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.store_product_id_seq', 1, false);


--
-- Name: store_season_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.store_season_id_seq', 1, false);


--
-- Name: store_supplier_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.store_supplier_id_seq', 1, false);


--
-- Name: users_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.users_user_groups_id_seq', 1, false);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.users_user_id_seq', 1, true);


--
-- Name: users_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.users_user_user_permissions_id_seq', 1, false);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: store_buyer store_buyer_name_key; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.store_buyer
    ADD CONSTRAINT store_buyer_name_key UNIQUE (name);


--
-- Name: store_buyer store_buyer_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.store_buyer
    ADD CONSTRAINT store_buyer_pkey PRIMARY KEY (id);


--
-- Name: store_buyer store_buyer_user_id_key; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.store_buyer
    ADD CONSTRAINT store_buyer_user_id_key UNIQUE (user_id);


--
-- Name: store_delivery store_delivery_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.store_delivery
    ADD CONSTRAINT store_delivery_pkey PRIMARY KEY (id);


--
-- Name: store_drop store_drop_name_key; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.store_drop
    ADD CONSTRAINT store_drop_name_key UNIQUE (name);


--
-- Name: store_drop store_drop_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.store_drop
    ADD CONSTRAINT store_drop_pkey PRIMARY KEY (id);


--
-- Name: store_order store_order_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.store_order
    ADD CONSTRAINT store_order_pkey PRIMARY KEY (id);


--
-- Name: store_product store_product_name_key; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.store_product
    ADD CONSTRAINT store_product_name_key UNIQUE (name);


--
-- Name: store_product store_product_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.store_product
    ADD CONSTRAINT store_product_pkey PRIMARY KEY (id);


--
-- Name: store_season store_season_name_key; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.store_season
    ADD CONSTRAINT store_season_name_key UNIQUE (name);


--
-- Name: store_season store_season_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.store_season
    ADD CONSTRAINT store_season_pkey PRIMARY KEY (id);


--
-- Name: store_supplier store_supplier_name_key; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.store_supplier
    ADD CONSTRAINT store_supplier_name_key UNIQUE (name);


--
-- Name: store_supplier store_supplier_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.store_supplier
    ADD CONSTRAINT store_supplier_pkey PRIMARY KEY (id);


--
-- Name: store_supplier store_supplier_user_id_key; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.store_supplier
    ADD CONSTRAINT store_supplier_user_id_key UNIQUE (user_id);


--
-- Name: users_user_groups users_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.users_user_groups
    ADD CONSTRAINT users_user_groups_pkey PRIMARY KEY (id);


--
-- Name: users_user_groups users_user_groups_user_id_group_id_b88eab82_uniq; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.users_user_groups
    ADD CONSTRAINT users_user_groups_user_id_group_id_b88eab82_uniq UNIQUE (user_id, group_id);


--
-- Name: users_user users_user_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.users_user
    ADD CONSTRAINT users_user_pkey PRIMARY KEY (id);


--
-- Name: users_user_user_permissions users_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.users_user_user_permissions
    ADD CONSTRAINT users_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: users_user_user_permissions users_user_user_permissions_user_id_permission_id_43338c45_uniq; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.users_user_user_permissions
    ADD CONSTRAINT users_user_user_permissions_user_id_permission_id_43338c45_uniq UNIQUE (user_id, permission_id);


--
-- Name: users_user users_user_username_key; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.users_user
    ADD CONSTRAINT users_user_username_key UNIQUE (username);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: store_buyer_name_95a90998_like; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX store_buyer_name_95a90998_like ON public.store_buyer USING btree (name varchar_pattern_ops);


--
-- Name: store_delivery_order_id_a251563a; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX store_delivery_order_id_a251563a ON public.store_delivery USING btree (order_id);


--
-- Name: store_drop_name_79d0804a_like; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX store_drop_name_79d0804a_like ON public.store_drop USING btree (name varchar_pattern_ops);


--
-- Name: store_order_buyer_id_78719c03; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX store_order_buyer_id_78719c03 ON public.store_order USING btree (buyer_id);


--
-- Name: store_order_drop_id_b066db20; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX store_order_drop_id_b066db20 ON public.store_order USING btree (drop_id);


--
-- Name: store_order_product_id_11796f0f; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX store_order_product_id_11796f0f ON public.store_order USING btree (product_id);


--
-- Name: store_order_season_id_002adb16; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX store_order_season_id_002adb16 ON public.store_order USING btree (season_id);


--
-- Name: store_order_supplier_id_d356f165; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX store_order_supplier_id_d356f165 ON public.store_order USING btree (supplier_id);


--
-- Name: store_product_name_46bbb6a9_like; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX store_product_name_46bbb6a9_like ON public.store_product USING btree (name varchar_pattern_ops);


--
-- Name: store_season_name_75222aeb_like; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX store_season_name_75222aeb_like ON public.store_season USING btree (name varchar_pattern_ops);


--
-- Name: store_supplier_name_08da9ee1_like; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX store_supplier_name_08da9ee1_like ON public.store_supplier USING btree (name varchar_pattern_ops);


--
-- Name: users_user_groups_group_id_9afc8d0e; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX users_user_groups_group_id_9afc8d0e ON public.users_user_groups USING btree (group_id);


--
-- Name: users_user_groups_user_id_5f6f5a90; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX users_user_groups_user_id_5f6f5a90 ON public.users_user_groups USING btree (user_id);


--
-- Name: users_user_user_permissions_permission_id_0b93982e; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX users_user_user_permissions_permission_id_0b93982e ON public.users_user_user_permissions USING btree (permission_id);


--
-- Name: users_user_user_permissions_user_id_20aca447; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX users_user_user_permissions_user_id_20aca447 ON public.users_user_user_permissions USING btree (user_id);


--
-- Name: users_user_username_06e46fe6_like; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX users_user_username_06e46fe6_like ON public.users_user USING btree (username varchar_pattern_ops);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_users_user_id; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_users_user_id FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: store_buyer store_buyer_user_id_594c493e_fk_users_user_id; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.store_buyer
    ADD CONSTRAINT store_buyer_user_id_594c493e_fk_users_user_id FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: store_delivery store_delivery_order_id_a251563a_fk_store_order_id; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.store_delivery
    ADD CONSTRAINT store_delivery_order_id_a251563a_fk_store_order_id FOREIGN KEY (order_id) REFERENCES public.store_order(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: store_order store_order_buyer_id_78719c03_fk_store_buyer_id; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.store_order
    ADD CONSTRAINT store_order_buyer_id_78719c03_fk_store_buyer_id FOREIGN KEY (buyer_id) REFERENCES public.store_buyer(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: store_order store_order_drop_id_b066db20_fk_store_drop_id; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.store_order
    ADD CONSTRAINT store_order_drop_id_b066db20_fk_store_drop_id FOREIGN KEY (drop_id) REFERENCES public.store_drop(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: store_order store_order_product_id_11796f0f_fk_store_product_id; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.store_order
    ADD CONSTRAINT store_order_product_id_11796f0f_fk_store_product_id FOREIGN KEY (product_id) REFERENCES public.store_product(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: store_order store_order_season_id_002adb16_fk_store_season_id; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.store_order
    ADD CONSTRAINT store_order_season_id_002adb16_fk_store_season_id FOREIGN KEY (season_id) REFERENCES public.store_season(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: store_order store_order_supplier_id_d356f165_fk_store_supplier_id; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.store_order
    ADD CONSTRAINT store_order_supplier_id_d356f165_fk_store_supplier_id FOREIGN KEY (supplier_id) REFERENCES public.store_supplier(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: store_supplier store_supplier_user_id_874ead7c_fk_users_user_id; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.store_supplier
    ADD CONSTRAINT store_supplier_user_id_874ead7c_fk_users_user_id FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: users_user_groups users_user_groups_group_id_9afc8d0e_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.users_user_groups
    ADD CONSTRAINT users_user_groups_group_id_9afc8d0e_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: users_user_groups users_user_groups_user_id_5f6f5a90_fk_users_user_id; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.users_user_groups
    ADD CONSTRAINT users_user_groups_user_id_5f6f5a90_fk_users_user_id FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: users_user_user_permissions users_user_user_perm_permission_id_0b93982e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.users_user_user_permissions
    ADD CONSTRAINT users_user_user_perm_permission_id_0b93982e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: users_user_user_permissions users_user_user_permissions_user_id_20aca447_fk_users_user_id; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.users_user_user_permissions
    ADD CONSTRAINT users_user_user_permissions_user_id_20aca447_fk_users_user_id FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

