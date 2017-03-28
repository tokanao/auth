--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: customers; Type: TABLE; Schema: public; Owner: toka; Tablespace: 
--

CREATE TABLE customers (
    id integer NOT NULL,
    personal_cd character varying,
    parent_customer_id integer,
    member_store_cd character varying,
    charge_cd character varying,
    customer_nm character varying,
    customer_kana character varying,
    customer_type character varying(1),
    is_manage_company character varying(1),
    president_nm character varying,
    post character varying,
    birth date,
    sex character varying(1),
    zip_cd character varying,
    addr1 character varying,
    addr2 character varying,
    addr3 character varying,
    tel character varying,
    fax character varying,
    mobile_number character varying,
    email character varying,
    si_owner_f character varying(1),
    si_client_f character varying(1),
    bb_owner_f character varying(1),
    bb_agency_f character varying(1),
    note text,
    create_user_id integer,
    update_user_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.customers OWNER TO toka;

--
-- Name: customers_id_seq; Type: SEQUENCE; Schema: public; Owner: toka
--

CREATE SEQUENCE customers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.customers_id_seq OWNER TO toka;

--
-- Name: customers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: toka
--

ALTER SEQUENCE customers_id_seq OWNED BY customers.id;


--
-- Name: roles; Type: TABLE; Schema: public; Owner: toka; Tablespace: 
--

CREATE TABLE roles (
    id integer NOT NULL,
    name character varying NOT NULL,
    title character varying NOT NULL,
    description text NOT NULL,
    the_role text NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.roles OWNER TO toka;

--
-- Name: roles_id_seq; Type: SEQUENCE; Schema: public; Owner: toka
--

CREATE SEQUENCE roles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.roles_id_seq OWNER TO toka;

--
-- Name: roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: toka
--

ALTER SEQUENCE roles_id_seq OWNED BY roles.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: toka; Tablespace: 
--

CREATE TABLE schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO toka;

--
-- Name: users; Type: TABLE; Schema: public; Owner: toka; Tablespace: 
--

CREATE TABLE users (
    id integer NOT NULL,
    name character varying,
    login_id character varying,
    login_password character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    role_id integer
);


ALTER TABLE public.users OWNER TO toka;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: toka
--

CREATE SEQUENCE users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO toka;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: toka
--

ALTER SEQUENCE users_id_seq OWNED BY users.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: toka
--

ALTER TABLE ONLY customers ALTER COLUMN id SET DEFAULT nextval('customers_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: toka
--

ALTER TABLE ONLY roles ALTER COLUMN id SET DEFAULT nextval('roles_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: toka
--

ALTER TABLE ONLY users ALTER COLUMN id SET DEFAULT nextval('users_id_seq'::regclass);


--
-- Data for Name: customers; Type: TABLE DATA; Schema: public; Owner: toka
--

COPY customers (id, personal_cd, parent_customer_id, member_store_cd, charge_cd, customer_nm, customer_kana, customer_type, is_manage_company, president_nm, post, birth, sex, zip_cd, addr1, addr2, addr3, tel, fax, mobile_number, email, si_owner_f, si_client_f, bb_owner_f, bb_agency_f, note, create_user_id, update_user_id, created_at, updated_at) FROM stdin;
1	1	\N			toka	nao					2017-02-22															\N	\N	2017-02-22 10:23:00	2017-02-22 10:23:00
\.


--
-- Name: customers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: toka
--

SELECT pg_catalog.setval('customers_id_seq', 1, true);


--
-- Data for Name: roles; Type: TABLE DATA; Schema: public; Owner: toka
--

COPY roles (id, name, title, description, the_role, created_at, updated_at) FROM stdin;
1	admin	Role for admin	This user can do anything	{"system":{"administrator":true}}	2017-02-23 07:57:56.012373	2017-03-28 02:30:45.045654
5	user	user	user	{}	2017-03-28 04:29:38.083035	2017-03-28 04:29:38.083035
4	manager	manager	manager	{"customers":{"new":false,"edit":true}}	2017-03-28 04:29:29.484277	2017-03-28 04:30:08.703646
\.


--
-- Name: roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: toka
--

SELECT pg_catalog.setval('roles_id_seq', 5, true);


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: toka
--

COPY schema_migrations (version) FROM stdin;
20170223071724
20170223075514
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: toka
--

COPY users (id, name, login_id, login_password, created_at, updated_at, role_id) FROM stdin;
3	nohara	nohara	nohara	2017-02-22 09:53:00	2017-02-22 09:53:00	\N
5	user	user	user	2017-02-23 06:03:00	2017-02-23 06:03:00	3
6	guest	guest	guest	2017-03-06 02:56:00	2017-03-06 02:56:00	\N
2	admin	admin	admin	2017-02-22 09:51:00	2017-02-22 09:51:00	1
1	toka	toka	toka	2017-02-22 09:50:00	2017-02-22 09:50:00	4
\.


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: toka
--

SELECT pg_catalog.setval('users_id_seq', 6, true);


--
-- Name: customers_pkey; Type: CONSTRAINT; Schema: public; Owner: toka; Tablespace: 
--

ALTER TABLE ONLY customers
    ADD CONSTRAINT customers_pkey PRIMARY KEY (id);


--
-- Name: roles_pkey; Type: CONSTRAINT; Schema: public; Owner: toka; Tablespace: 
--

ALTER TABLE ONLY roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);


--
-- Name: users_pkey; Type: CONSTRAINT; Schema: public; Owner: toka; Tablespace: 
--

ALTER TABLE ONLY users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: unique_schema_migrations; Type: INDEX; Schema: public; Owner: toka; Tablespace: 
--

CREATE UNIQUE INDEX unique_schema_migrations ON schema_migrations USING btree (version);


--
-- Name: public; Type: ACL; Schema: -; Owner: toka
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM toka;
GRANT ALL ON SCHEMA public TO toka;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

