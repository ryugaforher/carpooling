--
-- PostgreSQL database dump
--

-- Dumped from database version 13.2
-- Dumped by pg_dump version 13.2

-- Started on 2021-10-06 23:07:42

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'BIG5';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 207 (class 1259 OID 16797)
-- Name: auth_group; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO postgres;

--
-- TOC entry 206 (class 1259 OID 16795)
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO postgres;

--
-- TOC entry 3266 (class 0 OID 0)
-- Dependencies: 206
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- TOC entry 209 (class 1259 OID 16807)
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO postgres;

--
-- TOC entry 208 (class 1259 OID 16805)
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO postgres;

--
-- TOC entry 3267 (class 0 OID 0)
-- Dependencies: 208
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- TOC entry 205 (class 1259 OID 16789)
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 16787)
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO postgres;

--
-- TOC entry 3268 (class 0 OID 0)
-- Dependencies: 204
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- TOC entry 211 (class 1259 OID 16815)
-- Name: auth_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO postgres;

--
-- TOC entry 213 (class 1259 OID 16825)
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO postgres;

--
-- TOC entry 212 (class 1259 OID 16823)
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO postgres;

--
-- TOC entry 3269 (class 0 OID 0)
-- Dependencies: 212
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- TOC entry 210 (class 1259 OID 16813)
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO postgres;

--
-- TOC entry 3270 (class 0 OID 0)
-- Dependencies: 210
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- TOC entry 215 (class 1259 OID 16833)
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 16831)
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO postgres;

--
-- TOC entry 3271 (class 0 OID 0)
-- Dependencies: 214
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- TOC entry 231 (class 1259 OID 25268)
-- Name: axes_accessattempt; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.axes_accessattempt (
    id integer NOT NULL,
    user_agent character varying(255) NOT NULL,
    ip_address inet,
    username character varying(255),
    http_accept character varying(1025) NOT NULL,
    path_info character varying(255) NOT NULL,
    attempt_time timestamp with time zone NOT NULL,
    get_data text NOT NULL,
    post_data text NOT NULL,
    failures_since_start integer NOT NULL,
    CONSTRAINT axes_accessattempt_failures_since_start_check CHECK ((failures_since_start >= 0))
);


ALTER TABLE public.axes_accessattempt OWNER TO postgres;

--
-- TOC entry 230 (class 1259 OID 25266)
-- Name: axes_accessattempt_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.axes_accessattempt_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.axes_accessattempt_id_seq OWNER TO postgres;

--
-- TOC entry 3272 (class 0 OID 0)
-- Dependencies: 230
-- Name: axes_accessattempt_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.axes_accessattempt_id_seq OWNED BY public.axes_accessattempt.id;


--
-- TOC entry 233 (class 1259 OID 25280)
-- Name: axes_accesslog; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.axes_accesslog (
    id integer NOT NULL,
    user_agent character varying(255) NOT NULL,
    ip_address inet,
    username character varying(255),
    http_accept character varying(1025) NOT NULL,
    path_info character varying(255) NOT NULL,
    attempt_time timestamp with time zone NOT NULL,
    logout_time timestamp with time zone
);


ALTER TABLE public.axes_accesslog OWNER TO postgres;

--
-- TOC entry 232 (class 1259 OID 25278)
-- Name: axes_accesslog_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.axes_accesslog_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.axes_accesslog_id_seq OWNER TO postgres;

--
-- TOC entry 3273 (class 0 OID 0)
-- Dependencies: 232
-- Name: axes_accesslog_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.axes_accesslog_id_seq OWNED BY public.axes_accesslog.id;


--
-- TOC entry 221 (class 1259 OID 16957)
-- Name: cache_table; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cache_table (
    cache_key character varying(255) NOT NULL,
    value text NOT NULL,
    expires timestamp with time zone NOT NULL
);


ALTER TABLE public.cache_table OWNER TO postgres;

--
-- TOC entry 237 (class 1259 OID 25336)
-- Name: dbase_message; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.dbase_message (
    id integer NOT NULL,
    text text NOT NULL,
    msg_p integer NOT NULL,
    "time" timestamp with time zone NOT NULL
);


ALTER TABLE public.dbase_message OWNER TO postgres;

--
-- TOC entry 236 (class 1259 OID 25334)
-- Name: dbase_message_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.dbase_message_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dbase_message_id_seq OWNER TO postgres;

--
-- TOC entry 3274 (class 0 OID 0)
-- Dependencies: 236
-- Name: dbase_message_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.dbase_message_id_seq OWNED BY public.dbase_message.id;


--
-- TOC entry 235 (class 1259 OID 25316)
-- Name: dbase_p_reset_limit; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.dbase_p_reset_limit (
    id integer NOT NULL,
    tid integer NOT NULL,
    "time" timestamp with time zone NOT NULL,
    num integer NOT NULL
);


ALTER TABLE public.dbase_p_reset_limit OWNER TO postgres;

--
-- TOC entry 234 (class 1259 OID 25314)
-- Name: dbase_p_reset_limit_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.dbase_p_reset_limit_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dbase_p_reset_limit_id_seq OWNER TO postgres;

--
-- TOC entry 3275 (class 0 OID 0)
-- Dependencies: 234
-- Name: dbase_p_reset_limit_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.dbase_p_reset_limit_id_seq OWNED BY public.dbase_p_reset_limit.id;


--
-- TOC entry 217 (class 1259 OID 16893)
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: postgres
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


ALTER TABLE public.django_admin_log OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 16891)
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO postgres;

--
-- TOC entry 3276 (class 0 OID 0)
-- Dependencies: 216
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- TOC entry 203 (class 1259 OID 16779)
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 16777)
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO postgres;

--
-- TOC entry 3277 (class 0 OID 0)
-- Dependencies: 202
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- TOC entry 201 (class 1259 OID 16768)
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO postgres;

--
-- TOC entry 200 (class 1259 OID 16766)
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO postgres;

--
-- TOC entry 3278 (class 0 OID 0)
-- Dependencies: 200
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- TOC entry 218 (class 1259 OID 16924)
-- Name: django_session; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO postgres;

--
-- TOC entry 229 (class 1259 OID 25245)
-- Name: join_p_rides; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.join_p_rides (
    id integer NOT NULL,
    source text NOT NULL,
    dest text NOT NULL,
    cap integer NOT NULL,
    slon double precision NOT NULL,
    slat double precision NOT NULL,
    dlon double precision NOT NULL,
    dlat double precision NOT NULL,
    ride_num integer NOT NULL,
    ride_taker integer NOT NULL,
    confirmed boolean NOT NULL
);


ALTER TABLE public.join_p_rides OWNER TO postgres;

--
-- TOC entry 228 (class 1259 OID 25243)
-- Name: join_p_rides_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.join_p_rides_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.join_p_rides_id_seq OWNER TO postgres;

--
-- TOC entry 3279 (class 0 OID 0)
-- Dependencies: 228
-- Name: join_p_rides_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.join_p_rides_id_seq OWNED BY public.join_p_rides.id;


--
-- TOC entry 227 (class 1259 OID 25230)
-- Name: offer_offer_ride; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.offer_offer_ride (
    id integer NOT NULL,
    source text NOT NULL,
    dest text NOT NULL,
    cap integer NOT NULL,
    date date NOT NULL,
    "time" time without time zone NOT NULL,
    dlat double precision NOT NULL,
    dlon double precision NOT NULL,
    slat double precision NOT NULL,
    slon double precision NOT NULL,
    offer_maker integer NOT NULL
);


ALTER TABLE public.offer_offer_ride OWNER TO postgres;

--
-- TOC entry 226 (class 1259 OID 25228)
-- Name: offer_offer_ride_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.offer_offer_ride_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.offer_offer_ride_id_seq OWNER TO postgres;

--
-- TOC entry 3280 (class 0 OID 0)
-- Dependencies: 226
-- Name: offer_offer_ride_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.offer_offer_ride_id_seq OWNED BY public.offer_offer_ride.id;


--
-- TOC entry 220 (class 1259 OID 16936)
-- Name: signup_users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.signup_users (
    id integer NOT NULL,
    username character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    password character varying(128) NOT NULL,
    active_status boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL,
    first_name character varying(150) NOT NULL,
    is_active boolean NOT NULL,
    is_staff boolean NOT NULL,
    is_superuser boolean NOT NULL,
    last_login timestamp with time zone,
    last_name character varying(150) NOT NULL,
    address text NOT NULL,
    phone character varying(15) NOT NULL,
    p_pic character varying(100) NOT NULL
);


ALTER TABLE public.signup_users OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 25169)
-- Name: signup_users_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.signup_users_groups (
    id integer NOT NULL,
    users_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.signup_users_groups OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 25167)
-- Name: signup_users_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.signup_users_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.signup_users_groups_id_seq OWNER TO postgres;

--
-- TOC entry 3281 (class 0 OID 0)
-- Dependencies: 222
-- Name: signup_users_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.signup_users_groups_id_seq OWNED BY public.signup_users_groups.id;


--
-- TOC entry 219 (class 1259 OID 16934)
-- Name: signup_users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.signup_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.signup_users_id_seq OWNER TO postgres;

--
-- TOC entry 3282 (class 0 OID 0)
-- Dependencies: 219
-- Name: signup_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.signup_users_id_seq OWNED BY public.signup_users.id;


--
-- TOC entry 225 (class 1259 OID 25181)
-- Name: signup_users_user_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.signup_users_user_permissions (
    id integer NOT NULL,
    users_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.signup_users_user_permissions OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 25179)
-- Name: signup_users_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.signup_users_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.signup_users_user_permissions_id_seq OWNER TO postgres;

--
-- TOC entry 3283 (class 0 OID 0)
-- Dependencies: 224
-- Name: signup_users_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.signup_users_user_permissions_id_seq OWNED BY public.signup_users_user_permissions.id;


--
-- TOC entry 2974 (class 2604 OID 16800)
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- TOC entry 2975 (class 2604 OID 16810)
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- TOC entry 2973 (class 2604 OID 16792)
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- TOC entry 2976 (class 2604 OID 16818)
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- TOC entry 2977 (class 2604 OID 16828)
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- TOC entry 2978 (class 2604 OID 16836)
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- TOC entry 2986 (class 2604 OID 25271)
-- Name: axes_accessattempt id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.axes_accessattempt ALTER COLUMN id SET DEFAULT nextval('public.axes_accessattempt_id_seq'::regclass);


--
-- TOC entry 2988 (class 2604 OID 25283)
-- Name: axes_accesslog id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.axes_accesslog ALTER COLUMN id SET DEFAULT nextval('public.axes_accesslog_id_seq'::regclass);


--
-- TOC entry 2990 (class 2604 OID 25339)
-- Name: dbase_message id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dbase_message ALTER COLUMN id SET DEFAULT nextval('public.dbase_message_id_seq'::regclass);


--
-- TOC entry 2989 (class 2604 OID 25319)
-- Name: dbase_p_reset_limit id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dbase_p_reset_limit ALTER COLUMN id SET DEFAULT nextval('public.dbase_p_reset_limit_id_seq'::regclass);


--
-- TOC entry 2979 (class 2604 OID 16896)
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- TOC entry 2972 (class 2604 OID 16782)
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- TOC entry 2971 (class 2604 OID 16771)
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- TOC entry 2985 (class 2604 OID 25248)
-- Name: join_p_rides id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.join_p_rides ALTER COLUMN id SET DEFAULT nextval('public.join_p_rides_id_seq'::regclass);


--
-- TOC entry 2984 (class 2604 OID 25233)
-- Name: offer_offer_ride id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.offer_offer_ride ALTER COLUMN id SET DEFAULT nextval('public.offer_offer_ride_id_seq'::regclass);


--
-- TOC entry 2981 (class 2604 OID 16939)
-- Name: signup_users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.signup_users ALTER COLUMN id SET DEFAULT nextval('public.signup_users_id_seq'::regclass);


--
-- TOC entry 2982 (class 2604 OID 25172)
-- Name: signup_users_groups id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.signup_users_groups ALTER COLUMN id SET DEFAULT nextval('public.signup_users_groups_id_seq'::regclass);


--
-- TOC entry 2983 (class 2604 OID 25184)
-- Name: signup_users_user_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.signup_users_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.signup_users_user_permissions_id_seq'::regclass);


--
-- TOC entry 3230 (class 0 OID 16797)
-- Dependencies: 207
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- TOC entry 3232 (class 0 OID 16807)
-- Dependencies: 209
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- TOC entry 3228 (class 0 OID 16789)
-- Dependencies: 205
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add users	1	add_users
2	Can change users	1	change_users
3	Can delete users	1	delete_users
4	Can view users	1	view_users
5	Can add log entry	2	add_logentry
6	Can change log entry	2	change_logentry
7	Can delete log entry	2	delete_logentry
8	Can view log entry	2	view_logentry
9	Can add permission	3	add_permission
10	Can change permission	3	change_permission
11	Can delete permission	3	delete_permission
12	Can view permission	3	view_permission
13	Can add group	4	add_group
14	Can change group	4	change_group
15	Can delete group	4	delete_group
16	Can view group	4	view_group
17	Can add user	5	add_user
18	Can change user	5	change_user
19	Can delete user	5	delete_user
20	Can view user	5	view_user
21	Can add content type	6	add_contenttype
22	Can change content type	6	change_contenttype
23	Can delete content type	6	delete_contenttype
24	Can view content type	6	view_contenttype
25	Can add session	7	add_session
26	Can change session	7	change_session
27	Can delete session	7	delete_session
28	Can view session	7	view_session
29	Can add temp	8	add_temp
30	Can change temp	8	change_temp
31	Can delete temp	8	delete_temp
32	Can view temp	8	view_temp
33	Can add offer_ride	9	add_offer_ride
34	Can change offer_ride	9	change_offer_ride
35	Can delete offer_ride	9	delete_offer_ride
36	Can view offer_ride	9	view_offer_ride
37	Can add p_rides	10	add_p_rides
38	Can change p_rides	10	change_p_rides
39	Can delete p_rides	10	delete_p_rides
40	Can view p_rides	10	view_p_rides
41	Can add access attempt	11	add_accessattempt
42	Can change access attempt	11	change_accessattempt
43	Can delete access attempt	11	delete_accessattempt
44	Can view access attempt	11	view_accessattempt
45	Can add access log	12	add_accesslog
46	Can change access log	12	change_accesslog
47	Can delete access log	12	delete_accesslog
48	Can view access log	12	view_accesslog
49	Can add accept_ride_nos	13	add_accept_ride_nos
50	Can change accept_ride_nos	13	change_accept_ride_nos
51	Can delete accept_ride_nos	13	delete_accept_ride_nos
52	Can view accept_ride_nos	13	view_accept_ride_nos
53	Can add p_reset_limit	14	add_p_reset_limit
54	Can change p_reset_limit	14	change_p_reset_limit
55	Can delete p_reset_limit	14	delete_p_reset_limit
56	Can view p_reset_limit	14	view_p_reset_limit
57	Can add message	15	add_message
58	Can change message	15	change_message
59	Can delete message	15	delete_message
60	Can view message	15	view_message
\.


--
-- TOC entry 3234 (class 0 OID 16815)
-- Dependencies: 211
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
\.


--
-- TOC entry 3236 (class 0 OID 16825)
-- Dependencies: 213
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- TOC entry 3238 (class 0 OID 16833)
-- Dependencies: 215
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- TOC entry 3254 (class 0 OID 25268)
-- Dependencies: 231
-- Data for Name: axes_accessattempt; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.axes_accessattempt (id, user_agent, ip_address, username, http_accept, path_info, attempt_time, get_data, post_data, failures_since_start) FROM stdin;
\.


--
-- TOC entry 3256 (class 0 OID 25280)
-- Dependencies: 233
-- Data for Name: axes_accesslog; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.axes_accesslog (id, user_agent, ip_address, username, http_accept, path_info, attempt_time, logout_time) FROM stdin;
17	Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36	127.0.0.1	ryuga	application/json, text/javascript, */*; q=0.01	/login	2021-07-26 22:05:20.720242+05:30	2021-07-26 22:08:00.384054+05:30
2	Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36	127.0.0.1	ryuga1	application/json, text/javascript, */*; q=0.01	/login	2021-07-18 21:18:29.916776+05:30	2021-07-18 21:18:45.463547+05:30
3	Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36	127.0.0.1	ryuga1	application/json, text/javascript, */*; q=0.01	/login	2021-07-18 21:18:54.952939+05:30	2021-07-18 21:18:57.411161+05:30
4	Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36	127.0.0.1	ryuga1	application/json, text/javascript, */*; q=0.01	/login	2021-07-18 21:19:08.787138+05:30	2021-07-19 13:55:50.685313+05:30
5	Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36	127.0.0.1	ryuga1	application/json, text/javascript, */*; q=0.01	/login	2021-07-18 21:19:09.024989+05:30	2021-07-19 13:55:50.685313+05:30
6	Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36	127.0.0.1	ryuga1	application/json, text/javascript, */*; q=0.01	/login	2021-07-19 13:55:47.925628+05:30	2021-07-19 13:55:50.685313+05:30
7	Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36	127.0.0.1	ryuga	application/json, text/javascript, */*; q=0.01	/login	2021-07-19 14:11:27.96384+05:30	2021-07-19 14:39:31.043783+05:30
8	Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36	127.0.0.1	ryuga1	application/json, text/javascript, */*; q=0.01	/login	2021-07-19 14:41:02.611029+05:30	2021-07-19 14:47:20.53435+05:30
9	Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36	127.0.0.1	ryuga	application/json, text/javascript, */*; q=0.01	/login	2021-07-19 14:47:29.48347+05:30	2021-07-26 15:15:37.318947+05:30
10	Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36	127.0.0.1	ryuga	application/json, text/javascript, */*; q=0.01	/login	2021-07-19 15:15:29.861321+05:30	2021-07-26 15:15:37.318947+05:30
11	Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36	127.0.0.1	ryuga	application/json, text/javascript, */*; q=0.01	/login	2021-07-26 14:33:19.900162+05:30	2021-07-26 15:15:37.318947+05:30
12	Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36	127.0.0.1	ryuga1	application/json, text/javascript, */*; q=0.01	/login	2021-07-26 15:15:56.102433+05:30	2021-07-26 19:50:11.619093+05:30
13	Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36	127.0.0.1	ryuga1	application/json, text/javascript, */*; q=0.01	/login	2021-07-26 19:50:44.321063+05:30	2021-07-26 19:52:14.929763+05:30
14	Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36	127.0.0.1	ryuga	application/json, text/javascript, */*; q=0.01	/login	2021-07-26 19:52:34.652211+05:30	2021-07-26 20:01:49.098465+05:30
15	Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36	127.0.0.1	ryuga1	application/json, text/javascript, */*; q=0.01	/login	2021-07-26 20:01:59.126455+05:30	2021-07-26 22:03:30.092548+05:30
16	Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36	127.0.0.1	ryuga1	application/json, text/javascript, */*; q=0.01	/login	2021-07-26 22:03:41.798455+05:30	2021-07-26 22:03:59.493645+05:30
18	Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36	127.0.0.1	ryuga1	application/json, text/javascript, */*; q=0.01	/login	2021-07-26 22:08:11.194374+05:30	2021-07-26 22:15:34.243178+05:30
19	Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36	127.0.0.1	ryuga	application/json, text/javascript, */*; q=0.01	/login	2021-07-26 22:15:46.932145+05:30	2021-07-26 22:18:26.416864+05:30
20	Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36	127.0.0.1	ryuga1	application/json, text/javascript, */*; q=0.01	/login	2021-07-26 22:18:35.87858+05:30	2021-07-26 22:18:43.222321+05:30
21	Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36	127.0.0.1	ryuga	application/json, text/javascript, */*; q=0.01	/login	2021-07-26 22:18:53.020912+05:30	2021-07-26 22:39:40.042222+05:30
22	Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36	127.0.0.1	ryuga1	application/json, text/javascript, */*; q=0.01	/login	2021-07-26 22:39:57.784087+05:30	2021-07-26 22:40:21.385061+05:30
23	Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36	127.0.0.1	ryuga	application/json, text/javascript, */*; q=0.01	/login	2021-07-26 22:40:31.284368+05:30	2021-07-26 22:40:37.884289+05:30
24	Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36	127.0.0.1	ryuga1	application/json, text/javascript, */*; q=0.01	/login	2021-07-26 22:41:09.757139+05:30	2021-07-26 22:43:36.677842+05:30
25	Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36	127.0.0.1	ryuga	application/json, text/javascript, */*; q=0.01	/login	2021-07-26 22:43:50.048336+05:30	2021-07-26 22:44:11.130849+05:30
26	Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36	127.0.0.1	ryuga1	application/json, text/javascript, */*; q=0.01	/login/	2021-08-01 13:13:28.925365+05:30	2021-08-01 13:19:09.13536+05:30
27	Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36	127.0.0.1	ryuga	application/json, text/javascript, */*; q=0.01	/login/	2021-08-01 13:23:54.219+05:30	2021-08-01 13:30:17.95351+05:30
28	Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36	127.0.0.1	ryuga	application/json, text/javascript, */*; q=0.01	/login/	2021-08-01 13:30:46.758217+05:30	2021-08-01 14:10:22.300234+05:30
29	Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36	127.0.0.1	ryuga	application/json, text/javascript, */*; q=0.01	/login/	2021-08-01 14:10:07.024561+05:30	2021-08-01 14:10:22.300234+05:30
30	Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36	127.0.0.1	ryuga	application/json, text/javascript, */*; q=0.01	/login/join-ride/find	2021-08-01 15:30:09.486666+05:30	2021-08-01 16:21:27.308298+05:30
31	Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36	127.0.0.1	ryuga	application/json, text/javascript, */*; q=0.01	/login	2021-08-01 16:51:56.092253+05:30	2021-08-01 16:51:58.387716+05:30
32	Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36	127.0.0.1	ryuga	application/json, text/javascript, */*; q=0.01	/login	2021-08-01 16:59:25.980166+05:30	2021-08-01 17:00:40.792713+05:30
33	Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36	127.0.0.1	ryuga	application/json, text/javascript, */*; q=0.01	/login	2021-08-01 17:00:58.215383+05:30	2021-08-01 17:03:16.9922+05:30
34	Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36	127.0.0.1	ryuga	application/json, text/javascript, */*; q=0.01	/login	2021-08-01 17:03:30.769371+05:30	2021-08-01 17:05:48.51839+05:30
35	Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36	127.0.0.1	ryuga	application/json, text/javascript, */*; q=0.01	/login	2021-08-01 17:05:46.060627+05:30	2021-08-01 17:05:48.51839+05:30
36	Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36	127.0.0.1	ryuga	application/json, text/javascript, */*; q=0.01	/login/join-ride/find	2021-08-01 20:03:54.284509+05:30	2021-08-01 20:05:57.754698+05:30
37	Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36	127.0.0.1	ryuga	application/json, text/javascript, */*; q=0.01	/login/join-ride/find	2021-08-01 20:06:08.636953+05:30	2021-08-01 20:24:11.753728+05:30
38	Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36	127.0.0.1	ryuga	application/json, text/javascript, */*; q=0.01	/login/join-ride/find	2021-08-01 20:14:30.702203+05:30	2021-08-01 20:24:11.753728+05:30
39	Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36	127.0.0.1	ryuga	application/json, text/javascript, */*; q=0.01	/login/join-ride/find	2021-08-01 20:14:41.711452+05:30	2021-08-01 20:24:11.753728+05:30
40	Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36	127.0.0.1	ryuga	application/json, text/javascript, */*; q=0.01	/login/join-ride/find	2021-08-01 20:24:33.97254+05:30	2021-08-01 20:25:37.809511+05:30
41	Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36	127.0.0.1	ryuga	application/json, text/javascript, */*; q=0.01	/login/join-ride/find	2021-08-01 20:26:53.417312+05:30	2021-08-01 20:53:54.92926+05:30
42	Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36	127.0.0.1	ryuga	application/json, text/javascript, */*; q=0.01	/login/join-ride/find	2021-08-01 20:54:04.346156+05:30	2021-08-01 21:29:35.638401+05:30
43	Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36	127.0.0.1	ryuga1	application/json, text/javascript, */*; q=0.01	/login/join-ride/find	2021-08-01 21:30:26.551642+05:30	2021-08-01 21:33:42.073771+05:30
44	Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36	127.0.0.1	ryuga	application/json, text/javascript, */*; q=0.01	/login/	2021-08-01 21:41:22.921806+05:30	2021-08-01 21:41:43.093285+05:30
45	Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36	127.0.0.1	ryuga	application/json, text/javascript, */*; q=0.01	/login/	2021-08-02 16:16:14.267935+05:30	2021-08-02 20:41:20.717003+05:30
46	Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36	127.0.0.1	ryuga	application/json, text/javascript, */*; q=0.01	/login/join-ride/find	2021-08-02 21:47:34.783084+05:30	2021-08-02 21:47:41.902281+05:30
48	Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36	127.0.0.1	ryuga	application/json, text/javascript, */*; q=0.01	/login/	2021-08-12 17:36:30.941131+05:30	2021-08-12 17:36:41.102342+05:30
49	Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36	127.0.0.1	ryuga	application/json, text/javascript, */*; q=0.01	/login/	2021-09-10 18:22:49.147741+05:30	2021-09-10 18:23:16.627628+05:30
47	Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36	127.0.0.1	ryuga1	application/json, text/javascript, */*; q=0.01	/login/	2021-08-02 21:47:51.52908+05:30	2021-09-10 19:12:03.899663+05:30
50	Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36	127.0.0.1	ryuga1	application/json, text/javascript, */*; q=0.01	/login/	2021-09-10 18:24:00.278119+05:30	2021-09-10 19:12:03.899663+05:30
51	Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36	127.0.0.1	ryuga	application/json, text/javascript, */*; q=0.01	/login/	2021-09-10 19:12:20.705027+05:30	2021-09-10 19:15:33.553744+05:30
52	Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36	127.0.0.1	ryuga1	application/json, text/javascript, */*; q=0.01	/login/	2021-09-10 19:16:12.015805+05:30	\N
\.


--
-- TOC entry 3244 (class 0 OID 16957)
-- Dependencies: 221
-- Data for Name: cache_table; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cache_table (cache_key, value, expires) FROM stdin;
\.


--
-- TOC entry 3260 (class 0 OID 25336)
-- Dependencies: 237
-- Data for Name: dbase_message; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.dbase_message (id, text, msg_p, "time") FROM stdin;
1	Your ride fromKanota, Bassi, Jaipur, Rajasthan, IndiatoBhandana, Dausa, Dausa, Rajasthan, Indiahas been approved	14	2021-09-11 00:48:20.102705+05:30
2	Your ride fromKanota, Bassi, Jaipur, Rajasthan, IndiatoBhandana, Dausa, Dausa, Rajasthan, Indiahas been approved	14	2021-09-11 00:51:08.727531+05:30
3	You approved ride fromKanota, Bassi, Jaipur, Rajasthan, IndiatoBhandana, Dausa, Dausa, Rajasthan, Indiafor2	16	2021-09-11 00:51:08.727531+05:30
4	Your ride from Kanota, Bassi, Jaipur, Rajasthan, India to Bhandana, Dausa, Dausa, Rajasthan, India has been approved	14	2021-09-11 00:53:11.225748+05:30
5	You approved ride from Kanota, Bassi, Jaipur, Rajasthan, India to Bhandana, Dausa, Dausa, Rajasthan, India for 2	16	2021-09-11 00:53:11.225748+05:30
\.


--
-- TOC entry 3258 (class 0 OID 25316)
-- Dependencies: 235
-- Data for Name: dbase_p_reset_limit; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.dbase_p_reset_limit (id, tid, "time", num) FROM stdin;
1	14	2021-08-01 13:08:53.325146+05:30	1
\.


--
-- TOC entry 3240 (class 0 OID 16893)
-- Dependencies: 217
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- TOC entry 3226 (class 0 OID 16779)
-- Dependencies: 203
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	signup	users
2	admin	logentry
3	auth	permission
4	auth	group
5	auth	user
6	contenttypes	contenttype
7	sessions	session
8	signup	temp
9	offer	offer_ride
10	join	p_rides
11	axes	accessattempt
12	axes	accesslog
13	dbase	accept_ride_nos
14	dbase	p_reset_limit
15	dbase	message
\.


--
-- TOC entry 3224 (class 0 OID 16768)
-- Dependencies: 201
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2021-04-25 21:37:38.517259+05:30
2	auth	0001_initial	2021-04-25 21:37:38.977141+05:30
3	admin	0001_initial	2021-04-25 21:37:40.161071+05:30
4	admin	0002_logentry_remove_auto_add	2021-04-25 21:37:40.27748+05:30
5	admin	0003_logentry_add_action_flag_choices	2021-04-25 21:37:40.294184+05:30
6	contenttypes	0002_remove_content_type_name	2021-04-25 21:37:40.350961+05:30
7	auth	0002_alter_permission_name_max_length	2021-04-25 21:37:40.379043+05:30
8	auth	0003_alter_user_email_max_length	2021-04-25 21:37:40.403786+05:30
9	auth	0004_alter_user_username_opts	2021-04-25 21:37:40.424544+05:30
10	auth	0005_alter_user_last_login_null	2021-04-25 21:37:40.45409+05:30
11	auth	0006_require_contenttypes_0002	2021-04-25 21:37:40.460581+05:30
12	auth	0007_alter_validators_add_error_messages	2021-04-25 21:37:40.490973+05:30
13	auth	0008_alter_user_username_max_length	2021-04-25 21:37:40.595979+05:30
14	auth	0009_alter_user_last_name_max_length	2021-04-25 21:37:40.616261+05:30
15	auth	0010_alter_group_name_max_length	2021-04-25 21:37:40.645564+05:30
16	auth	0011_update_proxy_permissions	2021-04-25 21:37:40.676052+05:30
17	auth	0012_alter_user_first_name_max_length	2021-04-25 21:37:40.698222+05:30
18	sessions	0001_initial	2021-04-25 21:37:40.796726+05:30
19	signup	0001_initial	2021-04-25 21:37:40.996348+05:30
20	signup	0002_temp	2021-04-30 08:28:03.981203+05:30
21	signup	0003_auto_20210514_2237	2021-05-14 22:38:00.314007+05:30
22	signup	0004_auto_20210520_2345	2021-05-20 23:45:38.150175+05:30
23	offer	0001_initial	2021-06-09 14:15:14.764806+05:30
24	offer	0002_auto_20210609_1440	2021-06-09 14:41:22.468497+05:30
25	offer	0003_auto_20210609_1447	2021-06-09 14:47:24.083393+05:30
26	offer	0004_auto_20210609_1455	2021-06-09 14:55:28.261493+05:30
27	join	0001_initial	2021-06-20 16:18:13.769426+05:30
28	signup	0005_auto_20210624_1735	2021-06-24 17:36:32.015129+05:30
29	signup	0006_users_p_pic	2021-06-24 19:11:14.554753+05:30
30	signup	0007_auto_20210627_2146	2021-06-27 21:46:11.346673+05:30
31	offer	0005_offer_ride_offer_maker	2021-07-01 08:24:36.889943+05:30
32	join	0002_p_rides_ride_taker	2021-07-03 13:20:39.647058+05:30
33	axes	0001_initial	2021-07-14 14:19:12.426127+05:30
34	axes	0002_auto_20151217_2044	2021-07-14 14:19:13.015684+05:30
35	axes	0003_auto_20160322_0929	2021-07-14 14:19:13.055832+05:30
36	axes	0004_auto_20181024_1538	2021-07-14 14:19:13.105615+05:30
37	axes	0005_remove_accessattempt_trusted	2021-07-14 14:19:13.202279+05:30
38	axes	0006_remove_accesslog_trusted	2021-07-14 14:19:13.217645+05:30
39	dbase	0001_initial	2021-07-26 19:57:31.205362+05:30
40	join	0003_p_rides_confirmed	2021-07-26 19:57:31.255417+05:30
41	dbase	0002_auto_20210731_1219	2021-07-31 12:21:11.597573+05:30
42	join	0004_auto_20210731_1219	2021-07-31 12:21:11.628278+05:30
43	dbase	0003_message	2021-09-10 18:21:14.753971+05:30
\.


--
-- TOC entry 3241 (class 0 OID 16924)
-- Dependencies: 218
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
0pb0ywnamfiugsljk07lv13ieqb4wwf1	.eJxVjEEOwiAQRe_C2hAoAwGX7j0DgZlBqoYmpV013t026UK3773_NxHTutS4dp7jSOIqtBOXX5gTvrgdhp6pPSaJU1vmMcsjkaft8j4Rv29n-3dQU6_7mqFYPQAUReSN18CekMAZ5ZHZZMRBaYeOTTHOlgBBgdUYVNa4YxSfLwnGOAU:1m1tHA:ouYCBmkTOlzCCpttTQP1saXU7XhNVy2FK4Ca1tzgN3w	2021-07-23 21:52:52.585347+05:30
r64nsg93kyopbt3gn52ouc4s5bpdgjfc	.eJxtjcFOxCAURX9lQtJdQ4CBB52d7jRx4w80D3hYqkMnpXVj_HdpMgtN3J5777lfbMR9m8a90jrmyC5Matb_hh7DO5UjiTOWt4WHpWxr9vyo8Hta-csS6ePx3v0jmLBObS2sTY5A6HN0KVqDxosogHyQMYmQwIDXGpMKOgEBaE8kwA2WFAIOtkk3ut6a6RnzbV_70yvOWLcJS396KjFj9zBf6T-uOmv4ILVUulPAnRNN21nNrTCghoMZebZOtg_8xHHNkWo7suz7B6YPWQs:1m5PeR:K761AbWy4vgwZtoFtMdAFQ9lkMzpB8xsx1UR3vkbcGI	2021-08-02 15:03:27.325819+05:30
mdf86adasnsu507pg8j63akpjqq6gmsu	eyJpZCI6MTR9:1lkkSY:1HIIJZSoFPKWzDMgAJzEJn1YWzJiWEFoxzJ5uLgQ2ro	2021-06-06 15:01:46.693645+05:30
w2men0u2b9346le5wkg2ejzsdbuwm6rf	eyJpZCI6MTR9:1lkoV7:-sTtoqZHS3YnyXDbdzOzgzRM_YrEAUF87llfI6IZQoE	2021-06-06 19:20:41.570801+05:30
o0oq25a4z8b81nswr0c5r7l05kepzihz	.eJxtjbtOxDAQRX9lZSldZNlm_AglHSAafiAa2-ONF3BWdkKD-HccaQuQKOeeO-d-sRn3bZn3RnXOkd0zCWz8HXoMb1QOEi9YzisPa9lq9vyo8Btt_GWN9P5w6_4RLNiW_i2sTY6MgLvoUrQatRdRGPJBxiRCMtp4AEwqQDJkDHgiYdxkSaHByXbpRh_XbnrCfN3reHrFC7ZtwTKeHkvMODzn1q8z1uUfKAer-SRBKhiU4c6J7h4sHJkCdWR6kkLqPoSfONccqfU1y75_AKbNWxA:1m5Vl4:1dtfIh8OE_1jZpiLejdx_opKvcezlJg--pnrrHhgvYk	2021-08-02 21:34:42.240963+05:30
id2f953kwobt5dzyb5cnxb26l0k3sn10	.eJxtjzFuwzAMRa8SCPBmCKJFyXLHbB2y5AIGTdGx01YuLKcdit69cpChBbq-9_8n-KV6um1Tf8uy9nNUTwq8qn_DgfhF0m7ildJl0bykbZ0HvUf0w2Z9WqK8Hh_ZPwMT5am0BUcHDeJoYgw2AEqIHNFbE1jEDsyNAc9e7Gi9GzvsDDrgzgzABXMZ3eTtvSwdKX9SfTjTlfI2UaoPzynOVBVwoXX6x0DVeu0wmDZUTavBeIQ784Bo8c661u2f0wf16xwll0Neff8ATWBYfA:1m2Gou:FaqdMxQ6cIkfmqIKUG29rhiyCYEMD6LKp6ly2saYxPw	2021-07-24 23:01:16.244771+05:30
qxxqhp8wj0ifw6l7cq91wkz1qb7nv3ps	.eJxVjEEOwiAQRe_C2hBaYaAu3fcMzcDMSNVAUtqV8e7apAvd_vfef6kJtzVPW-NlmkldVGfV6XeMmB5cdkJ3LLeqUy3rMke9K_qgTY-V-Hk93L-DjC1_a-O9BAZjzxSEvEMXDRngmDoSkwQcRGtR-mQFGMBGZgNh8Nwj4ODV-wMbVzim:1mACqj:6p0LXTsy5X2mdBA3VlHIsyBmxuKxWxLB6yqebfycFXc	2021-08-15 20:23:57.670037+05:30
1wq2d7ypkhdd8vx40dtvfpvgt1fsnwi7	.eJxVjrFuhDAQRH8FIdEhywbbmCtRmhRJcfkAtNhL7DsCJ2yCoij_nj2FIlftaObtaL7zHrbk-y3i2geXn3Kh8_K_OYC94nxP3AXm94XZZU5rGNgdYUca2cvicOoO9qHAQ_T0jXJUopJy5M6Z2giJxlkndc2NRawHaysutNVYj7VWYytbLpWwLR-EJdtSacKPGzV1MLtw3UJ2hjDt8JW9JUhhmcusg7hDSf4FYvJAzjOhUJxp-G1bQ5m94p494eQf5XH-YFE0milhFFdF1TCuSKiiIWVU1bRFZZhsZSNpEHxCvwaHkVbp_OcXf9tnvw:1m2Snl:svWk3RVwz88dxmYxaELW2BS5s_EcaDxx9BxNlFa7JJs	2021-07-25 11:48:53.196485+05:30
t95bdwar0lkx629kr9cxlgkkmtrfl7oi	eyJyZWYiOiIvb2ZmZXItcmlkZS8ifQ:1lrBsr:XAgczuYIJQNmurTJObDbaWyeJ5u4Dy6YucuKky6obmU	2021-06-24 09:31:33.87561+05:30
qxohlgohdzvgcp0ulzih5kjm2fdqmafv	.eJxVjEEOwiAQRe_C2hAoAwGX7j0DgZlBqoYmpV013t026UK3773_NxHTutS4dp7jSOIqtBOXX5gTvrgdhp6pPSaJU1vmMcsjkaft8j4Rv29n-3dQU6_7mqFYPQAUReSN18CekMAZ5ZHZZMRBaYeOTTHOlgBBgdUYVNa4YxSfLwnGOAU:1ltsBH:v3WCIPYN_aGtdn74ON5miuY8Zj8ADNVWZoCgbJ1W6pw	2021-07-01 19:05:39.53949+05:30
nmjbbgkensob2vgkhzrf3kky144yu6bq	.eJxVjEEOwiAQRe_C2hAoAwGX7j0DgZlBqoYmpV013t026UK3773_NxHTutS4dp7jSOIqtBOXX5gTvrgdhp6pPSaJU1vmMcsjkaft8j4Rv29n-3dQU6_7mqFYPQAUReSN18CekMAZ5ZHZZMRBaYeOTTHOlgBBgdUYVNa4YxSfLwnGOAU:1lv9Nv:D04np5O5bZye8iOzQ73i1XoMwLjpP_GiXHpZVzGQwgE	2021-07-05 07:39:59.713746+05:30
n5lycydz1jau59b0tcmdojt0s8vxi1z8	e30:1m44s8:6_Fu3xQ9Lm_yxPEzYKzsDPWwnNV2oqWoL5IxiUQytrk	2021-07-29 22:40:04.391825+05:30
rwiwcj0haqqhss8kwzntrxkqdn8trxgj	.eJxVjEEOwiAQRe_C2hAoAwGX7j0DgZlBqoYmpV013t026UK3773_NxHTutS4dp7jSOIqtBOXX5gTvrgdhp6pPSaJU1vmMcsjkaft8j4Rv29n-3dQU6_7mqFYPQAUReSN18CekMAZ5ZHZZMRBaYeOTTHOlgBBgdUYVNa4YxSfLwnGOAU:1lwFot:9QJLG8Uo5AqG_sLaq78gryL7G19ujGL_l8wqCcm-8hE	2021-07-08 08:44:23.238249+05:30
95pkiwbt8crdq38bj2p7r3aahfks129t	.eJxVjEEOwiAQRe_C2hAoAwGX7j0DgZlBqoYmpV013t026UK3773_NxHTutS4dp7jSOIqtBOXX5gTvrgdhp6pPSaJU1vmMcsjkaft8j4Rv29n-3dQU6_7mqFYPQAUReSN18CekMAZ5ZHZZMRBaYeOTTHOlgBBgdUYVNa4YxSfLwnGOAU:1lwlgu:QpE663lLgbkf8ZxNVWK6DyygqsYAe37GiFjHOatQqdI	2021-07-09 18:46:16.418555+05:30
jlkqnkueuv5zm13si93zgpe6gb0gdetg	.eJxVjEEOwiAQRe_C2hAoAwGX7j0DgZlBqoYmpV013t026UK3773_NxHTutS4dp7jSOIqtBOXX5gTvrgdhp6pPSaJU1vmMcsjkaft8j4Rv29n-3dQU6_7mqFYPQAUReSN18CekMAZ5ZHZZMRBaYeOTTHOlgBBgdUYVNa4YxSfLwnGOAU:1lxSh0:yR-W4QcYrqZjQT63pjo4e43_vEIDJEPt7HoKOqlaxLg	2021-07-11 16:41:14.315581+05:30
rfnzb4cuoccwxvh1lghfe36ao38gwz2l	.eJxVjEEOwiAQRe_C2hAoAwGX7j0DgZlBqoYmpV013t026UK3773_NxHTutS4dp7jSOIqtBOXX5gTvrgdhp6pPSaJU1vmMcsjkaft8j4Rv29n-3dQU6_7mqFYPQAUReSN18CekMAZ5ZHZZMRBaYeOTTHOlgBBgdUYVNa4YxSfLwnGOAU:1lxtRd:yfAtkI3B1OVRmTj__4wOjS-0rg09MOF9WCxfHGfuCQo	2021-07-12 21:15:09.889783+05:30
fse72oj5b5xjrtmtiod7i468hm520ee5	e30:1m58sD:SW96B2ezIv3KQRQVrQIM7_X5G3nUQMlpn8ENMLchKpY	2021-08-01 21:08:33.825037+05:30
92wwsrbrukx9audfs4z5u7erkxgse4in	.eJxVjEEOwiAQRe_C2hAoAwGX7j0DgZlBqoYmpV013t026UK3773_NxHTutS4dp7jSOIqtBOXX5gTvrgdhp6pPSaJU1vmMcsjkaft8j4Rv29n-3dQU6_7mqFYPQAUReSN18CekMAZ5ZHZZMRBaYeOTTHOlgBBgdUYVNa4YxSfLwnGOAU:1lyBBU:4XF6J0iRRg7_ltpyz6keWKWQpZIAaFhoLOY3rRJ-rhY	2021-07-13 16:11:40.728443+05:30
ex1y0brlb8rasv4cnqgc7a7c9bg1vfzu	.eJxVjEEOwiAQRe_C2hAoAwGX7j0DgZlBqoYmpV013t026UK3773_NxHTutS4dp7jSOIqtBOXX5gTvrgdhp6pPSaJU1vmMcsjkaft8j4Rv29n-3dQU6_7mqFYPQAUReSN18CekMAZ5ZHZZMRBaYeOTTHOlgBBgdUYVNa4YxSfLwnGOAU:1lyz1v:kCUKGYoXu5Ex8nwmkh9fjvzCeHx0pn3cI1E7Qi4GTAQ	2021-07-15 21:25:07.130909+05:30
k8wexkxudlama1wsxfneuh765faqotqo	.eJxVjEEOwiAQRe_C2hAoAwGX7j0DgZlBqoYmpV013t026UK3773_NxHTutS4dp7jSOIqtBOXX5gTvrgdhp6pPSaJU1vmMcsjkaft8j4Rv29n-3dQU6_7mqFYPQAUReSN18CekMAZ5ZHZZMRBaYeOTTHOlgBBgdUYVNa4YxSfLwnGOAU:1lzIVL:S5usmx9BY48yNqfbR9CvVhJhz1ESjaNlsQcT1WG_WRw	2021-07-16 18:12:47.52858+05:30
skseo5ho9ausxhp9acj5rg5sbloouegq	.eJxVjEEOwiAQRe_C2hAoAwGX7j0DgZlBqoYmpV013t026UK3773_NxHTutS4dp7jSOIqtBOXX5gTvrgdhp6pPSaJU1vmMcsjkaft8j4Rv29n-3dQU6_7mqFYPQAUReSN18CekMAZ5ZHZZMRBaYeOTTHOlgBBgdUYVNa4YxSfLwnGOAU:1lzKwj:7bw9yJfV3tnA_TOrz28diOg807abb8Y5XkhOvMmU8t0	2021-07-16 20:49:13.803792+05:30
e68trpb998i2fjxku6vibuovd9ynpqr8	.eJxVjEEOwiAQRe_C2hAoAwGX7j0DgZlBqoYmpV013t026UK3773_NxHTutS4dp7jSOIqtBOXX5gTvrgdhp6pPSaJU1vmMcsjkaft8j4Rv29n-3dQU6_7mqFYPQAUReSN18CekMAZ5ZHZZMRBaYeOTTHOlgBBgdUYVNa4YxSfLwnGOAU:1m592S:G1hkhqkw5TIcmPhd0KPyXqZbdBeOJ2YdapDFu6B63wU	2021-08-01 21:19:08.79332+05:30
tve0yka88atz6cfbyn0fdv8bevdbh375	.eJxVjEEOwiAQRe_C2hAoAwGX7j0DgZlBqoYmpV013t026UK3773_NxHTutS4dp7jSOIqtBOXX5gTvrgdhp6pPSaJU1vmMcsjkaft8j4Rv29n-3dQU6_7mqFYPQAUReSN18CekMAZ5ZHZZMRBaYeOTTHOlgBBgdUYVNa4YxSfLwnGOAU:1m592T:OYGTc-7RVp_pf45QSSq342BrwAPPX0FoCr-4MycZoxk	2021-08-01 21:19:09.029924+05:30
cg7ndfk0it94wpxuhe3vhsk8qj3ezv91	.eJxtj7tuwzAMRX8lEODNEPSO3a3dOnTpDxg0SUdOU7mQnGYI8u-R0Qwt0I33wQPcqxjgvMbhXDgPM4knoYNof5sj4AenLaEjpMMicUlrnke5VeQjLfJtIT69PLp_ABFKrN_sJq-Nc5Mi6mynHXeE5IJVHTLbEdEoHTCwnWzwU-965bzGXo0aq40VuvLnVyW9w_EAOba7ekBZI6R295pohub5dIH8j6-bfZDBmMbspbHhR_lN-WDcNhi-Ycgzcal8L253TGpWrg:1lzikK:1mNR3LIUbOJti01i4A61MG_L_CviicXGb20MOOJL8sI	2021-07-17 22:14:00.914205+05:30
7qhv5yb5eura8e21jiokrenvrwxcynio	.eJxVjEEOwiAQRe_C2hAoAwGX7j0DgZlBqoYmpV013t026UK3773_NxHTutS4dp7jSOIqtBOXX5gTvrgdhp6pPSaJU1vmMcsjkaft8j4Rv29n-3dQU6_7mqFYPQAUReSN18CekMAZ5ZHZZMRBaYeOTTHOlgBBgdUYVNa4YxSfLwnGOAU:1lzuQM:Jruzri-tMguiiPR6Xw7K2Qs59ji8kmGbd8eTlcTox5s	2021-07-18 10:42:10.464361+05:30
eo5jakaxmoavdn7zrs3jb3g6kcmpbe39	.eJxVjEEOwiAQRe_C2hAoAwGX7j0DgZlBqoYmpV013t026UK3773_NxHTutS4dp7jSOIqtBOXX5gTvrgdhp6pPSaJU1vmMcsjkaft8j4Rv29n-3dQU6_7mqFYPQAUReSN18CekMAZ5ZHZZMRBaYeOTTHOlgBBgdUYVNa4YxSfLwnGOAU:1lzw9Q:xCqKUQDq1l1vI9swSIQoGoc35yqd1SgGO_vNFsnYfY0	2021-07-18 12:32:48.115819+05:30
kbx6zgny6ll60wcgjhjs8y5hbpfh59rv	e30:1mA6Os:EmP5DubS1RnNg-5MrzXCePR_j4o3i6FkMwXMiVCvTT0	2021-08-15 13:30:46.730771+05:30
tdgjlnbyzdb9ajob3xc67acmgmsgjydr	e30:1mA9ik:DKXa7j2eZzuSZ_ZII2-FZ_yATZPsfI_hh_L8AZpjy9I	2021-08-15 17:03:30.757017+05:30
z6uenpbcp3drfw1mv7ebg28tlb738ozi	.eJxVjEEOwiAQRe_C2hBaYaAu3fcMzcDMSNVAUtqV8e7apAvd_vfef6kJtzVPW-NlmkldVGfV6XeMmB5cdkJ3LLeqUy3rMke9K_qgTY-V-Hk93L-DjC1_a-O9BAZjzxSEvEMXDRngmDoSkwQcRGtR-mQFGMBGZgNh8Nwj4ODV-wMbVzim:1mACr4:M5NLK3bFihxDZ79LL2xsleKRNpeyCCpHxcWFWHSApJ4	2021-08-15 20:24:18.780308+05:30
jcgmx58oq7e1vn8iqndyqg8mqifxcphi	.eJxVjEEOwiAQRe_C2hAoAwGX7j0DgZlBqoYmpV013t026UK3773_NxHTutS4dp7jSOIqtBOXX5gTvrgdhp6pPSaJU1vmMcsjkaft8j4Rv29n-3dQU6_7mqFYPQAUReSN18CekMAZ5ZHZZMRBaYeOTTHOlgBBgdUYVNa4YxSfLwnGOAU:1mAadT:azIl6ndfka-ln28_qlluo9RK2FWdsyrrgy5VYchUWKw	2021-08-16 21:47:51.537954+05:30
tqkkuvhw8sj3d4bn4mfi0w53qssvjoys	.eJxVjEEOwiAQRe_C2hAoAwGX7j0DgZlBqoYmpV013t026UK3773_NxHTutS4dp7jSOIqtBOXX5gTvrgdhp6pPSaJU1vmMcsjkaft8j4Rv29n-3dQU6_7mqFYPQAUReSN18CekMAZ5ZHZZMRBaYeOTTHOlgBBgdUYVNa4YxSfLwnGOAU:1mOgr6:u4Dvcgo1K_zd-TvoF3sOZ0a_IXcHNJXYKLcy7Q2hPPU	2021-09-24 19:16:12.019307+05:30
\.


--
-- TOC entry 3252 (class 0 OID 25245)
-- Dependencies: 229
-- Data for Name: join_p_rides; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.join_p_rides (id, source, dest, cap, slon, slat, dlon, dlat, ride_num, ride_taker, confirmed) FROM stdin;
8	Rajgarh, Rajasthan, India	Alwar, Rajasthan, India	1	76.614434	27.19756	76.602123	27.517746	5	16	f
9	Beejwa, Ramgarh, Alwar, Rajasthan, India	Sohna, Haryana, India	2	76.816496	27.593664	77.063434	28.209284	6	16	f
10	Kanota, Bassi, Jaipur, Rajasthan, India	Jaipur, Rajasthan, India	3	76.009336	26.855033	75.914124	26.880897	7	14	f
11	Kishangarh, Rajasthan, India	Ajmer, Rajasthan, India	2	74.914242	26.591015	74.705629	26.513781	7	14	f
13	Bhandana, Dausa, Dausa, Rajasthan, India	Jaipur, Rajasthan, India	1	76.300748	26.883979	75.914124	26.880897	8	14	t
14	Baskhoh, Bassi, Jaipur, Rajasthan, India	Kanota, Bassi, Jaipur, Rajasthan, India	1	76.21881	26.879012	76.009336	26.855033	8	14	f
15	Jaipur, Rajasthan, India	Ajmer, Rajasthan, India	2	75.914124	26.880897	74.705629	26.513781	9	14	t
16	Kanota, Bassi, Jaipur, Rajasthan, India	Bhandana, Dausa, Dausa, Rajasthan, India	2	75.908956	26.882054	76.204854	26.873929	10	14	t
\.


--
-- TOC entry 3250 (class 0 OID 25230)
-- Dependencies: 227
-- Data for Name: offer_offer_ride; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.offer_offer_ride (id, source, dest, cap, date, "time", dlat, dlon, slat, slon, offer_maker) FROM stdin;
2	Jaipur, Rajasthan, India	Dausa, Rajasthan, India	3	2021-06-18	19:55:00	26.89	76.33583	26.91667	75.86667	16
3	Dausa Railway Station, Dausa, Rajasthan, India	Bandikui, Baswa, Dausa, Rajasthan, India	2	2021-06-19	10:00:00	27.0377	76.563927	26.9001905	76.33025549999999	16
4	Alwar, Rajasthan, India	Dausa, Rajasthan, India	3	2021-06-25	12:45:00	26.89	76.33583	27.56246	76.625	16
5	Bandikui Railway Station, Baswa, Rajasthan, India	Alwar, Rajasthan, India	1	2021-06-25	16:34:00	27.56246	76.625	27.039629	76.566583	16
6	Dausa, Rajasthan, India	Delhi, India	3	2021-07-15	10:00:00	28.66667	77.21667	26.89	76.33583	16
7	Dausa, Rajasthan, India	Ajmer, Rajasthan, India	4	2021-07-20	14:30:00	26.506348	74.655595	26.89	76.33583	16
8	Dausa, Rajasthan, India	Jaipur, Rajasthan, India	3	2021-07-30	10:00:00	26.91667	75.86667	26.89	76.33583	16
9	Dausa, Rajasthan, India	Ajmer, Rajasthan, India	3	2021-08-04	13:14:00	26.506348	74.655595	26.89	76.33583	16
10	Jaipur, Rajasthan, India	Dausa, Rajasthan, India	3	2021-09-13	09:11:00	26.89	76.33583	26.91667	75.86667	16
\.


--
-- TOC entry 3243 (class 0 OID 16936)
-- Dependencies: 220
-- Data for Name: signup_users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.signup_users (id, username, email, password, active_status, date_joined, first_name, is_active, is_staff, is_superuser, last_login, last_name, address, phone, p_pic) FROM stdin;
14	ryuga	sharmaaman041@gmail.com	pbkdf2_sha256$216000$rinHqasAMoYF$BTkAXGKF31gUnxkN73hydQvrRf3GBC0Lase6ej2dLTM=	t	2021-05-22 11:07:48.288402+05:30	Jason	t	f	f	2021-09-10 19:12:20.695221+05:30	Ron	paris,Paris,India,303303	+917239810619	profilepics/about-4_YqbKRmS.jpg
16	ryuga1	sharmaamanji1@gmail.com	pbkdf2_sha256$216000$5gL67kRSK5b0$3jaIUZt1f995IXeZRvNesTwJiMfVuDHNbPFAw5CrfUY=	t	2021-05-22 11:14:58.179338+05:30	Rish	t	f	f	2021-09-10 19:16:12.006712+05:30	Khan	as colony,dausa,India,303303	+917239810619	profilepics/about-5_Tg5LCfG.jpg
\.


--
-- TOC entry 3246 (class 0 OID 25169)
-- Dependencies: 223
-- Data for Name: signup_users_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.signup_users_groups (id, users_id, group_id) FROM stdin;
\.


--
-- TOC entry 3248 (class 0 OID 25181)
-- Dependencies: 225
-- Data for Name: signup_users_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.signup_users_user_permissions (id, users_id, permission_id) FROM stdin;
\.


--
-- TOC entry 3284 (class 0 OID 0)
-- Dependencies: 206
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- TOC entry 3285 (class 0 OID 0)
-- Dependencies: 208
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- TOC entry 3286 (class 0 OID 0)
-- Dependencies: 204
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 60, true);


--
-- TOC entry 3287 (class 0 OID 0)
-- Dependencies: 212
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- TOC entry 3288 (class 0 OID 0)
-- Dependencies: 210
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 1, false);


--
-- TOC entry 3289 (class 0 OID 0)
-- Dependencies: 214
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- TOC entry 3290 (class 0 OID 0)
-- Dependencies: 230
-- Name: axes_accessattempt_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.axes_accessattempt_id_seq', 6, true);


--
-- TOC entry 3291 (class 0 OID 0)
-- Dependencies: 232
-- Name: axes_accesslog_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.axes_accesslog_id_seq', 52, true);


--
-- TOC entry 3292 (class 0 OID 0)
-- Dependencies: 236
-- Name: dbase_message_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.dbase_message_id_seq', 5, true);


--
-- TOC entry 3293 (class 0 OID 0)
-- Dependencies: 234
-- Name: dbase_p_reset_limit_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.dbase_p_reset_limit_id_seq', 1, true);


--
-- TOC entry 3294 (class 0 OID 0)
-- Dependencies: 216
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);


--
-- TOC entry 3295 (class 0 OID 0)
-- Dependencies: 202
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 15, true);


--
-- TOC entry 3296 (class 0 OID 0)
-- Dependencies: 200
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 43, true);


--
-- TOC entry 3297 (class 0 OID 0)
-- Dependencies: 228
-- Name: join_p_rides_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.join_p_rides_id_seq', 16, true);


--
-- TOC entry 3298 (class 0 OID 0)
-- Dependencies: 226
-- Name: offer_offer_ride_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.offer_offer_ride_id_seq', 10, true);


--
-- TOC entry 3299 (class 0 OID 0)
-- Dependencies: 222
-- Name: signup_users_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.signup_users_groups_id_seq', 1, false);


--
-- TOC entry 3300 (class 0 OID 0)
-- Dependencies: 219
-- Name: signup_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.signup_users_id_seq', 16, true);


--
-- TOC entry 3301 (class 0 OID 0)
-- Dependencies: 224
-- Name: signup_users_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.signup_users_user_permissions_id_seq', 1, false);


--
-- TOC entry 3004 (class 2606 OID 16922)
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- TOC entry 3009 (class 2606 OID 16849)
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- TOC entry 3012 (class 2606 OID 16812)
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 3006 (class 2606 OID 16802)
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- TOC entry 2999 (class 2606 OID 16840)
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- TOC entry 3001 (class 2606 OID 16794)
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- TOC entry 3020 (class 2606 OID 16830)
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- TOC entry 3023 (class 2606 OID 16864)
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- TOC entry 3014 (class 2606 OID 16820)
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- TOC entry 3026 (class 2606 OID 16838)
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 3029 (class 2606 OID 16878)
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- TOC entry 3017 (class 2606 OID 16916)
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- TOC entry 3064 (class 2606 OID 25277)
-- Name: axes_accessattempt axes_accessattempt_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.axes_accessattempt
    ADD CONSTRAINT axes_accessattempt_pkey PRIMARY KEY (id);


--
-- TOC entry 3071 (class 2606 OID 25288)
-- Name: axes_accesslog axes_accesslog_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.axes_accesslog
    ADD CONSTRAINT axes_accesslog_pkey PRIMARY KEY (id);


--
-- TOC entry 3045 (class 2606 OID 16964)
-- Name: cache_table cache_table_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cache_table
    ADD CONSTRAINT cache_table_pkey PRIMARY KEY (cache_key);


--
-- TOC entry 3079 (class 2606 OID 25344)
-- Name: dbase_message dbase_message_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dbase_message
    ADD CONSTRAINT dbase_message_pkey PRIMARY KEY (id);


--
-- TOC entry 3077 (class 2606 OID 25321)
-- Name: dbase_p_reset_limit dbase_p_reset_limit_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dbase_p_reset_limit
    ADD CONSTRAINT dbase_p_reset_limit_pkey PRIMARY KEY (id);


--
-- TOC entry 3032 (class 2606 OID 16902)
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- TOC entry 2994 (class 2606 OID 16786)
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- TOC entry 2996 (class 2606 OID 16784)
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- TOC entry 2992 (class 2606 OID 16776)
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- TOC entry 3036 (class 2606 OID 16931)
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- TOC entry 3061 (class 2606 OID 25253)
-- Name: join_p_rides join_p_rides_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.join_p_rides
    ADD CONSTRAINT join_p_rides_pkey PRIMARY KEY (id);


--
-- TOC entry 3059 (class 2606 OID 25238)
-- Name: offer_offer_ride offer_offer_ride_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.offer_offer_ride
    ADD CONSTRAINT offer_offer_ride_pkey PRIMARY KEY (id);


--
-- TOC entry 3048 (class 2606 OID 25174)
-- Name: signup_users_groups signup_users_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.signup_users_groups
    ADD CONSTRAINT signup_users_groups_pkey PRIMARY KEY (id);


--
-- TOC entry 3051 (class 2606 OID 25198)
-- Name: signup_users_groups signup_users_groups_users_id_group_id_fb6d84a0_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.signup_users_groups
    ADD CONSTRAINT signup_users_groups_users_id_group_id_fb6d84a0_uniq UNIQUE (users_id, group_id);


--
-- TOC entry 3039 (class 2606 OID 16944)
-- Name: signup_users signup_users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.signup_users
    ADD CONSTRAINT signup_users_pkey PRIMARY KEY (id);


--
-- TOC entry 3053 (class 2606 OID 25212)
-- Name: signup_users_user_permissions signup_users_user_permis_users_id_permission_id_4938ec3d_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.signup_users_user_permissions
    ADD CONSTRAINT signup_users_user_permis_users_id_permission_id_4938ec3d_uniq UNIQUE (users_id, permission_id);


--
-- TOC entry 3056 (class 2606 OID 25186)
-- Name: signup_users_user_permissions signup_users_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.signup_users_user_permissions
    ADD CONSTRAINT signup_users_user_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 3042 (class 2606 OID 25195)
-- Name: signup_users signup_users_username_a0ee1826_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.signup_users
    ADD CONSTRAINT signup_users_username_a0ee1826_uniq UNIQUE (username);


--
-- TOC entry 3002 (class 1259 OID 16923)
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- TOC entry 3007 (class 1259 OID 16860)
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- TOC entry 3010 (class 1259 OID 16861)
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- TOC entry 2997 (class 1259 OID 16846)
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- TOC entry 3018 (class 1259 OID 16876)
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- TOC entry 3021 (class 1259 OID 16875)
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- TOC entry 3024 (class 1259 OID 16890)
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- TOC entry 3027 (class 1259 OID 16889)
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- TOC entry 3015 (class 1259 OID 16917)
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- TOC entry 3062 (class 1259 OID 25289)
-- Name: axes_accessattempt_ip_address_10922d9c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX axes_accessattempt_ip_address_10922d9c ON public.axes_accessattempt USING btree (ip_address);


--
-- TOC entry 3065 (class 1259 OID 25291)
-- Name: axes_accessattempt_user_agent_ad89678b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX axes_accessattempt_user_agent_ad89678b ON public.axes_accessattempt USING btree (user_agent);


--
-- TOC entry 3066 (class 1259 OID 25292)
-- Name: axes_accessattempt_user_agent_ad89678b_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX axes_accessattempt_user_agent_ad89678b_like ON public.axes_accessattempt USING btree (user_agent varchar_pattern_ops);


--
-- TOC entry 3067 (class 1259 OID 25293)
-- Name: axes_accessattempt_username_3f2d4ca0; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX axes_accessattempt_username_3f2d4ca0 ON public.axes_accessattempt USING btree (username);


--
-- TOC entry 3068 (class 1259 OID 25294)
-- Name: axes_accessattempt_username_3f2d4ca0_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX axes_accessattempt_username_3f2d4ca0_like ON public.axes_accessattempt USING btree (username varchar_pattern_ops);


--
-- TOC entry 3069 (class 1259 OID 25295)
-- Name: axes_accesslog_ip_address_86b417e5; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX axes_accesslog_ip_address_86b417e5 ON public.axes_accesslog USING btree (ip_address);


--
-- TOC entry 3072 (class 1259 OID 25297)
-- Name: axes_accesslog_user_agent_0e659004; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX axes_accesslog_user_agent_0e659004 ON public.axes_accesslog USING btree (user_agent);


--
-- TOC entry 3073 (class 1259 OID 25298)
-- Name: axes_accesslog_user_agent_0e659004_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX axes_accesslog_user_agent_0e659004_like ON public.axes_accesslog USING btree (user_agent varchar_pattern_ops);


--
-- TOC entry 3074 (class 1259 OID 25299)
-- Name: axes_accesslog_username_df93064b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX axes_accesslog_username_df93064b ON public.axes_accesslog USING btree (username);


--
-- TOC entry 3075 (class 1259 OID 25300)
-- Name: axes_accesslog_username_df93064b_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX axes_accesslog_username_df93064b_like ON public.axes_accesslog USING btree (username varchar_pattern_ops);


--
-- TOC entry 3043 (class 1259 OID 16965)
-- Name: cache_table_expires; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX cache_table_expires ON public.cache_table USING btree (expires);


--
-- TOC entry 3030 (class 1259 OID 16913)
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- TOC entry 3033 (class 1259 OID 16914)
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- TOC entry 3034 (class 1259 OID 16933)
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- TOC entry 3037 (class 1259 OID 16932)
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- TOC entry 3046 (class 1259 OID 25210)
-- Name: signup_users_groups_group_id_f461d91a; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX signup_users_groups_group_id_f461d91a ON public.signup_users_groups USING btree (group_id);


--
-- TOC entry 3049 (class 1259 OID 25209)
-- Name: signup_users_groups_users_id_65c952db; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX signup_users_groups_users_id_65c952db ON public.signup_users_groups USING btree (users_id);


--
-- TOC entry 3054 (class 1259 OID 25224)
-- Name: signup_users_user_permissions_permission_id_1dafccda; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX signup_users_user_permissions_permission_id_1dafccda ON public.signup_users_user_permissions USING btree (permission_id);


--
-- TOC entry 3057 (class 1259 OID 25223)
-- Name: signup_users_user_permissions_users_id_957214f1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX signup_users_user_permissions_users_id_957214f1 ON public.signup_users_user_permissions USING btree (users_id);


--
-- TOC entry 3040 (class 1259 OID 25196)
-- Name: signup_users_username_a0ee1826_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX signup_users_username_a0ee1826_like ON public.signup_users USING btree (username varchar_pattern_ops);


--
-- TOC entry 3082 (class 2606 OID 16855)
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3081 (class 2606 OID 16850)
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3080 (class 2606 OID 16841)
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3084 (class 2606 OID 16870)
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3083 (class 2606 OID 16865)
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3086 (class 2606 OID 16884)
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3085 (class 2606 OID 16879)
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3087 (class 2606 OID 16903)
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3088 (class 2606 OID 16908)
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3090 (class 2606 OID 25204)
-- Name: signup_users_groups signup_users_groups_group_id_f461d91a_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.signup_users_groups
    ADD CONSTRAINT signup_users_groups_group_id_f461d91a_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3089 (class 2606 OID 25199)
-- Name: signup_users_groups signup_users_groups_users_id_65c952db_fk_signup_users_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.signup_users_groups
    ADD CONSTRAINT signup_users_groups_users_id_65c952db_fk_signup_users_id FOREIGN KEY (users_id) REFERENCES public.signup_users(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3092 (class 2606 OID 25218)
-- Name: signup_users_user_permissions signup_users_user_pe_permission_id_1dafccda_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.signup_users_user_permissions
    ADD CONSTRAINT signup_users_user_pe_permission_id_1dafccda_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3091 (class 2606 OID 25213)
-- Name: signup_users_user_permissions signup_users_user_pe_users_id_957214f1_fk_signup_us; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.signup_users_user_permissions
    ADD CONSTRAINT signup_users_user_pe_users_id_957214f1_fk_signup_us FOREIGN KEY (users_id) REFERENCES public.signup_users(id) DEFERRABLE INITIALLY DEFERRED;


-- Completed on 2021-10-06 23:07:44

--
-- PostgreSQL database dump complete
--

