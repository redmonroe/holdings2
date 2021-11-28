--
-- PostgreSQL database dump
--

-- Dumped from database version 12.8 (Ubuntu 12.8-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.8 (Ubuntu 12.8-0ubuntu0.20.04.1)

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
-- Name: LBOARD_BROAD_ASSET_CLASS_1121_2021-11-23; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."LBOARD_BROAD_ASSET_CLASS_1121_2021-11-23" (
    id integer NOT NULL,
    name text,
    off_hi double precision,
    gain_factor double precision
);


ALTER TABLE public."LBOARD_BROAD_ASSET_CLASS_1121_2021-11-23" OWNER TO postgres;

--
-- Name: LBOARD_BROAD_ASSET_CLASS_1121_2021-11-23_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."LBOARD_BROAD_ASSET_CLASS_1121_2021-11-23_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."LBOARD_BROAD_ASSET_CLASS_1121_2021-11-23_id_seq" OWNER TO postgres;

--
-- Name: LBOARD_BROAD_ASSET_CLASS_1121_2021-11-23_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."LBOARD_BROAD_ASSET_CLASS_1121_2021-11-23_id_seq" OWNED BY public."LBOARD_BROAD_ASSET_CLASS_1121_2021-11-23".id;


--
-- Name: PM_2021-11-26; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."PM_2021-11-26" (
    id integer NOT NULL,
    name text,
    off_hi double precision,
    gain_factor double precision
);


ALTER TABLE public."PM_2021-11-26" OWNER TO postgres;

--
-- Name: PM_2021-11-26_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."PM_2021-11-26_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."PM_2021-11-26_id_seq" OWNER TO postgres;

--
-- Name: PM_2021-11-26_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."PM_2021-11-26_id_seq" OWNED BY public."PM_2021-11-26".id;


--
-- Name: fang+_2021-11-26; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."fang+_2021-11-26" (
    id integer NOT NULL,
    name text,
    off_hi double precision,
    gain_factor double precision
);


ALTER TABLE public."fang+_2021-11-26" OWNER TO postgres;

--
-- Name: fang+_2021-11-26_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."fang+_2021-11-26_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."fang+_2021-11-26_id_seq" OWNER TO postgres;

--
-- Name: fang+_2021-11-26_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."fang+_2021-11-26_id_seq" OWNED BY public."fang+_2021-11-26".id;


--
-- Name: fang_names_2021-11-23; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."fang_names_2021-11-23" (
    id integer NOT NULL,
    name text,
    off_hi double precision,
    gain_factor double precision
);


ALTER TABLE public."fang_names_2021-11-23" OWNER TO postgres;

--
-- Name: fang_names_2021-11-23_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."fang_names_2021-11-23_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."fang_names_2021-11-23_id_seq" OWNER TO postgres;

--
-- Name: fang_names_2021-11-23_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."fang_names_2021-11-23_id_seq" OWNED BY public."fang_names_2021-11-23".id;


--
-- Name: fang_names_2021-11-25; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."fang_names_2021-11-25" (
    id integer NOT NULL,
    name text,
    off_hi double precision,
    gain_factor double precision
);


ALTER TABLE public."fang_names_2021-11-25" OWNER TO postgres;

--
-- Name: fang_names_2021-11-25_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."fang_names_2021-11-25_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."fang_names_2021-11-25_id_seq" OWNER TO postgres;

--
-- Name: fang_names_2021-11-25_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."fang_names_2021-11-25_id_seq" OWNED BY public."fang_names_2021-11-25".id;


--
-- Name: gld weekly5y; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."gld weekly5y" (
    id integer NOT NULL,
    name text,
    price double precision,
    date date
);


ALTER TABLE public."gld weekly5y" OWNER TO postgres;

--
-- Name: gld weekly5y_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."gld weekly5y_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."gld weekly5y_id_seq" OWNER TO postgres;

--
-- Name: gld weekly5y_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."gld weekly5y_id_seq" OWNED BY public."gld weekly5y".id;


--
-- Name: homies_2021-11-26; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."homies_2021-11-26" (
    id integer NOT NULL,
    name text,
    off_hi double precision,
    gain_factor double precision
);


ALTER TABLE public."homies_2021-11-26" OWNER TO postgres;

--
-- Name: homies_2021-11-26_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."homies_2021-11-26_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."homies_2021-11-26_id_seq" OWNER TO postgres;

--
-- Name: homies_2021-11-26_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."homies_2021-11-26_id_seq" OWNED BY public."homies_2021-11-26".id;


--
-- Name: index_components/fang_names.csv_2021-11-22; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."index_components/fang_names.csv_2021-11-22" (
    id integer NOT NULL,
    name text,
    off_hi double precision,
    gain_factor double precision
);


ALTER TABLE public."index_components/fang_names.csv_2021-11-22" OWNER TO postgres;

--
-- Name: index_components/fang_names.csv_2021-11-22_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."index_components/fang_names.csv_2021-11-22_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."index_components/fang_names.csv_2021-11-22_id_seq" OWNER TO postgres;

--
-- Name: index_components/fang_names.csv_2021-11-22_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."index_components/fang_names.csv_2021-11-22_id_seq" OWNED BY public."index_components/fang_names.csv_2021-11-22".id;


--
-- Name: index_components_2021-11-23; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."index_components_2021-11-23" (
    id integer NOT NULL,
    name text,
    off_hi double precision,
    gain_factor double precision
);


ALTER TABLE public."index_components_2021-11-23" OWNER TO postgres;

--
-- Name: index_components_2021-11-23_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."index_components_2021-11-23_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."index_components_2021-11-23_id_seq" OWNER TO postgres;

--
-- Name: index_components_2021-11-23_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."index_components_2021-11-23_id_seq" OWNED BY public."index_components_2021-11-23".id;


--
-- Name: iwm weekly5y; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."iwm weekly5y" (
    id integer NOT NULL,
    name text,
    price double precision,
    date date
);


ALTER TABLE public."iwm weekly5y" OWNER TO postgres;

--
-- Name: iwm weekly5y_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."iwm weekly5y_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."iwm weekly5y_id_seq" OWNER TO postgres;

--
-- Name: iwm weekly5y_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."iwm weekly5y_id_seq" OWNED BY public."iwm weekly5y".id;


--
-- Name: kre weekly5y; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."kre weekly5y" (
    id integer NOT NULL,
    name text,
    price double precision,
    date date
);


ALTER TABLE public."kre weekly5y" OWNER TO postgres;

--
-- Name: kre weekly5y_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."kre weekly5y_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."kre weekly5y_id_seq" OWNER TO postgres;

--
-- Name: kre weekly5y_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."kre weekly5y_id_seq" OWNED BY public."kre weekly5y".id;


--
-- Name: l_and_l_2021-11-26; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."l_and_l_2021-11-26" (
    id integer NOT NULL,
    name text,
    off_hi double precision,
    gain_factor double precision
);


ALTER TABLE public."l_and_l_2021-11-26" OWNER TO postgres;

--
-- Name: l_and_l_2021-11-26_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."l_and_l_2021-11-26_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."l_and_l_2021-11-26_id_seq" OWNER TO postgres;

--
-- Name: l_and_l_2021-11-26_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."l_and_l_2021-11-26_id_seq" OWNED BY public."l_and_l_2021-11-26".id;


--
-- Name: leaders & laggards_2021-11-23; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."leaders & laggards_2021-11-23" (
    id integer NOT NULL,
    name text,
    off_hi double precision,
    gain_factor double precision
);


ALTER TABLE public."leaders & laggards_2021-11-23" OWNER TO postgres;

--
-- Name: leaders & laggards_2021-11-23_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."leaders & laggards_2021-11-23_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."leaders & laggards_2021-11-23_id_seq" OWNER TO postgres;

--
-- Name: leaders & laggards_2021-11-23_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."leaders & laggards_2021-11-23_id_seq" OWNED BY public."leaders & laggards_2021-11-23".id;


--
-- Name: leaders & laggards_2021-11-25; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."leaders & laggards_2021-11-25" (
    id integer NOT NULL,
    name text,
    off_hi double precision,
    gain_factor double precision
);


ALTER TABLE public."leaders & laggards_2021-11-25" OWNER TO postgres;

--
-- Name: leaders & laggards_2021-11-25_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."leaders & laggards_2021-11-25_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."leaders & laggards_2021-11-25_id_seq" OWNER TO postgres;

--
-- Name: leaders & laggards_2021-11-25_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."leaders & laggards_2021-11-25_id_seq" OWNED BY public."leaders & laggards_2021-11-25".id;


--
-- Name: leaders_11/20/2021; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."leaders_11/20/2021" (
    id integer NOT NULL,
    name text,
    price text
);


ALTER TABLE public."leaders_11/20/2021" OWNER TO postgres;

--
-- Name: leaders_11/20/2021_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."leaders_11/20/2021_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."leaders_11/20/2021_id_seq" OWNER TO postgres;

--
-- Name: leaders_11/20/2021_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."leaders_11/20/2021_id_seq" OWNED BY public."leaders_11/20/2021".id;


--
-- Name: retail_2021-11-26; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."retail_2021-11-26" (
    id integer NOT NULL,
    name text,
    off_hi double precision,
    gain_factor double precision
);


ALTER TABLE public."retail_2021-11-26" OWNER TO postgres;

--
-- Name: retail_2021-11-26_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."retail_2021-11-26_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."retail_2021-11-26_id_seq" OWNER TO postgres;

--
-- Name: retail_2021-11-26_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."retail_2021-11-26_id_seq" OWNED BY public."retail_2021-11-26".id;


--
-- Name: retail_xrt_2021-11-25; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."retail_xrt_2021-11-25" (
    id integer NOT NULL,
    name text,
    off_hi double precision,
    gain_factor double precision
);


ALTER TABLE public."retail_xrt_2021-11-25" OWNER TO postgres;

--
-- Name: retail_xrt_2021-11-25_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."retail_xrt_2021-11-25_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."retail_xrt_2021-11-25_id_seq" OWNER TO postgres;

--
-- Name: retail_xrt_2021-11-25_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."retail_xrt_2021-11-25_id_seq" OWNED BY public."retail_xrt_2021-11-25".id;


--
-- Name: semis_12/05/2020; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."semis_12/05/2020" (
    id integer NOT NULL,
    name text,
    price text
);


ALTER TABLE public."semis_12/05/2020" OWNER TO postgres;

--
-- Name: semis_12/05/2020_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."semis_12/05/2020_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."semis_12/05/2020_id_seq" OWNER TO postgres;

--
-- Name: semis_12/05/2020_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."semis_12/05/2020_id_seq" OWNED BY public."semis_12/05/2020".id;


--
-- Name: soxx_2021-11-23; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."soxx_2021-11-23" (
    id integer NOT NULL,
    name text,
    off_hi double precision,
    gain_factor double precision
);


ALTER TABLE public."soxx_2021-11-23" OWNER TO postgres;

--
-- Name: soxx_2021-11-23_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."soxx_2021-11-23_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."soxx_2021-11-23_id_seq" OWNER TO postgres;

--
-- Name: soxx_2021-11-23_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."soxx_2021-11-23_id_seq" OWNED BY public."soxx_2021-11-23".id;


--
-- Name: soxx_2021-11-26; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."soxx_2021-11-26" (
    id integer NOT NULL,
    name text,
    off_hi double precision,
    gain_factor double precision
);


ALTER TABLE public."soxx_2021-11-26" OWNER TO postgres;

--
-- Name: soxx_2021-11-26_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."soxx_2021-11-26_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."soxx_2021-11-26_id_seq" OWNER TO postgres;

--
-- Name: soxx_2021-11-26_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."soxx_2021-11-26_id_seq" OWNED BY public."soxx_2021-11-26".id;


--
-- Name: spy weekly5y; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."spy weekly5y" (
    id integer NOT NULL,
    name text,
    price double precision,
    date date
);


ALTER TABLE public."spy weekly5y" OWNER TO postgres;

--
-- Name: spy weekly5y_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."spy weekly5y_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."spy weekly5y_id_seq" OWNER TO postgres;

--
-- Name: spy weekly5y_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."spy weekly5y_id_seq" OWNED BY public."spy weekly5y".id;


--
-- Name: tlt weekly5y; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."tlt weekly5y" (
    id integer NOT NULL,
    name text,
    price double precision,
    date date
);


ALTER TABLE public."tlt weekly5y" OWNER TO postgres;

--
-- Name: tlt weekly5y_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."tlt weekly5y_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."tlt weekly5y_id_seq" OWNER TO postgres;

--
-- Name: tlt weekly5y_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."tlt weekly5y_id_seq" OWNED BY public."tlt weekly5y".id;


--
-- Name: vtv weekly5y; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."vtv weekly5y" (
    id integer NOT NULL,
    name text,
    price double precision,
    date date
);


ALTER TABLE public."vtv weekly5y" OWNER TO postgres;

--
-- Name: vtv weekly5y_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."vtv weekly5y_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."vtv weekly5y_id_seq" OWNER TO postgres;

--
-- Name: vtv weekly5y_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."vtv weekly5y_id_seq" OWNED BY public."vtv weekly5y".id;


--
-- Name: vug weekly5y; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."vug weekly5y" (
    id integer NOT NULL,
    name text,
    price double precision,
    date date
);


ALTER TABLE public."vug weekly5y" OWNER TO postgres;

--
-- Name: vug weekly5y_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."vug weekly5y_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."vug weekly5y_id_seq" OWNER TO postgres;

--
-- Name: vug weekly5y_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."vug weekly5y_id_seq" OWNED BY public."vug weekly5y".id;


--
-- Name: xle weekly5y; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."xle weekly5y" (
    id integer NOT NULL,
    name text,
    price double precision,
    date date
);


ALTER TABLE public."xle weekly5y" OWNER TO postgres;

--
-- Name: xle weekly5y_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."xle weekly5y_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."xle weekly5y_id_seq" OWNER TO postgres;

--
-- Name: xle weekly5y_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."xle weekly5y_id_seq" OWNED BY public."xle weekly5y".id;


--
-- Name: LBOARD_BROAD_ASSET_CLASS_1121_2021-11-23 id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."LBOARD_BROAD_ASSET_CLASS_1121_2021-11-23" ALTER COLUMN id SET DEFAULT nextval('public."LBOARD_BROAD_ASSET_CLASS_1121_2021-11-23_id_seq"'::regclass);


--
-- Name: PM_2021-11-26 id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."PM_2021-11-26" ALTER COLUMN id SET DEFAULT nextval('public."PM_2021-11-26_id_seq"'::regclass);


--
-- Name: fang+_2021-11-26 id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."fang+_2021-11-26" ALTER COLUMN id SET DEFAULT nextval('public."fang+_2021-11-26_id_seq"'::regclass);


--
-- Name: fang_names_2021-11-23 id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."fang_names_2021-11-23" ALTER COLUMN id SET DEFAULT nextval('public."fang_names_2021-11-23_id_seq"'::regclass);


--
-- Name: fang_names_2021-11-25 id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."fang_names_2021-11-25" ALTER COLUMN id SET DEFAULT nextval('public."fang_names_2021-11-25_id_seq"'::regclass);


--
-- Name: gld weekly5y id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."gld weekly5y" ALTER COLUMN id SET DEFAULT nextval('public."gld weekly5y_id_seq"'::regclass);


--
-- Name: homies_2021-11-26 id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."homies_2021-11-26" ALTER COLUMN id SET DEFAULT nextval('public."homies_2021-11-26_id_seq"'::regclass);


--
-- Name: index_components/fang_names.csv_2021-11-22 id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."index_components/fang_names.csv_2021-11-22" ALTER COLUMN id SET DEFAULT nextval('public."index_components/fang_names.csv_2021-11-22_id_seq"'::regclass);


--
-- Name: index_components_2021-11-23 id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."index_components_2021-11-23" ALTER COLUMN id SET DEFAULT nextval('public."index_components_2021-11-23_id_seq"'::regclass);


--
-- Name: iwm weekly5y id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."iwm weekly5y" ALTER COLUMN id SET DEFAULT nextval('public."iwm weekly5y_id_seq"'::regclass);


--
-- Name: kre weekly5y id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."kre weekly5y" ALTER COLUMN id SET DEFAULT nextval('public."kre weekly5y_id_seq"'::regclass);


--
-- Name: l_and_l_2021-11-26 id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."l_and_l_2021-11-26" ALTER COLUMN id SET DEFAULT nextval('public."l_and_l_2021-11-26_id_seq"'::regclass);


--
-- Name: leaders & laggards_2021-11-23 id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."leaders & laggards_2021-11-23" ALTER COLUMN id SET DEFAULT nextval('public."leaders & laggards_2021-11-23_id_seq"'::regclass);


--
-- Name: leaders & laggards_2021-11-25 id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."leaders & laggards_2021-11-25" ALTER COLUMN id SET DEFAULT nextval('public."leaders & laggards_2021-11-25_id_seq"'::regclass);


--
-- Name: leaders_11/20/2021 id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."leaders_11/20/2021" ALTER COLUMN id SET DEFAULT nextval('public."leaders_11/20/2021_id_seq"'::regclass);


--
-- Name: retail_2021-11-26 id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."retail_2021-11-26" ALTER COLUMN id SET DEFAULT nextval('public."retail_2021-11-26_id_seq"'::regclass);


--
-- Name: retail_xrt_2021-11-25 id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."retail_xrt_2021-11-25" ALTER COLUMN id SET DEFAULT nextval('public."retail_xrt_2021-11-25_id_seq"'::regclass);


--
-- Name: semis_12/05/2020 id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."semis_12/05/2020" ALTER COLUMN id SET DEFAULT nextval('public."semis_12/05/2020_id_seq"'::regclass);


--
-- Name: soxx_2021-11-23 id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."soxx_2021-11-23" ALTER COLUMN id SET DEFAULT nextval('public."soxx_2021-11-23_id_seq"'::regclass);


--
-- Name: soxx_2021-11-26 id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."soxx_2021-11-26" ALTER COLUMN id SET DEFAULT nextval('public."soxx_2021-11-26_id_seq"'::regclass);


--
-- Name: spy weekly5y id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."spy weekly5y" ALTER COLUMN id SET DEFAULT nextval('public."spy weekly5y_id_seq"'::regclass);


--
-- Name: tlt weekly5y id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."tlt weekly5y" ALTER COLUMN id SET DEFAULT nextval('public."tlt weekly5y_id_seq"'::regclass);


--
-- Name: vtv weekly5y id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."vtv weekly5y" ALTER COLUMN id SET DEFAULT nextval('public."vtv weekly5y_id_seq"'::regclass);


--
-- Name: vug weekly5y id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."vug weekly5y" ALTER COLUMN id SET DEFAULT nextval('public."vug weekly5y_id_seq"'::regclass);


--
-- Name: xle weekly5y id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."xle weekly5y" ALTER COLUMN id SET DEFAULT nextval('public."xle weekly5y_id_seq"'::regclass);


--
-- Data for Name: LBOARD_BROAD_ASSET_CLASS_1121_2021-11-23; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."LBOARD_BROAD_ASSET_CLASS_1121_2021-11-23" (id, name, off_hi, gain_factor) FROM stdin;
1	KRE	-0.004290115438196684	1.502528751457233
2	XRT	0	1.6745630049519395
3	XLF	-0.02584931720016237	1.390372486568807
4	IYT	-0.01291760045921464	1.290775162539901
5	XTL	-0.04272848440151311	1.2566972139900696
6	XLK	-0.011149399855989617	1.381053227123075
7	EFA	-0.026806347708332345	1.1137917133773365
8	SIL	-0.19958934432091457	1.114988574457633
9	WOOD	-0.09963823658551352	1.1972237225509315
10	XLC	-0.07897507784713786	1.2056976583987433
11	XLB	-0.018313002817118007	1.2521234104257881
12	SOCL	-0.2394648575455165	1.0233953273045326
13	IHE 	-0.020540845355892623	1.1188445506913507
14	ESPO	-0.08694308620359137	1.1491923542513611
15	XHB	-0.00023800442277932543	1.4862044113660435
16	QQQ	-0.01160920457134429	1.3354067581414906
17	SOXX	-0.014487435130781545	1.4815890709754012
18	GDX	-0.16286145274362096	1.1251278583648292
19	CHIQ	-0.3082461971100633	1.075090247885081
20	COPX 	-0.18407406553258954	1.3426131199670583
21	EUFN	-0.04528306402231386	1.2033293780228982
22	IBUY	-0.250413302268123	1
23	IHI	-0.04266470297329372	1.233960440357016
24	XLRE	-0.015596107709266005	1.3452047511487684
25	KBE	-0.008686587701021264	1.4279279950099635
26	IDU 	-0.021486626096481776	1.1627104756347397
27	IGV	-0.036556429905395205	1.269890910615835
28	MJ	-0.4875801109380029	1
29	MOO	-0.014670918023697577	1.2568530073620443
30	FDN	-0.05635366770779837	1.1461486121864808
31	OIH	-0.24055757950596923	1.2576321577155425
32	XLP	-0.005205441827643376	1.1472354442630839
33	XLV	-0.032736651710043585	1.2095211272318627
34	URA	-0.13337752593968877	2.189438404951368
35	UFO	-0.10131331511869046	1.1473054150276538
36	XME	-0.05580222210342445	1.4806098129262097
37	RTM	-0.01564760847500901	1.2881294890034531
38	RGI	-0.0048468778379805455	1.3059871651907269
39	XLU	-0.0317460490635636	1.1602124464759282
40	SLX 	-0.17122781676903653	1.3667077487462533
41	SKYY	-0.06906682698895028	1.2342011982088408
42	VNQI	-0.06097155649039032	1.0710516464415583
43	VNQ	-0.01839164216735889	1.3107017894957556
44	REZ	-0.008116882982842188	1.385068823666551
45	TAN	-0.2084569813645184	1.3238213064144233
46	PBJ	-0.006372298316975278	1.2593020523006355
47	IBB	-0.1258745531546751	1.0730344321039293
48	CHIX	-0.13873870984186187	1.0199146319071606
49	IHF	-0.04287130052803734	1.1902402675699386
50	KWEB	-0.5393346062926232	1.0678158690886577
51	XLE	-0.04497080342201798	1.4680738034180894
52	CHIU	-0.11109120148172025	1.259862518890024
53	XOP	-0.08549810711597683	1.7334139595640778
54	XLY	-0.002506852634032053	1.349264205195271
55	XLI	-0.008232038075317138	1.250678315931467
56	ARKK	-0.3071273687885946	1.0400728636085699
57	CHII	-0.031627329290646156	1.1968728157671988
58	CHIR	-0.3181561031055692	1.0715555826822916
59	ARKG	-0.4190697397212455	1
60	CRAK	-0.11437699715555205	1.1291242433730315
61	EVX	0	1.3670452568009301
62	BETZ	-0.16979969489475966	1.1391120916953232
63	INDS	-0.002327438777846802	1.4650094709058228
64	CIBR	-0.053288213258639305	1.3804573691218296
65	CHIE	-0.14866516524097395	1.3407007127639452
66	REMX	-0.0010846662918067018	2.134046425614965
67	IAI	-0.02331284897710284	1.509822600291242
68	PBW	-0.32482876208920586	1.2023857170700263
69	FAN	-0.2276579374360237	1
70	CHIH	-0.2745548679466786	1.0242127727228356
71	BBC	-0.29744707443990137	1
72	ITB	-0.0028007792763312667	1.4314692997744087
73	tlt	-0.08488332293033507	1.0880890175672542
74	ief	-0.05354033794537949	1.0087587178135127
75	ethe	-0.125409692398051	4.235480829463922
76	blok	-0.09261654082674298	1.8945233624093307
77	gbtc	-0.20370368750700119	2.3971331946121524
\.


--
-- Data for Name: PM_2021-11-26; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."PM_2021-11-26" (id, name, off_hi, gain_factor) FROM stdin;
1	NEM	-23.922209226991765	1.044436093958071
2	GOLD	-21.538467359706015	1.077265114359812
3	FNV	-13.920335973889731	1.2862081686993065
4	WPM	-13.210666799159776	1.17459422413875
5	AEM	-28.133666310057016	1.0261335092731283
6	GFI	-11.725847370367026	1.3181257747134243
7	AU	-22.156861249138327	1.3430311732136495
8	KGC	-24.320989805575255	1.1609848240258727
9	RGLD	-18.35953227484034	1.0877006487377923
10	PAAS	-27.167463917930036	1.1125970912851448
11	BTG	-27.49999978712626	1.1976400640537164
12	AUY	-28.72153862573027	1.0462725094866383
13	SSRM	-10.044755825237928	1.2748414860840498
14	AG	-34.271527065139004	1.1687929674050204
15	HL	-38.2743368666756	1.1649269244560523
16	AGI	-15.351352176150757	1.1028169054758972
17	PVG	-5.494506646146946	1.5340022095049113
18	EQX	-31.588782222940004	1.2139303344889978
19	HMY	-29.56204595509395	1.2332267584550234
20	OR	-15.02379355823148	1.2512512799187878
21	BVN	-45.696399043609404	1.1284552763581428
22	EGO	-30.09781799459298	1.1971649082272842
23	CDE	-46.598320004408414	1
24	IAG	-16.48648988251441	1.430555458973959
25	FSM	-59.306356807393726	1
26	SAND	-29.147980744332102	1.1087719970426058
27	NGD	-34.49781550274671	1.4018690901579813
28	EXK	-35.34946363190582	1.406432700431942
29	DRD	-30.851060129311282	1.1084044262104085
30	SVM	-38.714501202321	1.0732984231107245
\.


--
-- Data for Name: fang+_2021-11-26; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."fang+_2021-11-26" (id, name, off_hi, gain_factor) FROM stdin;
1	aapl	-3.1678429081589354	1.3449695727251
2	amzn	-5.774681105289425	1.1680076069066234
3	fb	-12.033591336034721	1.3252705056823144
4	crm	-7.498782276622251	1.359271110205546
5	tsla	-11.469689286002172	1.8625534273013589
6	nflx	-3.5737542549588053	1.3618676056434762
7	goog	-4.765840159835766	1.6499731954607313
8	googl	-4.528076462581043	1.6473334571324034
9	nvda	-4.492953478851181	2.52802635461015
10	adbe	-3.81626446788661	1.5019395135394196
11	aapl	-3.1678429081589354	1.3449695727251
12	amzn	-5.774681105289425	1.1680076069066234
13	fb	-12.033591336034721	1.3252705056823144
14	crm	-7.498782276622251	1.359271110205546
15	tsla	-11.469689286002172	1.8625534273013589
16	nflx	-3.5737542549588053	1.3618676056434762
17	goog	-4.765840159835766	1.6499731954607313
18	googl	-4.528076462581043	1.6473334571324034
19	nvda	-4.492953478851181	2.52802635461015
20	adbe	-3.81626446788661	1.5019395135394196
21	aapl	-3.1678429081589354	1.3449695727251
22	amzn	-5.774681105289425	1.1680076069066234
23	fb	-12.033591336034721	1.3252705056823144
24	crm	-7.498782276622251	1.359271110205546
25	tsla	-11.469689286002172	1.8625534273013589
26	nflx	-3.5737542549588053	1.3618676056434762
27	goog	-4.765840159835766	1.6499731954607313
28	googl	-4.528076462581043	1.6473334571324034
29	nvda	-4.492953478851181	2.52802635461015
30	adbe	-3.81626446788661	1.5019395135394196
\.


--
-- Data for Name: fang_names_2021-11-23; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."fang_names_2021-11-23" (id, name, off_hi, gain_factor) FROM stdin;
1	aapl	0	1.381079074793066
2	amzn	-3.946130659282854	1.190674134922673
3	fb	-9.95008910529963	1.3566598064035071
4	crm	-3.3881216150071225	1.4196757450710147
5	tsla	-5.336756910474005	1.9915817129057076
6	nflx	-4.506668809895354	1.3486916689326278
7	goog	-1.9166062430738817	1.6993374109706374
8	googl	-1.7622783627521788	1.69505630146931
9	nvda	-3.1196023509220683	2.564378309486794
10	adbe	-2.1500047791085386	1.527958686662074
\.


--
-- Data for Name: fang_names_2021-11-25; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."fang_names_2021-11-25" (id, name, off_hi, gain_factor) FROM stdin;
1	aapl	0	1.3889699590699558
2	amzn	-3.7353447788648575	1.1932870155649964
3	fb	-9.93688891711233	1.3568586757257834
4	crm	-5.884454539386697	1.3829930579769774
5	tsla	-8.681027484674663	1.9212229558928324
6	nflx	-4.638498594036678	1.3468297825645144
7	goog	-2.1573481642014114	1.6951664525923538
8	googl	-1.884490886478496	1.692947568642365
9	nvda	-0.9428576054549498	2.6219957134820215
10	adbe	-2.912676022370131	1.5160493334875722
\.


--
-- Data for Name: gld weekly5y; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."gld weekly5y" (id, name, price, date) FROM stdin;
1	gld	112.13999938964844	2016-11-28
2	gld	110.4000015258789	2016-12-05
3	gld	108.05000305175781	2016-12-12
4	gld	107.93000030517578	2016-12-19
5	gld	109.61000061035156	2016-12-26
6	gld	111.75	2017-01-02
7	gld	114.20999908447266	2017-01-09
8	gld	115.05000305175781	2017-01-16
9	gld	113.48999786376953	2017-01-23
10	gld	116.12999725341797	2017-01-30
11	gld	117.5999984741211	2017-02-06
12	gld	117.68000030517578	2017-02-13
13	gld	119.69999694824219	2017-02-20
14	gld	117.51000213623047	2017-02-27
15	gld	114.72000122070312	2017-03-06
16	gld	116.98999786376953	2017-03-13
17	gld	118.86000061035156	2017-03-20
18	gld	118.72000122070312	2017-03-27
19	gld	119.45999908447266	2017-04-03
20	gld	122.5999984741211	2017-04-10
21	gld	122.30999755859375	2017-04-17
22	gld	120.7699966430664	2017-04-24
23	gld	117.01000213623047	2017-05-01
24	gld	116.83000183105469	2017-05-08
25	gld	119.4000015258789	2017-05-15
26	gld	120.54000091552734	2017-05-22
27	gld	121.61000061035156	2017-05-29
28	gld	120.54000091552734	2017-06-05
29	gld	119.33999633789062	2017-06-12
30	gld	119.43000030517578	2017-06-19
31	gld	118.0199966430664	2017-06-26
32	gld	115.27999877929688	2017-07-03
33	gld	116.7699966430664	2017-07-10
34	gld	119.26000213623047	2017-07-17
35	gld	120.69000244140625	2017-07-24
36	gld	119.6500015258789	2017-07-31
37	gld	122.79000091552734	2017-08-07
38	gld	122.30000305175781	2017-08-14
39	gld	122.73999786376953	2017-08-21
40	gld	126.05999755859375	2017-08-28
41	gld	127.97000122070312	2017-09-04
42	gld	125.52999877929688	2017-09-11
43	gld	123.23999786376953	2017-09-18
44	gld	121.58000183105469	2017-09-25
45	gld	121.08999633789062	2017-10-02
46	gld	123.81999969482422	2017-10-09
47	gld	121.61000061035156	2017-10-16
48	gld	120.9000015258789	2017-10-23
49	gld	120.62000274658203	2017-10-30
50	gld	121.12999725341797	2017-11-06
51	gld	122.86000061035156	2017-11-13
52	gld	122.31999969482422	2017-11-20
53	gld	121.58999633789062	2017-11-27
54	gld	118.4800033569336	2017-12-04
55	gld	119.18000030517578	2017-12-11
56	gld	120.94000244140625	2017-12-18
57	gld	123.6500015258789	2017-12-25
58	gld	125.33000183105469	2018-01-01
59	gld	126.95999908447266	2018-01-08
60	gld	126.41999816894531	2018-01-15
61	gld	128.07000732421875	2018-01-22
62	gld	126.38999938964844	2018-01-29
63	gld	124.7699966430664	2018-02-05
64	gld	127.95999908447266	2018-02-12
65	gld	126.13999938964844	2018-02-19
66	gld	125.38999938964844	2018-02-26
67	gld	125.54000091552734	2018-03-05
68	gld	124.5999984741211	2018-03-12
69	gld	127.61000061035156	2018-03-19
70	gld	125.79000091552734	2018-03-26
71	gld	126.38999938964844	2018-04-02
72	gld	127.44999694824219	2018-04-09
73	gld	126.62999725341797	2018-04-16
74	gld	125.5	2018-04-23
75	gld	124.54000091552734	2018-04-30
76	gld	125	2018-05-07
77	gld	122.41000366210938	2018-05-14
78	gld	123.20999908447266	2018-05-21
79	gld	122.48999786376953	2018-05-28
80	gld	123.01000213623047	2018-06-04
81	gld	121.33999633789062	2018-06-11
82	gld	120.33999633789062	2018-06-18
83	gld	118.6500015258789	2018-06-25
84	gld	118.86000061035156	2018-07-02
85	gld	117.61000061035156	2018-07-09
86	gld	116.55999755859375	2018-07-16
87	gld	115.83000183105469	2018-07-23
88	gld	114.91999816894531	2018-07-30
89	gld	114.69000244140625	2018-08-06
90	gld	112.12999725341797	2018-08-13
91	gld	114.16000366210938	2018-08-20
92	gld	113.51000213623047	2018-08-27
93	gld	113.2300033569336	2018-09-03
94	gld	113.0199966430664	2018-09-10
95	gld	113.48999786376953	2018-09-17
96	gld	112.76000213623047	2018-09-24
97	gld	113.80000305175781	2018-10-01
98	gld	115.2300033569336	2018-10-08
99	gld	116.01000213623047	2018-10-15
100	gld	116.7699966430664	2018-10-22
101	gld	116.6500015258789	2018-10-29
102	gld	114.4800033569336	2018-11-05
103	gld	115.62000274658203	2018-11-12
104	gld	115.7699966430664	2018-11-19
105	gld	115.54000091552734	2018-11-26
106	gld	118.08999633789062	2018-12-03
107	gld	117.05999755859375	2018-12-10
108	gld	118.72000122070312	2018-12-17
109	gld	121.05999755859375	2018-12-24
110	gld	121.44000244140625	2018-12-31
111	gld	121.80000305175781	2019-01-07
112	gld	121.0199966430664	2019-01-14
113	gld	122.86000061035156	2019-01-21
114	gld	124.5	2019-01-28
115	gld	124.20999908447266	2019-02-04
116	gld	124.80000305175781	2019-02-11
117	gld	125.5	2019-02-18
118	gld	121.87999725341797	2019-02-25
119	gld	122.83999633789062	2019-03-04
120	gld	122.97000122070312	2019-03-11
121	gld	123.97000122070312	2019-03-18
122	gld	122.01000213623047	2019-03-25
123	gld	121.9800033569336	2019-04-01
124	gld	121.83000183105469	2019-04-08
125	gld	120.37000274658203	2019-04-15
126	gld	121.37000274658203	2019-04-22
127	gld	120.6500015258789	2019-04-29
128	gld	121.43000030517578	2019-05-06
129	gld	120.6500015258789	2019-05-13
130	gld	121.30000305175781	2019-05-20
131	gld	123.33000183105469	2019-05-27
132	gld	126.58999633789062	2019-06-03
133	gld	126.55999755859375	2019-06-10
134	gld	131.97999572753906	2019-06-17
135	gld	133.1999969482422	2019-06-24
136	gld	132.13999938964844	2019-07-01
137	gld	133.52999877929688	2019-07-08
138	gld	134.47000122070312	2019-07-15
139	gld	133.63999938964844	2019-07-22
140	gld	135.88999938964844	2019-07-29
141	gld	141.25999450683594	2019-08-05
142	gld	142.77999877929688	2019-08-12
143	gld	144.1699981689453	2019-08-19
144	gld	143.75	2019-08-26
145	gld	141.9199981689453	2019-09-02
146	gld	140.14999389648438	2019-09-09
147	gld	142.9499969482422	2019-09-16
148	gld	141.05999755859375	2019-09-23
149	gld	141.89999389648438	2019-09-30
150	gld	140.02999877929688	2019-10-07
151	gld	140.4600067138672	2019-10-14
152	gld	141.86000061035156	2019-10-21
153	gld	142.55999755859375	2019-10-28
154	gld	137.38999938964844	2019-11-04
155	gld	138.2100067138672	2019-11-11
156	gld	137.74000549316406	2019-11-18
157	gld	137.86000061035156	2019-11-25
158	gld	137.6199951171875	2019-12-02
159	gld	139.0500030517578	2019-12-09
160	gld	139.52000427246094	2019-12-16
161	gld	142.3300018310547	2019-12-23
162	gld	145.86000061035156	2019-12-30
163	gld	146.91000366210938	2020-01-06
164	gld	146.5800018310547	2020-01-13
165	gld	147.97999572753906	2020-01-20
166	gld	149.3300018310547	2020-01-27
167	gld	147.7899932861328	2020-02-03
168	gld	149	2020-02-10
169	gld	154.6999969482422	2020-02-17
170	gld	148.3800048828125	2020-02-24
171	gld	157.5500030517578	2020-03-02
172	gld	143.27999877929688	2020-03-09
173	gld	140.11000061035156	2020-03-16
174	gld	152.25	2020-03-23
175	gld	152.64999389648438	2020-03-30
176	gld	158.69000244140625	2020-04-06
177	gld	158.57000732421875	2020-04-13
178	gld	162.63999938964844	2020-04-20
179	gld	159.77999877929688	2020-04-27
180	gld	160.4199981689453	2020-05-04
181	gld	163.92999267578125	2020-05-11
182	gld	163.2100067138672	2020-05-18
183	gld	162.91000366210938	2020-05-25
184	gld	158.00999450683594	2020-06-01
185	gld	162.6199951171875	2020-06-08
186	gld	164.02999877929688	2020-06-15
187	gld	166.5399932861328	2020-06-22
188	gld	166.97999572753906	2020-06-29
189	gld	169.19000244140625	2020-07-06
190	gld	170.1199951171875	2020-07-13
191	gld	178.6999969482422	2020-07-20
192	gld	185.42999267578125	2020-07-27
193	gld	190.80999755859375	2020-08-03
194	gld	182.5399932861328	2020-08-10
195	gld	182.02999877929688	2020-08-17
196	gld	184.38999938964844	2020-08-24
197	gld	181.63999938964844	2020-08-31
198	gld	182.4499969482422	2020-09-07
199	gld	183.1999969482422	2020-09-14
200	gld	174.94000244140625	2020-09-21
201	gld	178.5399932861328	2020-09-28
202	gld	181.0800018310547	2020-10-05
203	gld	178.3000030517578	2020-10-12
204	gld	178.63999938964844	2020-10-19
205	gld	176.1999969482422	2020-10-26
206	gld	183.19000244140625	2020-11-02
207	gld	177.16000366210938	2020-11-09
208	gld	175.69000244140625	2020-11-16
209	gld	167.7899932861328	2020-11-23
210	gld	172.32000732421875	2020-11-30
211	gld	172.49000549316406	2020-12-07
212	gld	176.44000244140625	2020-12-14
213	gld	176.35000610351562	2020-12-21
214	gld	178.36000061035156	2020-12-28
215	gld	173.33999633789062	2021-01-04
216	gld	171.1300048828125	2021-01-11
217	gld	173.89999389648438	2021-01-18
218	gld	172.61000061035156	2021-01-25
219	gld	169.80999755859375	2021-02-01
220	gld	170.69000244140625	2021-02-08
221	gld	167.00999450683594	2021-02-15
222	gld	161.80999755859375	2021-02-22
223	gld	159.13999938964844	2021-03-01
224	gld	161.49000549316406	2021-03-08
225	gld	163.24000549316406	2021-03-15
226	gld	162.24000549316406	2021-03-22
227	gld	161.97999572753906	2021-03-29
228	gld	163.27000427246094	2021-04-05
229	gld	166.35000610351562	2021-04-12
230	gld	166.39999389648438	2021-04-19
231	gld	165.66000366210938	2021-04-26
232	gld	171.58999633789062	2021-05-03
233	gld	172.69000244140625	2021-05-10
234	gld	176.0399932861328	2021-05-17
235	gld	178.3800048828125	2021-05-24
236	gld	177.16000366210938	2021-05-31
237	gld	175.74000549316406	2021-06-07
238	gld	164.92999267578125	2021-06-14
239	gld	166.58999633789062	2021-06-21
240	gld	167.2899932861328	2021-06-28
241	gld	169.2100067138672	2021-07-05
242	gld	169.41000366210938	2021-07-12
243	gld	168.55999755859375	2021-07-19
244	gld	169.82000732421875	2021-07-26
245	gld	164.63999938964844	2021-08-02
246	gld	166.38999938964844	2021-08-09
247	gld	166.6999969482422	2021-08-16
248	gld	170.19000244140625	2021-08-23
249	gld	171.05999755859375	2021-08-30
250	gld	167.17999267578125	2021-09-06
251	gld	163.77000427246094	2021-09-13
252	gld	163.3000030517578	2021-09-20
253	gld	164.58999633789062	2021-09-27
254	gld	164.22999572753906	2021-10-04
255	gld	165.3300018310547	2021-10-11
256	gld	167.77000427246094	2021-10-18
257	gld	166.64999389648438	2021-10-25
258	gld	169.83999633789062	2021-11-01
259	gld	174.4499969482422	2021-11-08
260	gld	172.61000061035156	2021-11-15
261	gld	166.85000610351562	2021-11-22
262	gld	166.85000610351562	2021-11-26
\.


--
-- Data for Name: homies_2021-11-26; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."homies_2021-11-26" (id, name, off_hi, gain_factor) FROM stdin;
1	DHI	-4.929240985074024	1.4747610715379942
2	LEN	-3.9396925223238344	1.4711379572957342
3	NVR	-1.1268043089265434	1.346335902711514
4	PHM	-16.426372047371462	1.2422345694434749
5	LOW	-1.9554298166988393	1.6512666829427083
6	HD	-2.2833645092350308	1.588434858869144
7	SHW	-2.693758376834088	1.435421542093643
8	BLD	-1.3406052780377875	1.682910333833936
9	TOL	-4.70066553355405	1.500349066539966
10	MAS	-1.9011340663636855	1.3002520184658262
11	TREX	-2.398153808179737	1.7602418861462692
12	MTH	-2.8220019374587624	1.4391216983549213
13	FBHS	-7.7357452870912	1.2710545324565339
14	BLDR	-3.0932014755338244	2.023512800254774
15	FND	-2.8116295674152414	1.62123430630065
16	TMHC	-4.089549050402286	1.377787370865462
17	SKY	-2.9349879214638164	2.643507529910154
18	KBH	-16.997841615396283	1.2769369690568484
19	LII	-9.51431000776335	1.161028416628403
20	IBP	-3.3459142482183513	1.4359499809840999
21	LGIH	-21.907721441552784	1.4711805172875194
22	WSO	-2.6459156367066305	1.3742218789165337
23	MHK	-23.64412206207379	1.3436996864672486
24	MDC	-19.99034567861363	1.1628069961280154
25	OC	-18.265992437109226	1.1774454049088812
26	TPH	-3.0046178998650697	1.4934756461228107
27	CVCO	-4.135397836238875	1.6964947225635532
28	CCS	-11.931677822789355	1.7137732829255719
29	EXP	-3.091341674953163	1.7131024265102421
30	LPX	-4.9910693183907835	2.041962120642506
31	LEG	-28.541627876505913	1.0026829417158918
32	MHO	-20.79369756865159	1.3373106087794404
33	UFPI	-4.628209263631222	1.6451002285354364
34	SSD	-2.170826206056853	1.29871421617824
35	AZEK	-19.207804943237015	1.1844178468165867
36	GRBK	-4.5554731902943235	1.316776489863597
37	BECN	-10.755185962217972	1.4403964055804737
38	DOOR	-15.952562326667685	1.1787744993696068
39	JELD	-18.634746869350383	1.0798625431466977
40	BZH	-20.584745928119553	1.3480885705681904
41	PGTI	-24.657038756634574	1.1118806782234851
42	AMWD	-39.19706863686191	1
43	NX	-20.453727805351264	1.0661197338143926
44	ETD	-27.03969890721861	1.2514745646105925
45	LL	-49.67359436049657	1
\.


--
-- Data for Name: index_components/fang_names.csv_2021-11-22; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."index_components/fang_names.csv_2021-11-22" (id, name, off_hi, gain_factor) FROM stdin;
1	aapl	0	1.381079074793066
2	amzn	-0.03946130659282854	1.190674134922673
3	fb	-0.09950089105299631	1.3566598064035071
4	crm	-0.033881216150071225	1.4196757450710147
5	tsla	-0.053367569104740054	1.9915817129057076
6	nflx	-0.04506668809895353	1.3486916689326278
7	goog	-0.019166062430738817	1.6993374109706374
8	googl	-0.017622783627521788	1.69505630146931
9	nvda	-0.031196023509220683	2.564378309486794
10	adbe	-0.021500047791085386	1.527958686662074
\.


--
-- Data for Name: index_components_2021-11-23; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."index_components_2021-11-23" (id, name, off_hi, gain_factor) FROM stdin;
1	aapl	0	1.381079074793066
2	amzn	-3.946130659282854	1.190674134922673
3	fb	-9.95008910529963	1.3566598064035071
4	crm	-3.3881216150071225	1.4196757450710147
5	tsla	-5.336756910474005	1.9915817129057076
6	nflx	-4.506668809895354	1.3486916689326278
7	goog	-1.9166062430738817	1.6993374109706374
8	googl	-1.7622783627521788	1.69505630146931
9	nvda	-3.1196023509220683	2.564378309486794
10	adbe	-2.1500047791085386	1.527958686662074
\.


--
-- Data for Name: iwm weekly5y; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."iwm weekly5y" (id, name, price, date) FROM stdin;
1	iwm	130.89999389648438	2016-11-28
2	iwm	138.30999755859375	2016-12-05
3	iwm	135.91000366210938	2016-12-12
4	iwm	136.0399932861328	2016-12-19
5	iwm	NaN	2016-12-22
6	iwm	134.85000610351562	2016-12-26
7	iwm	135.69000244140625	2017-01-02
8	iwm	136.25999450683594	2017-01-09
9	iwm	134.44000244140625	2017-01-16
10	iwm	136.19000244140625	2017-01-23
11	iwm	136.8699951171875	2017-01-30
12	iwm	137.94000244140625	2017-02-06
13	iwm	139.11000061035156	2017-02-13
14	iwm	138.64999389648438	2017-02-20
15	iwm	138.64999389648438	2017-02-27
16	iwm	135.9600067138672	2017-03-06
17	iwm	138.4600067138672	2017-03-13
18	iwm	134.49000549316406	2017-03-20
19	iwm	NaN	2017-03-24
20	iwm	137.47999572753906	2017-03-27
21	iwm	135.52000427246094	2017-04-03
22	iwm	133.72000122070312	2017-04-10
23	iwm	137.2100067138672	2017-04-17
24	iwm	139.05999755859375	2017-04-24
25	iwm	138.99000549316406	2017-05-01
26	iwm	137.50999450683594	2017-05-08
27	iwm	136.02999877929688	2017-05-15
28	iwm	137.5399932861328	2017-05-22
29	iwm	139.85000610351562	2017-05-29
30	iwm	141.61000061035156	2017-06-05
31	iwm	140.19000244140625	2017-06-12
32	iwm	140.91000366210938	2017-06-19
33	iwm	140.9199981689453	2017-06-26
34	iwm	140.49000549316406	2017-07-03
35	iwm	NaN	2017-07-06
36	iwm	141.72999572753906	2017-07-10
37	iwm	142.5500030517578	2017-07-17
38	iwm	141.9600067138672	2017-07-24
39	iwm	140.2100067138672	2017-07-31
40	iwm	136.47000122070312	2017-08-07
41	iwm	134.9199981689453	2017-08-14
42	iwm	136.8800048828125	2017-08-21
43	iwm	140.52000427246094	2017-08-28
44	iwm	139.22000122070312	2017-09-04
45	iwm	142.41000366210938	2017-09-11
46	iwm	144.3000030517578	2017-09-18
47	iwm	148.17999267578125	2017-09-25
48	iwm	NaN	2017-09-26
49	iwm	150.0500030517578	2017-10-02
50	iwm	149.3699951171875	2017-10-09
51	iwm	149.97999572753906	2017-10-16
52	iwm	149.7899932861328	2017-10-23
53	iwm	148.61000061035156	2017-10-30
54	iwm	146.57000732421875	2017-11-06
55	iwm	148.4499969482422	2017-11-13
56	iwm	150.9499969482422	2017-11-20
57	iwm	153.02000427246094	2017-11-27
58	iwm	151.41000366210938	2017-12-04
59	iwm	152.24000549316406	2017-12-11
60	iwm	153.19000244140625	2017-12-18
61	iwm	NaN	2017-12-21
62	iwm	152.4600067138672	2017-12-25
63	iwm	154.7899932861328	2018-01-01
64	iwm	158.16000366210938	2018-01-08
65	iwm	158.60000610351562	2018-01-15
66	iwm	159.60000610351562	2018-01-22
67	iwm	153.8300018310547	2018-01-29
68	iwm	146.77000427246094	2018-02-05
69	iwm	153.33999633789062	2018-02-12
70	iwm	153.97999572753906	2018-02-19
71	iwm	152.35000610351562	2018-02-26
72	iwm	158.9199981689453	2018-03-05
73	iwm	157.8000030517578	2018-03-12
74	iwm	150.0500030517578	2018-03-19
75	iwm	NaN	2018-03-22
76	iwm	151.8300018310547	2018-03-26
77	iwm	150.36000061035156	2018-04-02
78	iwm	153.9499969482422	2018-04-09
79	iwm	155.5500030517578	2018-04-16
80	iwm	154.69000244140625	2018-04-23
81	iwm	155.72999572753906	2018-04-30
82	iwm	159.83999633789062	2018-05-07
83	iwm	161.8699951171875	2018-05-14
84	iwm	161.74000549316406	2018-05-21
85	iwm	163.83999633789062	2018-05-28
86	iwm	166.52000427246094	2018-06-04
87	iwm	167.80999755859375	2018-06-11
88	iwm	167.82000732421875	2018-06-18
89	iwm	163.77000427246094	2018-06-25
90	iwm	168.25	2018-07-02
91	iwm	NaN	2018-07-03
92	iwm	167.4199981689453	2018-07-09
93	iwm	168.47999572753906	2018-07-16
94	iwm	165.25999450683594	2018-07-23
95	iwm	166.38999938964844	2018-07-30
96	iwm	167.52999877929688	2018-08-06
97	iwm	168.35000610351562	2018-08-13
98	iwm	171.58999633789062	2018-08-20
99	iwm	173.02000427246094	2018-08-27
100	iwm	170.5399932861328	2018-09-03
101	iwm	171.3800048828125	2018-09-10
102	iwm	170.39999389648438	2018-09-17
103	iwm	168.5500030517578	2018-09-24
104	iwm	NaN	2018-09-26
105	iwm	162.16000366210938	2018-10-01
106	iwm	153.60000610351562	2018-10-08
107	iwm	153.36000061035156	2018-10-15
108	iwm	147.47999572753906	2018-10-22
109	iwm	154	2018-10-29
110	iwm	154.0800018310547	2018-11-05
111	iwm	151.94000244140625	2018-11-12
112	iwm	147.88999938964844	2018-11-19
113	iwm	152.6199951171875	2018-11-26
114	iwm	144.02000427246094	2018-12-03
115	iwm	140.61000061035156	2018-12-10
116	iwm	128.3699951171875	2018-12-17
117	iwm	132.86000061035156	2018-12-24
118	iwm	137.19000244140625	2018-12-31
119	iwm	143.67999267578125	2019-01-07
120	iwm	147.3300018310547	2019-01-14
121	iwm	147.33999633789062	2019-01-21
122	iwm	149.17999267578125	2019-01-28
123	iwm	149.85000610351562	2019-02-04
124	iwm	156.22000122070312	2019-02-11
125	iwm	158.14999389648438	2019-02-18
126	iwm	158.24000549316406	2019-02-25
127	iwm	151.63999938964844	2019-03-04
128	iwm	154.75999450683594	2019-03-11
129	iwm	149.6199951171875	2019-03-18
130	iwm	NaN	2019-03-20
131	iwm	153.08999633789062	2019-03-25
132	iwm	157.3800048828125	2019-04-01
133	iwm	157.67999267578125	2019-04-08
134	iwm	155.63999938964844	2019-04-15
135	iwm	158.27000427246094	2019-04-22
136	iwm	160.52999877929688	2019-04-29
137	iwm	156.6199951171875	2019-05-06
138	iwm	152.83999633789062	2019-05-13
139	iwm	150.7899932861328	2019-05-20
140	iwm	145.86000061035156	2019-05-27
141	iwm	150.86000061035156	2019-06-03
142	iwm	151.72999572753906	2019-06-10
143	iwm	153.9499969482422	2019-06-17
144	iwm	155.5	2019-06-24
145	iwm	156.67999267578125	2019-07-01
146	iwm	156.11000061035156	2019-07-08
147	iwm	153.82000732421875	2019-07-15
148	iwm	157.1999969482422	2019-07-22
149	iwm	152.5800018310547	2019-07-29
150	iwm	150.6199951171875	2019-08-05
151	iwm	148.6300048828125	2019-08-12
152	iwm	145.42999267578125	2019-08-19
153	iwm	148.83999633789062	2019-08-26
154	iwm	149.89999389648438	2019-09-02
155	iwm	157.30999755859375	2019-09-09
156	iwm	155.42999267578125	2019-09-16
157	iwm	151.16000366210938	2019-09-23
158	iwm	NaN	2019-09-24
159	iwm	149.13999938964844	2019-09-30
160	iwm	150.22000122070312	2019-10-07
161	iwm	152.61000061035156	2019-10-14
162	iwm	155	2019-10-21
163	iwm	158.10000610351562	2019-10-28
164	iwm	159.0800018310547	2019-11-04
165	iwm	158.9199981689453	2019-11-11
166	iwm	158.22000122070312	2019-11-18
167	iwm	161.77000427246094	2019-11-25
168	iwm	162.82000732421875	2019-12-02
169	iwm	163.3300018310547	2019-12-09
170	iwm	165.97000122070312	2019-12-16
171	iwm	165.86000061035156	2019-12-23
172	iwm	165.1300048828125	2019-12-30
173	iwm	164.88999938964844	2020-01-06
174	iwm	169.07000732421875	2020-01-13
175	iwm	165.38999938964844	2020-01-20
176	iwm	160.52999877929688	2020-01-27
177	iwm	164.8800048828125	2020-02-03
178	iwm	167.89999389648438	2020-02-10
179	iwm	167.10000610351562	2020-02-17
180	iwm	146.3300018310547	2020-02-24
181	iwm	144.39999389648438	2020-03-02
182	iwm	119.47000122070312	2020-03-09
183	iwm	101.4000015258789	2020-03-16
184	iwm	112.55999755859375	2020-03-23
185	iwm	NaN	2020-03-25
186	iwm	104.62000274658203	2020-03-30
187	iwm	123.72000122070312	2020-04-06
188	iwm	122.05999755859375	2020-04-13
189	iwm	122.41000366210938	2020-04-20
190	iwm	125.13999938964844	2020-04-27
191	iwm	132.36000061035156	2020-05-04
192	iwm	125.08000183105469	2020-05-11
193	iwm	134.88999938964844	2020-05-18
194	iwm	138.89999389648438	2020-05-25
195	iwm	150.17999267578125	2020-06-01
196	iwm	138.27000427246094	2020-06-08
197	iwm	140.99000549316406	2020-06-15
198	iwm	136.6699981689453	2020-06-22
199	iwm	142.39999389648438	2020-06-29
200	iwm	141.30999755859375	2020-07-06
201	iwm	146.58999633789062	2020-07-13
202	iwm	146.0800018310547	2020-07-20
203	iwm	147.36000061035156	2020-07-27
204	iwm	156.1699981689453	2020-08-03
205	iwm	157.08999633789062	2020-08-10
206	iwm	154.61000061035156	2020-08-17
207	iwm	157.1199951171875	2020-08-24
208	iwm	152.8000030517578	2020-08-31
209	iwm	149.14999389648438	2020-09-07
210	iwm	153.2899932861328	2020-09-14
211	iwm	146.41000366210938	2020-09-21
212	iwm	NaN	2020-09-23
213	iwm	152.85000610351562	2020-09-28
214	iwm	162.6999969482422	2020-10-05
215	iwm	162.35000610351562	2020-10-12
216	iwm	163.07000732421875	2020-10-19
217	iwm	153.08999633789062	2020-10-26
218	iwm	163.6199951171875	2020-11-02
219	iwm	173.5	2020-11-09
220	iwm	177.5	2020-11-16
221	iwm	184.3699951171875	2020-11-23
222	iwm	188.1999969482422	2020-11-30
223	iwm	190.3000030517578	2020-12-07
224	iwm	195.33999633789062	2020-12-14
225	iwm	199.00999450683594	2020-12-21
226	iwm	196.05999755859375	2020-12-28
227	iwm	207.72000122070312	2021-01-04
228	iwm	210.75	2021-01-11
229	iwm	215	2021-01-18
230	iwm	205.55999755859375	2021-01-25
231	iwm	221.64999389648438	2021-02-01
232	iwm	227.25999450683594	2021-02-08
233	iwm	225.19000244140625	2021-02-15
234	iwm	218.30999755859375	2021-02-22
235	iwm	217.7100067138672	2021-03-01
236	iwm	233.58999633789062	2021-03-08
237	iwm	226.94000244140625	2021-03-15
238	iwm	220.61000061035156	2021-03-22
239	iwm	NaN	2021-03-25
240	iwm	223.74000549316406	2021-03-29
241	iwm	222.58999633789062	2021-04-05
242	iwm	224.64999389648438	2021-04-12
243	iwm	225.75999450683594	2021-04-19
244	iwm	224.88999938964844	2021-04-26
245	iwm	225.38999938964844	2021-05-03
246	iwm	221.02000427246094	2021-05-10
247	iwm	219.97000122070312	2021-05-17
248	iwm	225.5	2021-05-24
249	iwm	227.39999389648438	2021-05-31
250	iwm	231.6999969482422	2021-06-07
251	iwm	NaN	2021-06-10
252	iwm	222.1300048828125	2021-06-14
253	iwm	232.27999877929688	2021-06-21
254	iwm	229.19000244140625	2021-06-28
255	iwm	226.3800048828125	2021-07-05
256	iwm	214.9499969482422	2021-07-12
257	iwm	219.5500030517578	2021-07-19
258	iwm	221.0500030517578	2021-07-26
259	iwm	223.38999938964844	2021-08-02
260	iwm	221.1300048828125	2021-08-09
261	iwm	215.52000427246094	2021-08-16
262	iwm	226.41000366210938	2021-08-23
263	iwm	227.9600067138672	2021-08-30
264	iwm	221.6199951171875	2021-09-06
265	iwm	222.47999572753906	2021-09-13
266	iwm	223.0500030517578	2021-09-20
267	iwm	NaN	2021-09-24
268	iwm	222.27999877929688	2021-09-27
269	iwm	221.5800018310547	2021-10-04
270	iwm	225.16000366210938	2021-10-11
271	iwm	227.41000366210938	2021-10-18
272	iwm	228.0500030517578	2021-10-25
273	iwm	241.80999755859375	2021-11-01
274	iwm	239.5	2021-11-08
275	iwm	232.72000122070312	2021-11-15
276	iwm	222.85000610351562	2021-11-22
277	iwm	222.85000610351562	2021-11-26
\.


--
-- Data for Name: kre weekly5y; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."kre weekly5y" (id, name, price, date) FROM stdin;
1	kre	53.029998779296875	2016-11-28
2	kre	56.029998779296875	2016-12-05
3	kre	54.7400016784668	2016-12-12
4	kre	NaN	2016-12-16
5	kre	56.11000061035156	2016-12-19
6	kre	55.56999969482422	2016-12-26
7	kre	55.779998779296875	2017-01-02
8	kre	55.810001373291016	2017-01-09
9	kre	54.52000045776367	2017-01-16
10	kre	56.290000915527344	2017-01-23
11	kre	56.08000183105469	2017-01-30
12	kre	56.16999816894531	2017-02-06
13	kre	57.70000076293945	2017-02-13
14	kre	57.459999084472656	2017-02-20
15	kre	58.20000076293945	2017-02-27
16	kre	56.9900016784668	2017-03-06
17	kre	56.540000915527344	2017-03-13
18	kre	NaN	2017-03-17
19	kre	53.06999969482422	2017-03-20
20	kre	54.61000061035156	2017-03-27
21	kre	53.61000061035156	2017-04-03
22	kre	51.709999084472656	2017-04-10
23	kre	53.63999938964844	2017-04-17
24	kre	54.04999923706055	2017-04-24
25	kre	54.66999816894531	2017-05-01
26	kre	53.52000045776367	2017-05-08
27	kre	52.47999954223633	2017-05-15
28	kre	52.84000015258789	2017-05-22
29	kre	52.36000061035156	2017-05-29
30	kre	55.72999954223633	2017-06-05
31	kre	55.06999969482422	2017-06-12
32	kre	NaN	2017-06-16
33	kre	52.90999984741211	2017-06-19
34	kre	54.95000076293945	2017-06-26
35	kre	55.66999816894531	2017-07-03
36	kre	55.02000045776367	2017-07-10
37	kre	54.25	2017-07-17
38	kre	54.11000061035156	2017-07-24
39	kre	54.97999954223633	2017-07-31
40	kre	52.27000045776367	2017-08-07
41	kre	51.689998626708984	2017-08-14
42	kre	52.70000076293945	2017-08-21
43	kre	52.47999954223633	2017-08-28
44	kre	50.15999984741211	2017-09-04
45	kre	52.369998931884766	2017-09-11
46	kre	NaN	2017-09-15
47	kre	54.400001525878906	2017-09-18
48	kre	56.7599983215332	2017-09-25
49	kre	56.90999984741211	2017-10-02
50	kre	55.97999954223633	2017-10-09
51	kre	57.33000183105469	2017-10-16
52	kre	57.849998474121094	2017-10-23
53	kre	57.15999984741211	2017-10-30
54	kre	54.349998474121094	2017-11-06
55	kre	56.0099983215332	2017-11-13
56	kre	55.90999984741211	2017-11-20
57	kre	59.34000015258789	2017-11-27
58	kre	59.290000915527344	2017-12-04
59	kre	59.06999969482422	2017-12-11
60	kre	NaN	2017-12-15
61	kre	59.95000076293945	2017-12-18
62	kre	58.849998474121094	2017-12-25
63	kre	59.81999969482422	2018-01-01
64	kre	62.61000061035156	2018-01-08
65	kre	63.029998779296875	2018-01-15
66	kre	63.060001373291016	2018-01-22
67	kre	62.63999938964844	2018-01-29
68	kre	60.04999923706055	2018-02-05
69	kre	63.099998474121094	2018-02-12
70	kre	62.959999084472656	2018-02-19
71	kre	62.560001373291016	2018-02-26
72	kre	65.02999877929688	2018-03-05
73	kre	63.95000076293945	2018-03-12
74	kre	NaN	2018-03-16
75	kre	58.90999984741211	2018-03-19
76	kre	60.38999938964844	2018-03-26
77	kre	59.400001525878906	2018-04-02
78	kre	60.349998474121094	2018-04-09
79	kre	61.189998626708984	2018-04-16
80	kre	62.63999938964844	2018-04-23
81	kre	62.150001525878906	2018-04-30
82	kre	63.75	2018-05-07
83	kre	63.939998626708984	2018-05-14
84	kre	64.20999908447266	2018-05-21
85	kre	63.84000015258789	2018-05-28
86	kre	65.73999786376953	2018-06-04
87	kre	63.61000061035156	2018-06-11
88	kre	NaN	2018-06-15
89	kre	63.459999084472656	2018-06-18
90	kre	61	2018-06-25
91	kre	61.95000076293945	2018-07-02
92	kre	60.849998474121094	2018-07-09
93	kre	62.47999954223633	2018-07-16
94	kre	62.13999938964844	2018-07-23
95	kre	62.15999984741211	2018-07-30
96	kre	62.31999969482422	2018-08-06
97	kre	63.40999984741211	2018-08-13
98	kre	63.41999816894531	2018-08-20
99	kre	63.150001525878906	2018-08-27
100	kre	63.33000183105469	2018-09-03
101	kre	62.02000045776367	2018-09-10
102	kre	62.27000045776367	2018-09-17
103	kre	NaN	2018-09-21
104	kre	59.41999816894531	2018-09-24
105	kre	59.66999816894531	2018-10-01
106	kre	56.060001373291016	2018-10-08
107	kre	54.709999084472656	2018-10-15
108	kre	51.91999816894531	2018-10-22
109	kre	54.70000076293945	2018-10-29
110	kre	55.459999084472656	2018-11-05
111	kre	55	2018-11-12
112	kre	53.95000076293945	2018-11-19
113	kre	55.7599983215332	2018-11-26
114	kre	51.7400016784668	2018-12-03
115	kre	48.5	2018-12-10
116	kre	45.06999969482422	2018-12-17
117	kre	NaN	2018-12-21
118	kre	46.529998779296875	2018-12-24
119	kre	48.88999938964844	2018-12-31
120	kre	49.97999954223633	2019-01-07
121	kre	53.25	2019-01-14
122	kre	53.470001220703125	2019-01-21
123	kre	53.41999816894531	2019-01-28
124	kre	54.150001525878906	2019-02-04
125	kre	56.040000915527344	2019-02-11
126	kre	57.029998779296875	2019-02-18
127	kre	56.83000183105469	2019-02-25
128	kre	54.22999954223633	2019-03-04
129	kre	54.810001373291016	2019-03-11
130	kre	NaN	2019-03-15
131	kre	49.400001525878906	2019-03-18
132	kre	51.34000015258789	2019-03-25
133	kre	53.939998626708984	2019-04-01
134	kre	54.84000015258789	2019-04-08
135	kre	54.279998779296875	2019-04-15
136	kre	55.33000183105469	2019-04-22
137	kre	56.63999938964844	2019-04-29
138	kre	55.09000015258789	2019-05-06
139	kre	53.04999923706055	2019-05-13
140	kre	52.58000183105469	2019-05-20
141	kre	50.220001220703125	2019-05-27
142	kre	51.849998474121094	2019-06-03
143	kre	52.56999969482422	2019-06-10
144	kre	52.06999969482422	2019-06-17
145	kre	NaN	2019-06-21
146	kre	53.43000030517578	2019-06-24
147	kre	54.08000183105469	2019-07-01
148	kre	53.970001220703125	2019-07-08
149	kre	53.31999969482422	2019-07-15
150	kre	55.36000061035156	2019-07-22
151	kre	52.380001068115234	2019-07-29
152	kre	51.18000030517578	2019-08-05
153	kre	49.9900016784668	2019-08-12
154	kre	48.63999938964844	2019-08-19
155	kre	50.119998931884766	2019-08-26
156	kre	50.47999954223633	2019-09-02
157	kre	54.59000015258789	2019-09-09
158	kre	53.29999923706055	2019-09-16
159	kre	NaN	2019-09-20
160	kre	53.099998474121094	2019-09-23
161	kre	51.619998931884766	2019-09-30
162	kre	52.150001525878906	2019-10-07
163	kre	53.220001220703125	2019-10-14
164	kre	54.400001525878906	2019-10-21
165	kre	55.040000915527344	2019-10-28
166	kre	56.79999923706055	2019-11-04
167	kre	55.97999954223633	2019-11-11
168	kre	55.93000030517578	2019-11-18
169	kre	56.220001220703125	2019-11-25
170	kre	56.900001525878906	2019-12-02
171	kre	58.20000076293945	2019-12-09
172	kre	58.59000015258789	2019-12-16
173	kre	NaN	2019-12-20
174	kre	58.11000061035156	2019-12-23
175	kre	57.779998779296875	2019-12-30
176	kre	56.93000030517578	2020-01-06
177	kre	57.540000915527344	2020-01-13
178	kre	55.91999816894531	2020-01-20
179	kre	54.189998626708984	2020-01-27
180	kre	55.790000915527344	2020-02-03
181	kre	56.220001220703125	2020-02-10
182	kre	55.650001525878906	2020-02-17
183	kre	47.5099983215332	2020-02-24
184	kre	43.88999938964844	2020-03-02
185	kre	37.63999938964844	2020-03-09
186	kre	30.81999969482422	2020-03-16
187	kre	33.33000183105469	2020-03-23
188	kre	29.520000457763672	2020-03-30
189	kre	37.380001068115234	2020-04-06
190	kre	33.9900016784668	2020-04-13
191	kre	34.369998931884766	2020-04-20
192	kre	36.33000183105469	2020-04-27
193	kre	36.540000915527344	2020-05-04
194	kre	32.040000915527344	2020-05-11
195	kre	34.93000030517578	2020-05-18
196	kre	38.18000030517578	2020-05-25
197	kre	44.54999923706055	2020-06-01
198	kre	39.400001525878906	2020-06-08
199	kre	39.880001068115234	2020-06-15
200	kre	35.900001525878906	2020-06-22
201	kre	36.61000061035156	2020-06-29
202	kre	35.880001068115234	2020-07-06
203	kre	36.689998626708984	2020-07-13
204	kre	38.470001220703125	2020-07-20
205	kre	37.58000183105469	2020-07-27
206	kre	39.650001525878906	2020-08-03
207	kre	40.630001068115234	2020-08-10
208	kre	37.779998779296875	2020-08-17
209	kre	39.33000183105469	2020-08-24
210	kre	39.83000183105469	2020-08-31
211	kre	37.47999954223633	2020-09-07
212	kre	37.599998474121094	2020-09-14
213	kre	34.54999923706055	2020-09-21
214	kre	36.939998626708984	2020-09-28
215	kre	39.65999984741211	2020-10-05
216	kre	39.40999984741211	2020-10-12
217	kre	42.59000015258789	2020-10-19
218	kre	41.150001525878906	2020-10-26
219	kre	41.36000061035156	2020-11-02
220	kre	47.16999816894531	2020-11-09
221	kre	47.66999816894531	2020-11-16
222	kre	49.43000030517578	2020-11-23
223	kre	50.90999984741211	2020-11-30
224	kre	50.7400016784668	2020-12-07
225	kre	50.58000183105469	2020-12-14
226	kre	51.45000076293945	2020-12-21
227	kre	51.95000076293945	2020-12-28
228	kre	57.029998779296875	2021-01-04
229	kre	58.38999938964844	2021-01-11
230	kre	57.959999084472656	2021-01-18
231	kre	54.369998931884766	2021-01-25
232	kre	58.95000076293945	2021-02-01
233	kre	61.08000183105469	2021-02-08
234	kre	63.810001373291016	2021-02-15
235	kre	64.26000213623047	2021-02-22
236	kre	67.30000305175781	2021-03-01
237	kre	71.0999984741211	2021-03-08
238	kre	69.55000305175781	2021-03-15
239	kre	67.54000091552734	2021-03-22
240	kre	66.81999969482422	2021-03-29
241	kre	67.41999816894531	2021-04-05
242	kre	67.66999816894531	2021-04-12
243	kre	67.8499984741211	2021-04-19
244	kre	68.38999938964844	2021-04-26
245	kre	70.80000305175781	2021-05-03
246	kre	71.19999694824219	2021-05-10
247	kre	70.52999877929688	2021-05-17
248	kre	70.69000244140625	2021-05-24
249	kre	70.72000122070312	2021-05-31
250	kre	68.5999984741211	2021-06-07
251	kre	63.65999984741211	2021-06-14
252	kre	67.63999938964844	2021-06-21
253	kre	65.33000183105469	2021-06-28
254	kre	64.79000091552734	2021-07-05
255	kre	62.0099983215332	2021-07-12
256	kre	61.959999084472656	2021-07-19
257	kre	62.56999969482422	2021-07-26
258	kre	65.68000030517578	2021-08-02
259	kre	65.9000015258789	2021-08-09
260	kre	64.37999725341797	2021-08-16
261	kre	66.88999938964844	2021-08-23
262	kre	65.18000030517578	2021-08-30
263	kre	63.59000015258789	2021-09-06
264	kre	63.84000015258789	2021-09-13
265	kre	65.91000366210938	2021-09-20
266	kre	69.37000274658203	2021-09-27
267	kre	70.70999908447266	2021-10-04
268	kre	70.41999816894531	2021-10-11
269	kre	72.77999877929688	2021-10-18
270	kre	70.91000366210938	2021-10-25
271	kre	74.58999633789062	2021-11-01
272	kre	74.58999633789062	2021-11-08
273	kre	73.4800033569336	2021-11-15
274	kre	71.48999786376953	2021-11-22
275	kre	71.48999786376953	2021-11-26
\.


--
-- Data for Name: l_and_l_2021-11-26; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."l_and_l_2021-11-26" (id, name, off_hi, gain_factor) FROM stdin;
1	KRE	-5.022586595805012	1.446085432240003
2	XRT	-5.162991374971638	1.587485698780132
3	XLF	-4.455927144727189	1.3636683985160478
4	IYT	-4.4960345435898	1.2488739196702636
5	XTL	-6.217664336599715	1.2311658503281906
6	XLK	-3.117153939637507	1.3530898113936103
7	EFA	-6.007067531994514	1.0757216618951475
8	SIL	-22.340864266258652	1.0818077999213056
9	WOOD	-11.51421125545058	1.1766080002315242
10	XLC	-9.523808673676148	1.1844080371679697
11	XLB	-4.106544962156589	1.2231030899264126
12	SOCL	-25.517065050055578	1.0022612149873473
13	IHE 	-2.551693287298429	1.1131603234564902
14	ESPO	-9.90990855271805	1.1338925615770261
15	XHB	-2.1177945794901176	1.4550759694181918
16	QQQ	-3.1659145861321014	1.3083174456723645
17	SOXX	-3.527929732216506	1.4503312292328474
18	GDX	-18.493144189370014	1.0954654330614597
19	CHIQ	-33.33333037963815	1.036101082038161
20	COPX 	-21.76855656955725	1.2873051083029206
21	EUFN	-8.679245690426896	1.1510107587165381
22	IBUY	-26.15539836262769	1
23	IHI	-5.6736595165842285	1.2158224292124322
24	XLRE	-2.6663980150840927	1.3409983146226674
25	KBE	-4.6084542466329985	1.377877943813212
26	IDU 	-3.4959375024091077	1.1467015924334432
27	IGV	-5.636913192553283	1.2437762828461543
28	MJ	-49.138621151946914	1
29	MOO	-4.081004794166754	1.2235108025614576
30	FDN	-6.734662079704313	1.1327966205600593
31	OIH	-25.637672243779864	1.2314357505598488
32	XLP	-1.561642999518409	1.1352290912553338
33	XLV	-3.551333864519801	1.2060489998968247
34	URA	-14.399469941855614	2.1626151363858157
35	UFO	-12.820514196864863	1.112974052291354
36	XME	-9.384912941289548	1.4209479225546915
37	RTM	-3.847869245825142	1.2582525945112613
38	RGI	-3.1931476267340386	1.2704427478188143
39	XLU	-4.547404963961399	1.1437628393060755
40	SLX 	-19.679980741113447	1.32453761023464
41	SKYY	-8.106750054742628	1.218291091968585
42	VNQI	-7.452085429804245	1.05559737790974
43	VNQ	-2.82653658579467	1.299506408388348
44	REZ	-3.0103199305896333	1.3779658882923784
45	TAN	-25.288493556173876	1.2495174833978635
46	PBJ	-2.548928008395457	1.2350736070467705
47	IBB	-11.893523663317563	1.0815528039116709
48	CHIX	-16.156154006090915	1
49	IHF	-5.919890764165114	1.1699360227276243
50	KWEB	-55.42074096502736	1.0333409211979065
51	XLE	-4.600062766373226	1.466490754442411
52	CHIU	-11.14450442913746	1.2593610126677826
53	XOP	-10.108464525053673	1.7038700920292402
54	XLY	-3.4339204283950875	1.3062060120018233
55	XLI	-3.4237639007173803	1.217883708294494
56	ARKK	-31.517433833835508	1.027993537212956
57	CHII	-4.715352062130207	1.1776830173578219
58	CHIR	-34.078056946869985	1.035999976264106
59	ARKG	-42.26408629981865	1
60	CRAK	-14.08945672493972	1.095315691458574
61	EVX	-2.1201887602774527	1.3344735557930711
62	BETZ	-23.359013083176972	1.0515856761260676
63	INDS	-2.1635096266877207	1.455326277730307
64	CIBR	-6.736764815859786	1.359927298689709
65	CHIE	-16.138765508175346	1.320665057577237
66	REMX	-2.8400873028262663	2.146524089915885
67	IAI	-4.066607757843954	1.482996920540179
68	PBW	-35.38044421946014	1.1507840759679493
69	FAN	-22.26501919545152	1.0034808400149022
70	CHIH	-28.21330869177211	1.013513536734218
71	BBC	-31.155523936552243	1
72	ITB	-1.9602863586887675	1.4075291470192102
73	tlt	-6.047935568330365	1.1171057423324444
74	ief	-4.233417798990313	1.020702503694212
75	ethe	-11.754426511487303	4.273571654600993
76	blok	-11.301813037457109	1.8519269411963384
77	gbtc	-21.869490933029866	2.352004321230943
78	KRE	-5.022586595805012	1.446085432240003
79	XRT	-5.162991374971638	1.587485698780132
80	XLF	-4.455927144727189	1.3636683985160478
81	IYT	-4.4960345435898	1.2488739196702636
82	XTL	-6.217664336599715	1.2311658503281906
83	XLK	-3.117153939637507	1.3530898113936103
84	EFA	-6.007067531994514	1.0757216618951475
85	SIL	-22.340864266258652	1.0818077999213056
86	WOOD	-11.51421125545058	1.1766080002315242
87	XLC	-9.523808673676148	1.1844080371679697
88	XLB	-4.106544962156589	1.2231030899264126
89	SOCL	-25.517065050055578	1.0022612149873473
90	IHE 	-2.551693287298429	1.1131603234564902
91	ESPO	-9.90990855271805	1.1338925615770261
92	XHB	-2.1177945794901176	1.4550759694181918
93	QQQ	-3.1659145861321014	1.3083174456723645
94	SOXX	-3.527929732216506	1.4503312292328474
95	GDX	-18.493144189370014	1.0954654330614597
96	CHIQ	-33.44947705860518	1.0342959866218433
97	COPX 	-21.76855656955725	1.2873051083029206
98	EUFN	-8.679245690426896	1.1510107587165381
99	IBUY	-26.15539836262769	1
100	IHI	-5.6736595165842285	1.2158224292124322
101	XLRE	-2.6663980150840927	1.3409983146226674
102	KBE	-4.6084542466329985	1.377877943813212
103	IDU 	-3.4959375024091077	1.1467015924334432
104	IGV	-5.636913192553283	1.2437762828461543
105	MJ	-49.138621151946914	1
106	MOO	-4.246307027043561	1.2214022622543133
107	FDN	-6.734662079704313	1.1327966205600593
108	OIH	-25.637672243779864	1.2314357505598488
109	XLP	-1.561642999518409	1.1352290912553338
110	XLV	-3.551333864519801	1.2060489998968247
111	URA	-14.399469941855614	2.1626151363858157
112	UFO	-12.820514196864863	1.112974052291354
113	XME	-9.384912941289548	1.4209479225546915
114	RTM	-3.847869245825142	1.2582525945112613
115	RGI	-3.1931476267340386	1.2704427478188143
116	XLU	-4.547404963961399	1.1437628393060755
117	SLX 	-19.679980741113447	1.32453761023464
118	SKYY	-8.106750054742628	1.218291091968585
119	VNQI	-7.452085429804245	1.05559737790974
120	VNQ	-2.82653658579467	1.299506408388348
121	REZ	-3.0103199305896333	1.3779658882923784
122	TAN	-25.2637665702092	1.249931031494338
123	PBJ	-2.548928008395457	1.2350736070467705
124	IBB	-11.893523663317563	1.0815528039116709
125	CHIX	-16.195194512334478	1
126	IHF	-5.919890764165114	1.1699360227276243
127	KWEB	-55.45009771149512	1.0326604359656475
128	XLE	-4.600062766373226	1.466490754442411
129	CHIU	-11.14450442913746	1.2593610126677826
130	XOP	-9.944395336576884	1.70697997975996
131	XLY	-3.476487989964505	1.3056302197041045
132	XLI	-3.4518263692568385	1.217529823895711
133	ARKK	-31.5876858513762	1.0269389823962927
134	CHII	-4.945363618096799	1.1748401595720164
135	CHIR	-34.078056946869985	1.035999976264106
136	ARKG	-42.31765076499987	1
137	CRAK	-14.08945672493972	1.095315691458574
138	EVX	-2.1040034556726095	1.3346942229634922
139	BETZ	-23.359013083176972	1.0515856761260676
140	INDS	-2.6421617465251623	1.4482062859436764
141	CIBR	-6.736764815859786	1.359927298689709
142	CHIE	-16.138765508175346	1.320665057577237
143	REMX	-2.9611148346353033	2.1438502658524476
144	IAI	-4.119191070198125	1.482184055608892
145	PBW	-35.139607532033466	1.1550730411496468
146	FAN	-21.918331384350164	1.0079562328471412
147	CHIH	-27.985412115390474	1.0167310727555738
148	BBC	-31.712966907982253	1
149	ITB	-2.176679146657634	1.4044224554045726
150	tlt	-6.047935568330365	1.1171057423324444
151	ief	-4.233417798990313	1.020702503694212
152	ethe	-11.76535303118409	4.273042503245139
153	blok	-11.60945330927159	1.8455037286473512
154	gbtc	-21.816576305886237	2.3535972384304387
155	KRE	-5.009306624303223	1.4462876274003151
156	XRT	-5.153229383638591	1.5876491056806397
157	XLF	-4.5544030594962255	1.3622628849245464
158	IYT	-4.381208994981889	1.2503754555728088
159	XTL	-6.217664336599715	1.2311658503281906
160	XLK	-3.105476703780863	1.3532528985602799
161	EFA	-6.019254855337586	1.0755821815387374
162	SIL	-22.340864266258652	1.0818077999213056
163	WOOD	-11.400515534156973	1.1781198282568397
164	XLC	-9.699310631949876	1.182110571648357
165	XLB	-4.106544962156589	1.2231030899264126
166	SOCL	-25.491211304443016	1.0026091095286542
167	IHE 	-2.551693287298429	1.1131603234564902
168	ESPO	-9.90990855271805	1.1338925615770261
169	XHB	-2.0820939160732133	1.4556066805643808
170	QQQ	-3.1659145861321014	1.3083174456723645
171	SOXX	-3.527929732216506	1.4503312292328474
172	GDX	-18.518517443289518	1.095124412391276
173	CHIQ	-33.44947705860518	1.0342959866218433
174	COPX 	-21.52041624515396	1.291388278613645
175	EUFN	-8.679245690426896	1.1510107587165381
176	IBUY	-26.46446203695011	1
177	IHI	-5.688627063105822	1.2156295045354228
178	XLRE	-2.707107270791087	1.340437449287579
179	KBE	-4.6084542466329985	1.377877943813212
180	IDU 	-3.472703736072924	1.1469776657527047
181	IGV	-5.632402527102043	1.243835736801063
182	MJ	-49.198714862678536	1
183	MOO	-4.246307027043561	1.2214022622543133
184	FDN	-6.730689635147313	1.1328448696938733
185	OIH	-25.71533838254715	1.2301496038943016
186	XLP	-1.424658788393618	1.1368088459998258
187	XLV	-3.565951527339495	1.2058662123235913
188	URA	-14.067683666159558	2.170997397820155
189	UFO	-12.570358084134469	1.1161676621174053
190	XME	-9.32149591925775	1.421942373794939
191	RTM	-3.9425335554431173	1.2570138116340626
192	RGI	-3.2984117749599084	1.2690613159217905
193	XLU	-4.533101894911173	1.1439342261485337
194	SLX 	-19.679980741113447	1.32453761023464
195	SKYY	-8.106750054742628	1.218291091968585
196	VNQI	-7.452085429804245	1.05559737790974
197	VNQ	-2.781525285582076	1.3001083471380954
198	REZ	-3.0103199305896333	1.3779658882923784
199	TAN	-25.2637665702092	1.249931031494338
200	PBJ	-2.548928008395457	1.2350736070467705
201	IBB	-11.893523663317563	1.0815528039116709
202	CHIX	-16.195194512334478	1
203	IHF	-5.919890764165114	1.1699360227276243
204	KWEB	-55.45009771149512	1.0326604359656475
205	XLE	-4.600062766373226	1.466490754442411
206	CHIU	-11.14450442913746	1.2593610126677826
207	XOP	-9.944395336576884	1.70697997975996
208	XLY	-3.476487989964505	1.3056302197041045
209	XLI	-3.4518263692568385	1.217529823895711
210	ARKK	-31.5876858513762	1.0269389823962927
211	CHII	-4.945363618096799	1.1748401595720164
212	CHIR	-34.078056946869985	1.035999976264106
213	ARKG	-42.31765076499987	1
214	CRAK	-14.08945672493972	1.095315691458574
215	EVX	-2.1040034556726095	1.3346942229634922
216	BETZ	-23.359013083176972	1.0515856761260676
217	INDS	-2.6421617465251623	1.4482062859436764
218	CIBR	-6.736764815859786	1.359927298689709
219	CHIE	-16.138765508175346	1.320665057577237
220	REMX	-2.9611148346353033	2.1438502658524476
221	IAI	-4.119191070198125	1.482184055608892
222	PBW	-35.139607532033466	1.1550730411496468
223	FAN	-21.918331384350164	1.0079562328471412
224	CHIH	-27.985412115390474	1.0167310727555738
225	BBC	-31.712966907982253	1
226	ITB	-2.176679146657634	1.4044224554045726
227	tlt	-6.047935568330365	1.1171057423324444
228	ief	-4.233417798990313	1.020702503694212
229	ethe	-11.76535303118409	4.273042503245139
230	blok	-11.60945330927159	1.8455037286473512
231	gbtc	-21.816576305886237	2.3535972384304387
\.


--
-- Data for Name: leaders & laggards_2021-11-23; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."leaders & laggards_2021-11-23" (id, name, off_hi, gain_factor) FROM stdin;
1	KRE	-0.42901154381966844	1.502528751457233
2	XRT	0	1.6745630049519395
3	XLF	-2.584931720016237	1.390372486568807
4	IYT	-1.291760045921464	1.290775162539901
5	XTL	-4.272848440151311	1.2566972139900696
6	XLK	-1.1149399855989617	1.381053227123075
7	EFA	-2.6806347708332345	1.1137917133773365
8	SIL	-19.958934432091457	1.114988574457633
9	WOOD	-9.963823658551352	1.1972237225509315
10	XLC	-7.8975077847137864	1.2056976583987433
11	XLB	-1.8313002817118007	1.2521234104257881
12	SOCL	-23.94648575455165	1.0233953273045326
13	IHE 	-2.0540845355892623	1.1188445506913507
14	ESPO	-8.694308620359138	1.1491923542513611
15	XHB	-0.023800442277932543	1.4862044113660435
16	QQQ	-1.160920457134429	1.3354067581414906
17	SOXX	-1.4487435130781545	1.4815890709754012
18	GDX	-16.286145274362095	1.1251278583648292
19	CHIQ	-30.824619711006328	1.075090247885081
20	COPX 	-18.407406553258955	1.3426131199670583
21	EUFN	-4.528306402231386	1.2033293780228982
22	IBUY	-25.0413302268123	1
23	IHI	-4.266470297329372	1.233960440357016
24	XLRE	-1.5596107709266005	1.3452047511487684
25	KBE	-0.8686587701021264	1.4279279950099635
26	IDU 	-2.1486626096481776	1.1627104756347397
27	IGV	-3.6556429905395205	1.269890910615835
28	MJ	-48.75801109380029	1
29	MOO	-1.4670918023697577	1.2568530073620443
30	FDN	-5.635366770779838	1.1461486121864808
31	OIH	-24.055757950596924	1.2576321577155425
32	XLP	-0.5205441827643376	1.1472354442630839
33	XLV	-3.2736651710043585	1.2095211272318627
34	URA	-13.337752593968876	2.189438404951368
35	UFO	-10.131331511869046	1.1473054150276538
36	XME	-5.580222210342445	1.4806098129262097
37	RTM	-1.5647608475009012	1.2881294890034531
38	RGI	-0.48468778379805455	1.3059871651907269
39	XLU	-3.1746049063563597	1.1602124464759282
40	SLX 	-17.122781676903653	1.3667077487462533
41	SKYY	-6.906682698895028	1.2342011982088408
42	VNQI	-6.097155649039032	1.0710516464415583
43	VNQ	-1.839164216735889	1.3107017894957556
44	REZ	-0.8116882982842188	1.385068823666551
45	TAN	-20.84569813645184	1.3238213064144233
46	PBJ	-0.6372298316975278	1.2593020523006355
47	IBB	-12.58745531546751	1.0730344321039293
48	CHIX	-13.873870984186187	1.0199146319071606
49	IHF	-4.287130052803734	1.1902402675699386
50	KWEB	-53.93346062926232	1.0678158690886577
51	XLE	-4.497080342201798	1.4680738034180894
52	CHIU	-11.109120148172025	1.259862518890024
53	XOP	-8.549810711597683	1.7334139595640778
54	XLY	-0.2506852634032053	1.349264205195271
55	XLI	-0.8232038075317138	1.250678315931467
56	ARKK	-30.71273687885946	1.0400728636085699
57	CHII	-3.1627329290646156	1.1968728157671988
58	CHIR	-31.81561031055692	1.0715555826822916
59	ARKG	-41.90697397212455	1
60	CRAK	-11.437699715555205	1.1291242433730315
61	EVX	0	1.3670452568009301
62	BETZ	-16.979969489475966	1.1391120916953232
63	INDS	-0.2327438777846802	1.4650094709058228
64	CIBR	-5.328821325863931	1.3804573691218296
65	CHIE	-14.866516524097396	1.3407007127639452
66	REMX	-0.10846662918067018	2.134046425614965
67	IAI	-2.331284897710284	1.509822600291242
68	PBW	-32.48287620892059	1.2023857170700263
69	FAN	-22.76579374360237	1
70	CHIH	-27.45548679466786	1.0242127727228356
71	BBC	-29.744707443990137	1
72	ITB	-0.28007792763312667	1.4314692997744087
73	tlt	-8.488332293033507	1.0880890175672542
74	ief	-5.3540337945379495	1.0087587178135127
75	ethe	-12.5409692398051	4.235480829463922
76	blok	-9.261654082674298	1.8945233624093307
77	gbtc	-20.37036875070012	2.3971331946121524
\.


--
-- Data for Name: leaders & laggards_2021-11-25; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."leaders & laggards_2021-11-25" (id, name, off_hi, gain_factor) FROM stdin;
1	KRE	0	1.522557185344586
2	XRT	-2.8108503602889634	1.6268584107251765
3	XLF	-1.2801587184570251	1.4089950725261633
4	IYT	-1.4209305753300927	1.2890860420452963
5	XTL	-3.8764093603712246	1.2619016296543648
6	XLK	-0.6245940579525766	1.3879015197335471
7	EFA	-3.4239034592941087	1.1052852203060843
8	SIL	-20.94455976005163	1.1012586100752966
9	WOOD	-10.005168274083498	1.1966739573729088
10	XLC	-8.0145061147628	1.2041660536703183
11	XLB	-2.4306269135406677	1.2444791112921736
12	SOCL	-24.327817407366858	1.0182640321169765
13	IHE 	-2.453397897840248	1.1142831600784353
14	ESPO	-8.527701020378576	1.1512893120331247
15	XHB	-0.2498592578727976	1.4828439154635034
16	QQQ	-1.294581696372188	1.3336008720182568
17	SOXX	-0.7662113311693086	1.491850048433759
18	GDX	-17.75748433574137	1.1053528214550645
19	CHIQ	-30.73170679837548	1.0765342553607857
20	COPX 	-17.77577428971596	1.3530066830124694
21	EUFN	-4.764151851576615	1.2003567717227963
22	IBUY	-25.537271013982853	1
23	IHI	-4.790425795575636	1.2272068989452298
24	XLRE	0	1.377734191765025
25	KBE	0	1.4444445080863757
26	IDU 	-1.9744448064690223	1.164780604364717
27	IGV	-4.7184935010952	1.2558817434513738
28	MJ	-47.87659973523311	1
29	MOO	-1.7563845041394188	1.253162885869864
30	FDN	-5.774269108048735	1.1444615106141842
31	OIH	-21.353828328767776	1.302375952486528
32	XLP	-0.16438732408496914	1.1513427824932512
33	XLV	-3.207891263320639	1.2103436015983804
34	URA	-9.62176402540431	2.283319285356615
35	UFO	-10.256406586138144	1.1457086481854604
36	XME	-5.728181823093037	1.4782896374324344
37	RTM	-2.180592924350544	1.2800706732247327
38	RGI	-0.5062959235116238	1.3057035912109933
39	XLU	-3.017303876939059	1.162097309553398
40	SLX 	-17.01809570913605	1.3684340991984996
41	SKYY	-6.730449837180686	1.2365376366922618
42	VNQI	-5.48578927579687	1.0780248639747
43	VNQ	0	1.3373058474299264
44	REZ	0	1.4207345434135275
45	TAN	-22.766240369320045	1.2917010720382485
46	PBJ	-0.7055019760635939	1.2584367860508165
47	IBB	-12.74671746391476	1.0710794064307667
48	CHIX	-14.234233873023271	1.0156471768697493
49	IHF	-3.647678084019723	1.1981921917243756
50	KWEB	-53.463793744165045	1.078702681077207
51	XLE	-0.6007526333754343	1.5279682721877983
52	CHIU	-9.253964921020563	1.286155886008304
53	XOP	-3.6186320789651782	1.8268831360132658
54	XLY	-0.7709795179876799	1.3422264183620145
55	XLI	-0.7670717335076072	1.2513861747301518
56	ARKK	-31.17256649457245	1.0331703495873354
57	CHII	-3.737778271097536	1.1897654679606091
58	CHIR	-31.957016259499525	1.0693333095974393
59	ARKG	-41.826620463001596	1
60	CRAK	-10.372204774416716	1.1427087614508902
61	EVX	-0.007523151637733871	1.3632772115342768
62	BETZ	-20.246537589226588	1.09429173692202
63	INDS	0	1.4875086710257641
64	CIBR	-5.310995383747253	1.3807172999001418
65	CHIE	-12.368026508405638	1.3800474798420208
66	REMX	0	2.2092692658196724
67	IAI	-0.9815908257365336	1.5306869949053297
68	PBW	-33.10002057932642	1.1913952374008645
69	FAN	-22.342062563976263	1.0024862871975653
70	CHIH	-27.47432265940618	1.0239468403676806
71	BBC	-29.322137147910944	1
72	ITB	0	1.4356724379763144
73	tlt	-8.363496314062491	1.089573338213126
74	ief	-5.4536396017693	1.00769709595663
75	ethe	-8.149441784861578	4.448154468604494
76	blok	-7.78820869384107	1.9252873870800278
77	gbtc	-18.130515794831183	2.4645606809300773
\.


--
-- Data for Name: leaders_11/20/2021; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."leaders_11/20/2021" (id, name, price) FROM stdin;
1	goog	5
2	aapl	10
3	hd	15
\.


--
-- Data for Name: retail_2021-11-26; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."retail_2021-11-26" (id, name, off_hi, gain_factor) FROM stdin;
1	KRE	-5.009306624303223	1.4462876274003151
2	XRT	-5.153229383638591	1.5876491056806397
3	XLF	-4.5544030594962255	1.3622628849245464
4	IYT	-4.381208994981889	1.2503754555728088
5	XTL	-6.224754308711278	1.2310727738284235
6	XLK	-3.105476703780863	1.3532528985602799
7	EFA	-6.019254855337586	1.0755821815387374
8	SIL	-22.299795565128587	1.0823798954100767
9	WOOD	-11.400515534156973	1.1781198282568397
10	XLC	-9.699310631949876	1.182110571648357
11	XLB	-4.106544962156589	1.2231030899264126
12	SOCL	-25.491211304443016	1.0026091095286542
13	IHE 	-2.260156685089021	1.1164905709421813
14	ESPO	-9.90990855271805	1.1338925615770261
15	XHB	-2.070202772143348	1.4557834493417792
16	QQQ	-3.1659145861321014	1.3083174456723645
17	SOXX	-3.527929732216506	1.4503312292328474
18	GDX	-18.518517443289518	1.095124412391276
19	CHIQ	-33.44947705860518	1.0342959866218433
20	COPX 	-21.52041624515396	1.291388278613645
21	EUFN	-8.679245690426896	1.1510107587165381
22	IBUY	-26.46446203695011	1
23	IHI	-5.658686259438239	1.2160154274967203
24	XLRE	-2.707107270791087	1.340437449287579
25	KBE	-4.6084542466329985	1.377877943813212
26	IDU 	-3.472703736072924	1.1469776657527047
27	IGV	-5.632402527102043	1.243835736801063
28	MJ	-49.198714862678536	1
29	MOO	-4.225647203841509	1.2216657920881326
30	FDN	-6.730689635147313	1.1328448696938733
31	OIH	-25.71533838254715	1.2301496038943016
32	XLP	-1.424658788393618	1.1368088459998258
33	XLV	-3.565951527339495	1.2058662123235913
34	URA	-14.067683666159558	2.170997397820155
35	UFO	-12.570358084134469	1.1161676621174053
36	XME	-9.32149591925775	1.421942373794939
37	RTM	-3.9425335554431173	1.2570138116340626
38	DDS	-9.770440623325571	6.859299253630835
39	OSTK	-14.592791582939245	1.9216176351772176
40	M	-12.186688717397853	2.9223392761657867
41	BOOT	-4.029358215748746	3.070964520742202
42	DLTR	-3.7514494080233107	1.6691506870380703
43	CHS	-18.364415659989508	3.8445945837098896
44	RVLV	-7.9409390319938655	3.441112538790423
45	REAL	-43.76328748509588	1.3575706120802722
46	SIG	-4.724046128179193	3.9396023761364436
47	PLCE	-8.836082197070294	2.1601930933022735
48	ANF	-17.711942353194587	1.8987024699973312
49	GPI	-3.511061701043283	1.6911291206899959
50	BKE	-3.995253961426437	1.7304813631294063
51	DBI	-23.606889065065808	2.112044846735919
52	BGFV	-41.432455171902184	3.158924106181022
53	ETSY	-1.8625168270147374	1.8795072384514795
54	JWN	-47.25818083747191	1
55	PAG	-9.022826690581532	1.7848522683870816
56	SBH	-20.086997418555686	1.7288280419091338
57	AN	-2.521454164516368	2.018888927641369
58	AZO	-3.8197848355642883	1.622164455083436
59	GRPN	-63.57415764788827	1.078699346387017
60	MUSA	-3.527694755738797	1.4438524431892827
61	AAP	-5.14976485288744	1.5202494076399735
62	BBY	-15.690889204135306	1.1501151978164594
63	HZO	-16.46861313088085	1.7813515467153234
64	URBN	-22.694175262929395	1.2441406213620212
65	CAL	-9.491402619229616	2.107589736459773
66	HIBB	-11.09538786289448	2.0667137417816437
67	BBWI	-2.3557164840844136	2.4816502053887612
68	ZUMZ	-9.050728289029141	1.3143572351335648
69	ACI	0	2.3892977709983616
70	DASH	-23.600440201515028	1.5046841147196062
71	FIVE	-9.048907228447135	1.2968076967386322
72	WOOF	-27.679532379498372	1.043750006208817
73	KSS	-14.085405336212142	1.6095521841476212
74	COST	-0.6548625168428801	1.7210701886969557
75	GO	-34.103509098511566	1.3333333927800743
76	KMX	-5.779302023602051	1.579089871950164
77	CTRN	-27.948361836339387	2.260341338717092
78	SSTK	-8.729900969045868	1.7293430232947176
79	GME	-38.54769193209135	15.005258822257396
80	ORLY	-4.195492042765903	1.494182853420444
81	TSCO	-0.9541971597579857	1.6993599666073484
82	TGT	-5.723790139791129	1.4468372842005455
83	FLWS	-14.379780678523812	1.4397696382364442
84	ABG	-29.925889513866743	1.350375989297055
85	BJ	-4.697607015930205	1.779506397804175
86	ULTA	-2.448969342486118	1.5097112177463212
87	PRCH	-11.170218453066937	2.0384976396335954
88	BIG	-35.30577412542232	1.0685059685250464
89	CWH	-1.2084621740333423	1.7573896399262483
90	FL	-24.61300013428207	1.2772095305201283
91	SFM	-7.275864173626079	1.3846549579818561
92	ASO	-8.197049581935346	2.898614511812139
93	CASY	-13.037846960552512	1.1108387166261293
94	GPS	-51.47017539061925	1
95	DG	-5.212027633128846	1.2557774592234472
96	PETS	-23.9267044880911	1.0986766967001356
97	AMZN	-5.774681105289425	1.1680076069066234
98	SAH	-16.05734624906897	1.2258571388352164
99	ROST	-17.26083289618481	1.019838688561786
100	EBAY	-10.075686172192766	1.4750661438054653
101	DKS	-11.495283532446921	2.449018429778455
102	TJX	-6.320907951520994	1.1058673351469364
103	WMT	-4.419532940161197	1.122211891078335
104	AEO	-29.205175014225794	1.44918916032121
105	GES	-23.714480228453393	1.3087637745888019
106	PRTY	-40.039450514321054	1.245901594492609
107	KR	-8.095439599988264	1.4107259482432402
108	CHWY	-41.53677819334089	1.1084664709430359
109	MNRO	-18.144763978278267	1.2227587733029504
110	WBA	-17.013197638350018	1.176923116048177
111	LAD	-28.40368744506022	1.0564483307158874
112	SCVL	-5.875528363460381	2.233673064579911
113	W	-19.570525105166126	1.2241265507122119
114	OLLI	-34.12843654260721	1.078258007968026
115	BURL	-18.32124335951547	1.2810271854765087
116	ODP	-22.94786885121004	1.4525603391116566
117	CVNA	-19.355649484262415	1.2255714513855993
118	SFIX	-71.18241763016768	1.005037761246356
119	LESL	-30.040324144155818	1.0493951378376627
120	PRTS	-37.57281835661919	1.09353736448864
121	QRTEA	-40.58393827262849	1
122	EYE	-26.45111208268267	1.1171656298617654
123	VSCO	-27.93900830927528	1.0675648853761728
124	POSH	-77.12740218189687	1
125	SPWH	-4.178272802909799	1.4576271597389099
126	RCII	-27.13606654226818	1.391329843268903
127	RAD	-52.90985285919459	1
128	WISH	-86.96375086106612	1
129	VRM	-69.48753216427181	1
130	GCO	-11.32181640241534	2.2676006006503893
131	SFT	-55.36723331265243	1
132	QUOT	-56.60936687900004	1.2664359698879821
133	FRG	-3.6274684947361524	1.7879016843654674
134	LE	-41.86704169764647	1.3549449897621495
135	CRMT	-37.93418142337334	1
136	CONN	-21.827585943813975	2.0571687054988064
137	PSMT	-28.409539689953988	1.0097290424923893
138	IMKTA	-3.6078551823551575	2.0568093210263854
139	TA	-12.504120999531255	2.2063227494001056
140	LQDT	-7.760208050414052	2.620689730770856
141	WMK	-3.678619893402202	1.3331913860654971
142	ONEW	-6.161483428237702	1.841877222112739
143	ARKO	-8.930232912995095	1.288157905881755
144	WINA	0	1.5647892654247637
\.


--
-- Data for Name: retail_xrt_2021-11-25; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."retail_xrt_2021-11-25" (id, name, off_hi, gain_factor) FROM stdin;
1	DDS	0	7.602053363683007
2	OSTK	-14.018342639337888	1.9345424367366233
3	M	-7.40420559669186	3.081495536840904
4	BOOT	0	3.1998999523687104
5	DLTR	0	1.7342086470621731
6	CHS	-9.03873251890639	4.283783831676486
7	RVLV	-3.8018883748911048	3.5958277723055136
8	REAL	-42.09780102703494	1.3977759400443128
9	SIG	-3.09697562247242	4.00688074565083
10	PLCE	-6.653734929078081	2.211905345354613
11	ANF	-15.116785088098139	1.95858274485349
12	GPI	-1.337778569072512	1.7292195221056768
13	BKE	0	1.8024956416572568
14	DBI	-16.970620163689944	2.295518164724535
15	BGFV	-41.93109370018986	3.1320293256007217
16	ETSY	0	1.9151777462424875
17	JWN	-46.669807125717746	1
18	PAG	-8.336310447780681	1.7983208125138623
19	SBH	-16.29102684889123	1.8109496010435107
20	AN	-2.6747378740394456	2.0157142518058655
21	AZO	-1.653029162057773	1.6587087072500948
22	GRPN	-62.84213824829514	1.1003770564108712
23	MUSA	0	1.496649675296499
24	AAP	-2.3719872524252783	1.5647713294370935
25	BBY	-14.280468481684972	1.1693556605955424
26	HZO	-12.659959835259006	1.8625731173530613
27	URBN	-19.80582450559626	1.2906250165309754
28	CAL	-1.9699113021404813	2.2827357265813295
29	HIBB	-6.881565907029474	2.16467000672971
30	BBWI	-2.093974645768859	2.488302429804016
31	ZUMZ	-4.458108481954293	1.3807276739297052
32	ACI	-0.570930503030409	2.3297660384897854
33	DASH	-24.816037826560855	1.4807430024786217
34	FIVE	-6.76113952264955	1.3294273682436273
35	WOOF	-27.31865732563694	1.048958259862333
36	KSS	-11.854682641309589	1.6513432744723648
37	COST	0	1.7324151259932012
38	GO	-33.109977866293804	1.3534362594208222
39	KMX	-4.738510385524853	1.5965329982461485
40	CTRN	-22.535726601887983	2.4301418246413333
41	SSTK	-7.568620871381693	1.7513464138498813
42	GME	-34.83692345252404	15.911344260152601
43	ORLY	-2.570941629412471	1.51951960869331
44	TSCO	-2.055859769503332	1.6804583949907388
45	TGT	-4.886447052283726	1.459687813517217
46	FLWS	-16.038983050166333	1.4118688781436515
47	ABG	-28.092793887437338	1.3857009945356953
48	BJ	-2.729495057059894	1.8162553997205284
49	ULTA	0	1.5476117551711748
50	PRCH	-8.101478749256941	2.108920177367311
51	BIG	-36.46658910547509	1.0493336588208653
52	CWH	-2.0069061331754123	1.7431862256183361
53	FL	-22.848295155062726	1.30710723200752
54	SFM	-7.6206864981815725	1.3795057059876112
55	ASO	-6.043077016714982	2.966624702194478
56	CASY	-11.863947227635819	1.1258338981756182
57	GPS	-50.04200333249227	1
58	DG	-5.630174919889097	1.2502377275018253
59	PETS	-25.5235596996615	1.0756143645486131
60	AMZN	-3.7353447788648575	1.1932870155649964
61	SAH	-15.609317569108061	1.2323999288375747
62	ROST	-13.124250674256889	1.070825986790758
63	EBAY	-9.839921871361145	1.4789334842751474
64	DKS	-12.321784619342669	2.426148276923023
65	TJX	-3.4575871514567758	1.139668398688406
66	WMT	-3.337739191070832	1.1349132499047507
67	AEO	-25.56112667243051	1.523783812651763
68	GES	-19.72259820377569	1.3772489943523438
69	PRTY	-38.36292121907412	1.2807376748834436
70	KR	-9.37366391118305	1.391105330989544
71	CHWY	-43.46617483031363	1.0718849857777601
72	MNRO	-13.872104757428684	1.286584031179443
73	WBA	-15.711448609008027	1.1953845879970453
74	LAD	-27.820344974994637	1.0650559133796393
75	SCVL	0	2.3731055545312483
76	W	-18.72671866944493	1.2369691791513353
77	OLLI	-32.80326279889281	1.0999499054441388
78	BURL	-16.525666002343787	1.3091885275778268
79	ODP	-19.992007953952406	1.5082832145632965
80	CVNA	-19.607733565606665	1.2217404694077112
81	SFIX	-71.32686603327683	1
82	LESL	-30.37634692876816	1.0443547960684776
83	PRTS	-37.038834821111536	1.1028911577038312
84	QRTEA	-39.9999972155494	1
85	EYE	-24.110849528128675	1.1527128823741264
86	VSCO	-25.745615955016675	1.1000594237154289
87	POSH	-77.01922891760712	1
88	SPWH	-3.844013953928238	1.4627118601603126
89	RCII	-28.071793781885688	1.3734622210879686
90	RAD	-51.57855040348149	1
91	WISH	-86.79747233488145	1
92	VRM	-69.15374053797044	1
93	GCO	-5.46424955224597	2.417385153839587
94	SFT	-54.143126760469784	1
95	QUOT	-57.913458497757816	1.2283736413338273
96	FRG	0	1.8551984226623874
97	LE	-39.01461113647049	1.4214285579543666
98	CRMT	-35.89026109803319	1
99	CONN	-19.000000789247707	2.131578838054338
100	PSMT	-23.14742285782464	1.0839472018306306
101	IMKTA	0	2.1337935004117483
102	TA	-6.9778944519437225	2.345673762151413
103	LQDT	-3.2364878662395125	2.749216332804245
104	WMK	0	1.3841074376115345
105	ONEW	-1.7288921191383921	1.928880824316119
106	ARKO	-4.558137405750362	1.3500000470562992
107	WINA	0	1.5644963052680603
\.


--
-- Data for Name: semis_12/05/2020; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."semis_12/05/2020" (id, name, price) FROM stdin;
1	shw	35
2	tsla	310
3	low	315
\.


--
-- Data for Name: soxx_2021-11-23; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."soxx_2021-11-23" (id, name, off_hi, gain_factor) FROM stdin;
1	NVDA	-3.1196023509220683	2.564378309486794
2	AVGO	-2.7148583136901494	1.400886219005477
3	INTC	-26.999706604746297	1.0586361196967238
4	QCOM	-1.9459492451435856	1.4334254407113163
5	TXN	-4.061796234436454	1.2107679309959942
6	AMD	-1.8595967579615014	2.044778278062242
7	KLAC	-3.428195184179128	1.6050839572626623
8	MRVL	-2.4537433442280876	1.7525898082790605
9	XLNX	-0.1539350502136938	1.868898294739804
10	AMAT	-5.911238260112817	1.7850229435616811
11	ADI	-1.7478829440766175	1.3466424682395643
12	MCHP	-3.579757017668328	1.2433652485739553
13	NXPI	-2.0484744612487282	1.4267249884536166
14	LRCX	-2.3111764037717197	1.4165242916347787
15	MU	-12.004199449178543	1.3056203678572424
16	ASML	-4.957299205950061	1.8862645241179639
17	TSM	-9.640734314039722	1.2634191077471582
18	SWKS	-18.75324623484279	1.1496033678710607
19	ON	-2.5734150050339633	2.1539266982942578
20	MPWR	-2.2310311966126983	1.8196821999015298
21	TER	-1.2494211253172516	1.3654479232111911
22	ENTG	-1.6167718480533333	1.6783341417945135
23	QRVO	-22.701486474483545	1.007594426653875
24	WOLF	-9.15084485360037	1.602376066459044
25	STM	-1.8966510101897538	1.4503575828375954
26	LSCC	-3.7522263382885446	2.0144602797863085
27	UMC	-7.27999877929687	1.662840818000829
28	MKSI	-17.79513454677484	1.1654962701966576
29	OLED	-40.00000121778042	1
30	ASX	-19.194065334475717	1.448669116727193
\.


--
-- Data for Name: soxx_2021-11-26; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."soxx_2021-11-26" (id, name, off_hi, gain_factor) FROM stdin;
1	NVDA	-4.492953478851181	2.52802635461015
2	AVGO	-3.891184587785157	1.3839473603280923
3	INTC	-28.537947183265857	1.036328852678125
4	QCOM	-5.005402436127538	1.3887001284487364
5	TXN	-6.174931356360003	1.1840995534460206
6	AMD	-1.8948069932440692	2.0754793559354625
7	KLAC	-5.54477322718725	1.5699051028588749
8	MRVL	-3.4727861406496974	1.73428091483263
9	XLNX	-2.6516000967594877	1.897881330069849
10	AMAT	-8.627734604114135	1.7334864134758767
11	ADI	-5.720340506984578	1.2921960072595282
12	MCHP	-6.6347974576395625	1.2039696714777188
13	NXPI	-6.207230541506825	1.3661501154442088
14	LRCX	-3.02417213462991	1.4061855882354317
15	MU	-12.465901891273202	1.2987699487632078
16	ASML	-9.990560422324336	1.786371928539914
17	TSM	-15.189049392676758	1.1858415927802468
18	SWKS	-20.855396642179425	1.1198589279266538
19	ON	-4.79949622387732	2.104712043279039
20	MPWR	-6.233899235891949	1.7451805680567758
21	TER	-3.2524611819826688	1.337751408247431
22	ENTG	-3.246542548105913	1.6505316406916821
23	QRVO	-24.30622885657182	1
24	WOLF	-11.142961455895106	1.5672395815905957
25	STM	-7.973677332856899	1.3605149699304722
26	LSCC	-10.25610592417281	1.8783344600210983
27	UMC	-10.95999908447266	1.5968436799816434
28	MKSI	-20.838438685518877	1.1223484637593555
29	OLED	-42.36233083659931	1
30	NVDA	-4.492953478851181	2.52802635461015
31	AVGO	-3.891184587785157	1.3839473603280923
32	INTC	-28.537947183265857	1.036328852678125
33	QCOM	-5.005402436127538	1.3887001284487364
34	TXN	-6.174931356360003	1.1840995534460206
35	AMD	-1.8948069932440692	2.0754793559354625
36	KLAC	-5.54477322718725	1.5699051028588749
37	MRVL	-3.4727861406496974	1.73428091483263
38	XLNX	-2.6516000967594877	1.897881330069849
39	AMAT	-8.627734604114135	1.7334864134758767
40	ADI	-5.720340506984578	1.2921960072595282
41	MCHP	-6.6347974576395625	1.2039696714777188
42	NXPI	-6.207230541506825	1.3661501154442088
43	LRCX	-3.02417213462991	1.4061855882354317
44	MU	-12.465901891273202	1.2987699487632078
45	ASML	-9.990560422324336	1.786371928539914
46	TSM	-15.189049392676758	1.1858415927802468
47	SWKS	-20.855396642179425	1.1198589279266538
48	ON	-4.79949622387732	2.104712043279039
49	MPWR	-6.233899235891949	1.7451805680567758
50	TER	-3.2524611819826688	1.337751408247431
51	ENTG	-3.246542548105913	1.6505316406916821
52	QRVO	-24.30622885657182	1
53	WOLF	-11.142961455895106	1.5672395815905957
54	STM	-7.973677332856899	1.3605149699304722
55	LSCC	-10.25610592417281	1.8783344600210983
56	UMC	-10.95999908447266	1.5968436799816434
57	MKSI	-20.838438685518877	1.1223484637593555
58	OLED	-42.36233083659931	1
59	ASX	-23.541889662615723	1.3707223810672087
\.


--
-- Data for Name: spy weekly5y; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."spy weekly5y" (id, name, price, date) FROM stdin;
1	spy	219.67999267578125	2016-11-28
2	spy	226.50999450683594	2016-12-05
3	spy	225.0399932861328	2016-12-12
4	spy	NaN	2016-12-16
5	spy	225.7100067138672	2016-12-19
6	spy	223.52999877929688	2016-12-26
7	spy	227.2100067138672	2017-01-02
8	spy	227.0500030517578	2017-01-09
9	spy	226.74000549316406	2017-01-16
10	spy	228.97000122070312	2017-01-23
11	spy	229.33999633789062	2017-01-30
12	spy	231.50999450683594	2017-02-06
13	spy	235.08999633789062	2017-02-13
14	spy	236.74000549316406	2017-02-20
15	spy	238.4199981689453	2017-02-27
16	spy	237.69000244140625	2017-03-06
17	spy	237.02999877929688	2017-03-13
18	spy	NaN	2017-03-17
19	spy	233.86000061035156	2017-03-20
20	spy	235.74000549316406	2017-03-27
21	spy	235.1999969482422	2017-04-03
22	spy	232.50999450683594	2017-04-10
23	spy	234.58999633789062	2017-04-17
24	spy	238.0800018310547	2017-04-24
25	spy	239.6999969482422	2017-05-01
26	spy	238.97999572753906	2017-05-08
27	spy	238.30999755859375	2017-05-15
28	spy	241.7100067138672	2017-05-22
29	spy	244.1699981689453	2017-05-29
30	spy	243.41000366210938	2017-06-05
31	spy	242.63999938964844	2017-06-12
32	spy	NaN	2017-06-16
33	spy	243.1300048828125	2017-06-19
34	spy	241.8000030517578	2017-06-26
35	spy	242.11000061035156	2017-07-03
36	spy	245.55999755859375	2017-07-10
37	spy	246.8800048828125	2017-07-17
38	spy	246.91000366210938	2017-07-24
39	spy	247.41000366210938	2017-07-31
40	spy	244.1199951171875	2017-08-07
41	spy	242.7100067138672	2017-08-14
42	spy	244.55999755859375	2017-08-21
43	spy	247.83999633789062	2017-08-28
44	spy	246.5800018310547	2017-09-04
45	spy	249.19000244140625	2017-09-11
46	spy	NaN	2017-09-15
47	spy	249.44000244140625	2017-09-18
48	spy	251.22999572753906	2017-09-25
49	spy	254.3699951171875	2017-10-02
50	spy	254.9499969482422	2017-10-09
51	spy	257.1099853515625	2017-10-16
52	spy	257.7099914550781	2017-10-23
53	spy	258.45001220703125	2017-10-30
54	spy	258.0899963378906	2017-11-06
55	spy	257.8599853515625	2017-11-13
56	spy	260.3599853515625	2017-11-20
57	spy	264.4599914550781	2017-11-27
58	spy	265.510009765625	2017-12-04
59	spy	266.510009765625	2017-12-11
60	spy	NaN	2017-12-15
61	spy	267.510009765625	2017-12-18
62	spy	266.8599853515625	2017-12-25
63	spy	273.4200134277344	2018-01-01
64	spy	277.9200134277344	2018-01-08
65	spy	280.4100036621094	2018-01-15
66	spy	286.5799865722656	2018-01-22
67	spy	275.45001220703125	2018-01-29
68	spy	261.5	2018-02-05
69	spy	273.1099853515625	2018-02-12
70	spy	274.7099914550781	2018-02-19
71	spy	269.0799865722656	2018-02-26
72	spy	278.8699951171875	2018-03-05
73	spy	274.20001220703125	2018-03-12
74	spy	NaN	2018-03-16
75	spy	258.04998779296875	2018-03-19
76	spy	263.1499938964844	2018-03-26
77	spy	259.7200012207031	2018-04-02
78	spy	265.1499938964844	2018-04-09
79	spy	266.6099853515625	2018-04-16
80	spy	266.55999755859375	2018-04-23
81	spy	266.0199890136719	2018-04-30
82	spy	272.8500061035156	2018-05-07
83	spy	271.3299865722656	2018-05-14
84	spy	272.1499938964844	2018-05-21
85	spy	273.6000061035156	2018-05-28
86	spy	278.19000244140625	2018-06-04
87	spy	277.1300048828125	2018-06-11
88	spy	NaN	2018-06-15
89	spy	274.739990234375	2018-06-18
90	spy	271.2799987792969	2018-06-25
91	spy	275.4200134277344	2018-07-02
92	spy	279.5899963378906	2018-07-09
93	spy	279.67999267578125	2018-07-16
94	spy	281.4200134277344	2018-07-23
95	spy	283.6000061035156	2018-07-30
96	spy	283.1600036621094	2018-08-06
97	spy	285.05999755859375	2018-08-13
98	spy	287.510009765625	2018-08-20
99	spy	290.30999755859375	2018-08-27
100	spy	287.6000061035156	2018-09-03
101	spy	290.8800048828125	2018-09-10
102	spy	291.989990234375	2018-09-17
103	spy	NaN	2018-09-21
104	spy	290.7200012207031	2018-09-24
105	spy	287.82000732421875	2018-10-01
106	spy	275.95001220703125	2018-10-08
107	spy	276.25	2018-10-15
108	spy	265.3299865722656	2018-10-22
109	spy	271.8900146484375	2018-10-29
110	spy	277.760009765625	2018-11-05
111	spy	273.7300109863281	2018-11-12
112	spy	263.25	2018-11-19
113	spy	275.6499938964844	2018-11-26
114	spy	263.57000732421875	2018-12-03
115	spy	260.4700012207031	2018-12-10
116	spy	240.6999969482422	2018-12-17
117	spy	NaN	2018-12-21
118	spy	247.75	2018-12-24
119	spy	252.38999938964844	2018-12-31
120	spy	258.9800109863281	2019-01-07
121	spy	266.4599914550781	2019-01-14
122	spy	265.7799987792969	2019-01-21
123	spy	270.05999755859375	2019-01-28
124	spy	270.4700012207031	2019-02-04
125	spy	277.3699951171875	2019-02-11
126	spy	279.1400146484375	2019-02-18
127	spy	280.4200134277344	2019-02-25
128	spy	274.4599914550781	2019-03-04
129	spy	281.30999755859375	2019-03-11
130	spy	NaN	2019-03-15
131	spy	279.25	2019-03-18
132	spy	282.4800109863281	2019-03-25
133	spy	288.57000732421875	2019-04-01
134	spy	290.1600036621094	2019-04-08
135	spy	290.0199890136719	2019-04-15
136	spy	293.4100036621094	2019-04-22
137	spy	294.0299987792969	2019-04-29
138	spy	288.1000061035156	2019-05-06
139	spy	285.8399963378906	2019-05-13
140	spy	282.7799987792969	2019-05-20
141	spy	275.2699890136719	2019-05-27
142	spy	287.6499938964844	2019-06-03
143	spy	289.260009765625	2019-06-10
144	spy	294	2019-06-17
145	spy	NaN	2019-06-21
146	spy	293	2019-06-24
147	spy	298.4599914550781	2019-07-01
148	spy	300.6499938964844	2019-07-08
149	spy	297.1700134277344	2019-07-15
150	spy	302.010009765625	2019-07-22
151	spy	292.6199951171875	2019-07-29
152	spy	291.6199951171875	2019-08-05
153	spy	288.8500061035156	2019-08-12
154	spy	284.8500061035156	2019-08-19
155	spy	292.45001220703125	2019-08-26
156	spy	298.04998779296875	2019-09-02
157	spy	301.0899963378906	2019-09-09
158	spy	298.2799987792969	2019-09-16
159	spy	NaN	2019-09-20
160	spy	295.3999938964844	2019-09-23
161	spy	294.3500061035156	2019-09-30
162	spy	296.2799987792969	2019-10-07
163	spy	297.9700012207031	2019-10-14
164	spy	301.6000061035156	2019-10-21
165	spy	306.1400146484375	2019-10-28
166	spy	308.94000244140625	2019-11-04
167	spy	311.7900085449219	2019-11-11
168	spy	310.9599914550781	2019-11-18
169	spy	314.30999755859375	2019-11-25
170	spy	314.8699951171875	2019-12-02
171	spy	317.32000732421875	2019-12-09
172	spy	320.7300109863281	2019-12-16
173	spy	NaN	2019-12-20
174	spy	322.8599853515625	2019-12-23
175	spy	322.4100036621094	2019-12-30
176	spy	325.7099914550781	2020-01-06
177	spy	331.95001220703125	2020-01-13
178	spy	328.7699890136719	2020-01-20
179	spy	321.7300109863281	2020-01-27
180	spy	332.20001220703125	2020-02-03
181	spy	337.6000061035156	2020-02-10
182	spy	333.4800109863281	2020-02-17
183	spy	296.260009765625	2020-02-24
184	spy	297.4599914550781	2020-03-02
185	spy	269.32000732421875	2020-03-09
186	spy	228.8000030517578	2020-03-16
187	spy	NaN	2020-03-20
188	spy	253.4199981689453	2020-03-23
189	spy	248.19000244140625	2020-03-30
190	spy	278.20001220703125	2020-04-06
191	spy	286.6400146484375	2020-04-13
192	spy	282.9700012207031	2020-04-20
193	spy	282.7900085449219	2020-04-27
194	spy	292.44000244140625	2020-05-04
195	spy	286.2799987792969	2020-05-11
196	spy	295.44000244140625	2020-05-18
197	spy	304.32000732421875	2020-05-25
198	spy	319.3399963378906	2020-06-01
199	spy	304.2099914550781	2020-06-08
200	spy	308.6400146484375	2020-06-15
201	spy	NaN	2020-06-19
202	spy	300.04998779296875	2020-06-22
203	spy	312.2300109863281	2020-06-29
204	spy	317.5899963378906	2020-07-06
205	spy	321.7200012207031	2020-07-13
206	spy	320.8800048828125	2020-07-20
207	spy	326.5199890136719	2020-07-27
208	spy	334.57000732421875	2020-08-03
209	spy	336.8399963378906	2020-08-10
210	spy	339.4800109863281	2020-08-17
211	spy	350.5799865722656	2020-08-24
212	spy	342.57000732421875	2020-08-31
213	spy	334.05999755859375	2020-09-07
214	spy	330.6499938964844	2020-09-14
215	spy	NaN	2020-09-18
216	spy	328.7300109863281	2020-09-21
217	spy	333.8399963378906	2020-09-28
218	spy	346.8500061035156	2020-10-05
219	spy	347.2900085449219	2020-10-12
220	spy	345.7799987792969	2020-10-19
221	spy	326.5400085449219	2020-10-26
222	spy	350.1600036621094	2020-11-02
223	spy	358.1000061035156	2020-11-09
224	spy	355.3299865722656	2020-11-16
225	spy	363.6700134277344	2020-11-23
226	spy	369.8500061035156	2020-11-30
227	spy	366.29998779296875	2020-12-07
228	spy	369.17999267578125	2020-12-14
229	spy	NaN	2020-12-18
230	spy	369	2020-12-21
231	spy	373.8800048828125	2020-12-28
232	spy	381.260009765625	2021-01-04
233	spy	375.70001220703125	2021-01-11
234	spy	382.8800048828125	2021-01-18
235	spy	370.07000732421875	2021-01-25
236	spy	387.7099914550781	2021-02-01
237	spy	392.6400146484375	2021-02-08
238	spy	390.0299987792969	2021-02-15
239	spy	380.3599853515625	2021-02-22
240	spy	383.6300048828125	2021-03-01
241	spy	394.05999755859375	2021-03-08
242	spy	389.4800109863281	2021-03-15
243	spy	NaN	2021-03-19
244	spy	395.9800109863281	2021-03-22
245	spy	400.6099853515625	2021-03-29
246	spy	411.489990234375	2021-04-05
247	spy	417.260009765625	2021-04-12
248	spy	416.739990234375	2021-04-19
249	spy	417.29998779296875	2021-04-26
250	spy	422.1199951171875	2021-05-03
251	spy	416.5799865722656	2021-05-10
252	spy	414.94000244140625	2021-05-17
253	spy	420.0400085449219	2021-05-24
254	spy	422.6000061035156	2021-05-31
255	spy	424.30999755859375	2021-06-07
256	spy	414.9200134277344	2021-06-14
257	spy	NaN	2021-06-18
258	spy	426.6099853515625	2021-06-21
259	spy	433.7200012207031	2021-06-28
260	spy	435.5199890136719	2021-07-05
261	spy	431.3399963378906	2021-07-12
262	spy	439.94000244140625	2021-07-19
263	spy	438.510009765625	2021-07-26
264	spy	442.489990234375	2021-08-02
265	spy	445.9200134277344	2021-08-09
266	spy	443.3599853515625	2021-08-16
267	spy	450.25	2021-08-23
268	spy	453.0799865722656	2021-08-30
269	spy	445.44000244140625	2021-09-06
270	spy	441.3999938964844	2021-09-13
271	spy	NaN	2021-09-17
272	spy	443.9100036621094	2021-09-20
273	spy	434.239990234375	2021-09-27
274	spy	437.8599853515625	2021-10-04
275	spy	445.8699951171875	2021-10-11
276	spy	453.1199951171875	2021-10-18
277	spy	459.25	2021-10-25
278	spy	468.5299987792969	2021-11-01
279	spy	467.2699890136719	2021-11-08
280	spy	468.8900146484375	2021-11-15
281	spy	458.9700012207031	2021-11-22
282	spy	458.9700012207031	2021-11-26
\.


--
-- Data for Name: tlt weekly5y; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."tlt weekly5y" (id, name, price, date) FROM stdin;
1	tlt	119.5999984741211	2016-11-28
2	tlt	NaN	2016-12-01
3	tlt	117.5	2016-12-05
4	tlt	117.13999938964844	2016-12-12
5	tlt	118.05000305175781	2016-12-19
6	tlt	NaN	2016-12-22
7	tlt	119.12999725341797	2016-12-26
8	tlt	120.86000061035156	2017-01-02
9	tlt	121.30999755859375	2017-01-09
10	tlt	119.94000244140625	2017-01-16
11	tlt	119.62999725341797	2017-01-23
12	tlt	119	2017-01-30
13	tlt	NaN	2017-02-01
14	tlt	120.76000213623047	2017-02-06
15	tlt	120.31999969482422	2017-02-13
16	tlt	122.01000213623047	2017-02-20
17	tlt	119.3499984741211	2017-02-27
18	tlt	NaN	2017-03-01
19	tlt	117.25	2017-03-06
20	tlt	118.63999938964844	2017-03-13
21	tlt	120.87999725341797	2017-03-20
22	tlt	120.70999908447266	2017-03-27
23	tlt	120.70999908447266	2017-04-03
24	tlt	123.47000122070312	2017-04-10
25	tlt	123.54000091552734	2017-04-17
26	tlt	122.3499984741211	2017-04-24
27	tlt	121.29000091552734	2017-05-01
28	tlt	121.38999938964844	2017-05-08
29	tlt	123.70999908447266	2017-05-15
30	tlt	123.4800033569336	2017-05-22
31	tlt	125.62000274658203	2017-05-29
32	tlt	NaN	2017-06-01
33	tlt	124.4000015258789	2017-06-05
34	tlt	126.3499984741211	2017-06-12
35	tlt	127.77999877929688	2017-06-19
36	tlt	125.12000274658203	2017-06-26
37	tlt	122.72000122070312	2017-07-03
38	tlt	123.33000183105469	2017-07-10
39	tlt	125.69000244140625	2017-07-17
40	tlt	123.88999938964844	2017-07-24
41	tlt	124.93000030517578	2017-07-31
42	tlt	NaN	2017-08-01
43	tlt	126.43000030517578	2017-08-07
44	tlt	126.62000274658203	2017-08-14
45	tlt	127.31999969482422	2017-08-21
46	tlt	126.75	2017-08-28
47	tlt	129	2017-09-04
48	tlt	126.86000061035156	2017-09-11
49	tlt	126.19999694824219	2017-09-18
50	tlt	124.76000213623047	2017-09-25
51	tlt	123.58999633789062	2017-10-02
52	tlt	125.8499984741211	2017-10-09
53	tlt	123.9800033569336	2017-10-16
54	tlt	123.23999786376953	2017-10-23
55	tlt	125.63999938964844	2017-10-30
56	tlt	124.0999984741211	2017-11-06
57	tlt	126.38999938964844	2017-11-13
58	tlt	126.80000305175781	2017-11-20
59	tlt	126.55000305175781	2017-11-27
60	tlt	126.69000244140625	2017-12-04
61	tlt	128.35000610351562	2017-12-11
62	tlt	124.7699966430664	2017-12-18
63	tlt	NaN	2017-12-21
64	tlt	126.86000061035156	2017-12-25
65	tlt	125.70999908447266	2018-01-01
66	tlt	124.5199966430664	2018-01-08
67	tlt	123.05999755859375	2018-01-15
68	tlt	123.58999633789062	2018-01-22
69	tlt	119.58000183105469	2018-01-29
70	tlt	117.94000244140625	2018-02-05
71	tlt	118.70999908447266	2018-02-12
72	tlt	118.12999725341797	2018-02-19
73	tlt	118.3499984741211	2018-02-26
74	tlt	NaN	2018-03-01
75	tlt	117.91000366210938	2018-03-05
76	tlt	119.80999755859375	2018-03-12
77	tlt	120.16999816894531	2018-03-19
78	tlt	121.9000015258789	2018-03-26
79	tlt	121.0999984741211	2018-04-02
80	tlt	120.9000015258789	2018-04-09
81	tlt	118.45999908447266	2018-04-16
82	tlt	118.88999938964844	2018-04-23
83	tlt	118.98999786376953	2018-04-30
84	tlt	119.2300033569336	2018-05-07
85	tlt	117.20999908447266	2018-05-14
86	tlt	119.62000274658203	2018-05-21
87	tlt	120.30000305175781	2018-05-28
88	tlt	NaN	2018-06-01
89	tlt	119.52999877929688	2018-06-04
90	tlt	120.37999725341797	2018-06-11
91	tlt	120.52999877929688	2018-06-18
92	tlt	121.72000122070312	2018-06-25
93	tlt	122.75	2018-07-02
94	tlt	122.72000122070312	2018-07-09
95	tlt	120.76000213623047	2018-07-16
96	tlt	119.45999908447266	2018-07-23
97	tlt	119.22000122070312	2018-07-30
98	tlt	NaN	2018-08-01
99	tlt	120.66000366210938	2018-08-06
100	tlt	120.9800033569336	2018-08-13
101	tlt	122.29000091552734	2018-08-20
102	tlt	121	2018-08-27
103	tlt	119.12999725341797	2018-09-03
104	tlt	NaN	2018-09-04
105	tlt	118.55000305175781	2018-09-10
106	tlt	117.0999984741211	2018-09-17
107	tlt	117.2699966430664	2018-09-24
108	tlt	113.04000091552734	2018-10-01
109	tlt	114.47000122070312	2018-10-08
110	tlt	113.70999908447266	2018-10-15
111	tlt	114.98999786376953	2018-10-22
112	tlt	112	2018-10-29
113	tlt	113.3499984741211	2018-11-05
114	tlt	114.69999694824219	2018-11-12
115	tlt	115.13999938964844	2018-11-19
116	tlt	115.33000183105469	2018-11-26
117	tlt	118.41000366210938	2018-12-03
118	tlt	118.4800033569336	2018-12-10
119	tlt	120.72000122070312	2018-12-17
120	tlt	NaN	2018-12-18
121	tlt	121.05000305175781	2018-12-24
122	tlt	122.11000061035156	2018-12-31
123	tlt	120.93000030517578	2019-01-07
124	tlt	119.55999755859375	2019-01-14
125	tlt	120.52999877929688	2019-01-21
126	tlt	120.95999908447266	2019-01-28
127	tlt	122.3499984741211	2019-02-04
128	tlt	121.9800033569336	2019-02-11
129	tlt	121.56999969482422	2019-02-18
130	tlt	118.66000366210938	2019-02-25
131	tlt	NaN	2019-03-01
132	tlt	121.56999969482422	2019-03-04
133	tlt	121.75	2019-03-11
134	tlt	124.86000061035156	2019-03-18
135	tlt	126.44000244140625	2019-03-25
136	tlt	124.02999877929688	2019-04-01
137	tlt	122.66999816894531	2019-04-08
138	tlt	122.9000015258789	2019-04-15
139	tlt	123.80999755859375	2019-04-22
140	tlt	123.66000366210938	2019-04-29
141	tlt	124.75	2019-05-06
142	tlt	125.98999786376953	2019-05-13
143	tlt	127.77999877929688	2019-05-20
144	tlt	131.8300018310547	2019-05-27
145	tlt	131.74000549316406	2019-06-03
146	tlt	131.4600067138672	2019-06-10
147	tlt	131.42999267578125	2019-06-17
148	tlt	132.80999755859375	2019-06-24
149	tlt	132.42999267578125	2019-07-01
150	tlt	130.22000122070312	2019-07-08
151	tlt	131.69000244140625	2019-07-15
152	tlt	131.47000122070312	2019-07-22
153	tlt	136.50999450683594	2019-07-29
154	tlt	NaN	2019-08-01
155	tlt	140.0500030517578	2019-08-05
156	tlt	146.1300048828125	2019-08-12
157	tlt	145.9600067138672	2019-08-19
158	tlt	147.27999877929688	2019-08-26
159	tlt	145.7899932861328	2019-09-02
160	tlt	136.5399932861328	2019-09-09
161	tlt	141.88999938964844	2019-09-16
162	tlt	142.72999572753906	2019-09-23
163	tlt	145.99000549316406	2019-09-30
164	tlt	NaN	2019-10-01
165	tlt	140.44000244140625	2019-10-07
166	tlt	139.5800018310547	2019-10-14
167	tlt	138.52000427246094	2019-10-21
168	tlt	140.55999755859375	2019-10-28
169	tlt	NaN	2019-11-01
170	tlt	134.91000366210938	2019-11-04
171	tlt	137.75999450683594	2019-11-11
172	tlt	139.89999389648438	2019-11-18
173	tlt	140.4199981689453	2019-11-25
174	tlt	138.35000610351562	2019-12-02
175	tlt	139.0399932861328	2019-12-09
176	tlt	136.64999389648438	2019-12-16
177	tlt	NaN	2019-12-19
178	tlt	137.32000732421875	2019-12-23
179	tlt	139.1199951171875	2019-12-30
180	tlt	138.44000244140625	2020-01-06
181	tlt	138.02000427246094	2020-01-13
182	tlt	142.0800018310547	2020-01-20
183	tlt	145.89999389648438	2020-01-27
184	tlt	144.42999267578125	2020-02-03
185	tlt	144.5500030517578	2020-02-10
186	tlt	148.0399932861328	2020-02-17
187	tlt	155.30999755859375	2020-02-24
188	tlt	166.77000427246094	2020-03-02
189	tlt	153.94000244140625	2020-03-09
190	tlt	159.42999267578125	2020-03-16
191	tlt	167.6999969482422	2020-03-23
192	tlt	168.5	2020-03-30
193	tlt	NaN	2020-04-01
194	tlt	165.38999938964844	2020-04-06
195	tlt	167.80999755859375	2020-04-13
196	tlt	170.83999633789062	2020-04-20
197	tlt	167.9499969482422	2020-04-27
198	tlt	NaN	2020-05-01
199	tlt	163.97999572753906	2020-05-04
200	tlt	166.7100067138672	2020-05-11
201	tlt	165.5500030517578	2020-05-18
202	tlt	163.58999633789062	2020-05-25
203	tlt	156.11000061035156	2020-06-01
204	tlt	162.3000030517578	2020-06-08
205	tlt	162.38999938964844	2020-06-15
206	tlt	165.25	2020-06-22
207	tlt	163.58999633789062	2020-06-29
208	tlt	NaN	2020-07-01
209	tlt	166.3300018310547	2020-07-06
210	tlt	166.77999877929688	2020-07-13
211	tlt	169.74000549316406	2020-07-20
212	tlt	171	2020-07-27
213	tlt	169.8800048828125	2020-08-03
214	tlt	163.17999267578125	2020-08-10
215	tlt	166.1999969482422	2020-08-17
216	tlt	161.1199951171875	2020-08-24
217	tlt	162.74000549316406	2020-08-31
218	tlt	NaN	2020-09-01
219	tlt	164.47999572753906	2020-09-07
220	tlt	163.57000732421875	2020-09-14
221	tlt	165.1199951171875	2020-09-21
222	tlt	162.75	2020-09-28
223	tlt	NaN	2020-10-01
224	tlt	160.08999633789062	2020-10-05
225	tlt	161.38999938964844	2020-10-12
226	tlt	158.00999450683594	2020-10-19
227	tlt	157.57000732421875	2020-10-26
228	tlt	159.41000366210938	2020-11-02
229	tlt	158.16000366210938	2020-11-09
230	tlt	161.50999450683594	2020-11-16
231	tlt	160.22000122070312	2020-11-23
232	tlt	155.1999969482422	2020-11-30
233	tlt	NaN	2020-12-01
234	tlt	158.77000427246094	2020-12-07
235	tlt	156.3300018310547	2020-12-14
236	tlt	NaN	2020-12-17
237	tlt	157.2899932861328	2020-12-21
238	tlt	157.72999572753906	2020-12-28
239	tlt	151.32000732421875	2021-01-04
240	tlt	151.82000732421875	2021-01-11
241	tlt	151.8800048828125	2021-01-18
242	tlt	152	2021-01-25
243	tlt	148.02999877929688	2021-02-01
244	tlt	147.11000061035156	2021-02-08
245	tlt	143.27000427246094	2021-02-15
246	tlt	143.1199951171875	2021-02-22
247	tlt	138.91000366210938	2021-03-01
248	tlt	136.05999755859375	2021-03-08
249	tlt	134.75	2021-03-15
250	tlt	136.66000366210938	2021-03-22
251	tlt	137.50999450683594	2021-03-29
252	tlt	NaN	2021-04-01
253	tlt	137.50999450683594	2021-04-05
254	tlt	139.25999450683594	2021-04-12
255	tlt	140.05999755859375	2021-04-19
256	tlt	138.63999938964844	2021-04-26
257	tlt	139.22999572753906	2021-05-03
258	tlt	137.0800018310547	2021-05-10
259	tlt	137.6699981689453	2021-05-17
260	tlt	138.44000244140625	2021-05-24
261	tlt	139.89999389648438	2021-05-31
262	tlt	NaN	2021-06-01
263	tlt	142.30999755859375	2021-06-07
264	tlt	145.72999572753906	2021-06-14
265	tlt	142.00999450683594	2021-06-21
266	tlt	145.0399932861328	2021-06-28
267	tlt	NaN	2021-07-01
268	tlt	146.52999877929688	2021-07-05
269	tlt	148.2100067138672	2021-07-12
270	tlt	148.5	2021-07-19
271	tlt	149.52000427246094	2021-07-26
272	tlt	147.77999877929688	2021-08-02
273	tlt	148.5500030517578	2021-08-09
274	tlt	150.5500030517578	2021-08-16
275	tlt	149.4600067138672	2021-08-23
276	tlt	148.17999267578125	2021-08-30
277	tlt	NaN	2021-09-01
278	tlt	148.39999389648438	2021-09-06
279	tlt	149.1699981689453	2021-09-13
280	tlt	146.91000366210938	2021-09-20
281	tlt	145.35000610351562	2021-09-27
282	tlt	141.8800048828125	2021-10-04
283	tlt	145.02999877929688	2021-10-11
284	tlt	144.1300048828125	2021-10-18
285	tlt	147.69000244140625	2021-10-25
286	tlt	149.3000030517578	2021-11-01
287	tlt	147.3300018310547	2021-11-08
288	tlt	148.36000061035156	2021-11-15
289	tlt	150.52999877929688	2021-11-22
290	tlt	150.52999877929688	2021-11-26
\.


--
-- Data for Name: vtv weekly5y; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."vtv weekly5y" (id, name, price, date) FROM stdin;
1	vtv	91.3499984741211	2016-11-28
2	vtv	94.19000244140625	2016-12-05
3	vtv	94.19999694824219	2016-12-12
4	vtv	93.88999938964844	2016-12-19
5	vtv	NaN	2016-12-22
6	vtv	93.01000213623047	2016-12-26
7	vtv	93.87999725341797	2017-01-02
8	vtv	93.55000305175781	2017-01-09
9	vtv	93.23999786376953	2017-01-16
10	vtv	94.11000061035156	2017-01-23
11	vtv	94.08000183105469	2017-01-30
12	vtv	94.66000366210938	2017-02-06
13	vtv	96.18000030517578	2017-02-13
14	vtv	96.91999816894531	2017-02-20
15	vtv	97.55000305175781	2017-02-27
16	vtv	97.02999877929688	2017-03-06
17	vtv	97.01000213623047	2017-03-13
18	vtv	94.68000030517578	2017-03-20
19	vtv	NaN	2017-03-24
20	vtv	95.37000274658203	2017-03-27
21	vtv	95.08999633789062	2017-04-03
22	vtv	93.91000366210938	2017-04-10
23	vtv	94.36000061035156	2017-04-17
24	vtv	95.33999633789062	2017-04-24
25	vtv	95.73999786376953	2017-05-01
26	vtv	94.97000122070312	2017-05-08
27	vtv	94.61000061035156	2017-05-15
28	vtv	95.70999908447266	2017-05-22
29	vtv	96.29000091552734	2017-05-29
30	vtv	97.08000183105469	2017-06-05
31	vtv	97.4800033569336	2017-06-12
32	vtv	96.36000061035156	2017-06-19
33	vtv	NaN	2017-06-23
34	vtv	96.55999755859375	2017-06-26
35	vtv	96.73999786376953	2017-07-03
36	vtv	97.52999877929688	2017-07-10
37	vtv	97.69000244140625	2017-07-17
38	vtv	97.87000274658203	2017-07-24
39	vtv	98.4800033569336	2017-07-31
40	vtv	97.04000091552734	2017-08-07
41	vtv	96.27999877929688	2017-08-14
42	vtv	97.16000366210938	2017-08-21
43	vtv	97.87999725341797	2017-08-28
44	vtv	96.95999908447266	2017-09-04
45	vtv	99.13999938964844	2017-09-11
46	vtv	99.18000030517578	2017-09-18
47	vtv	NaN	2017-09-22
48	vtv	99.81999969482422	2017-09-25
49	vtv	101.11000061035156	2017-10-02
50	vtv	100.94999694824219	2017-10-09
51	vtv	102.4800033569336	2017-10-16
52	vtv	102.33000183105469	2017-10-23
53	vtv	102.20999908447266	2017-10-30
54	vtv	101.55999755859375	2017-11-06
55	vtv	101.5199966430664	2017-11-13
56	vtv	102.12999725341797	2017-11-20
57	vtv	105.16000366210938	2017-11-27
58	vtv	105.7300033569336	2017-12-04
59	vtv	106.43000030517578	2017-12-11
60	vtv	106.44000244140625	2017-12-18
61	vtv	NaN	2017-12-21
62	vtv	106.31999969482422	2017-12-25
63	vtv	108.20999908447266	2018-01-01
64	vtv	110.05000305175781	2018-01-08
65	vtv	110.83000183105469	2018-01-15
66	vtv	113.26000213623047	2018-01-22
67	vtv	108.94999694824219	2018-01-29
68	vtv	103.37999725341797	2018-02-05
69	vtv	107.55999755859375	2018-02-12
70	vtv	107.62000274658203	2018-02-19
71	vtv	105.44999694824219	2018-02-26
72	vtv	108.76000213623047	2018-03-05
73	vtv	107.22000122070312	2018-03-12
74	vtv	100.47000122070312	2018-03-19
75	vtv	NaN	2018-03-22
76	vtv	103.18000030517578	2018-03-26
77	vtv	102.05000305175781	2018-04-02
78	vtv	103.95999908447266	2018-04-09
79	vtv	104.7300033569336	2018-04-16
80	vtv	104.75	2018-04-23
81	vtv	103.08999633789062	2018-04-30
82	vtv	105.44999694824219	2018-05-07
83	vtv	105.12000274658203	2018-05-14
84	vtv	105.16000366210938	2018-05-21
85	vtv	105.2300033569336	2018-05-28
86	vtv	107.08999633789062	2018-06-04
87	vtv	106.47000122070312	2018-06-11
88	vtv	104.91000366210938	2018-06-18
89	vtv	NaN	2018-06-22
90	vtv	103.83000183105469	2018-06-25
91	vtv	105.19000244140625	2018-07-02
92	vtv	106.44999694824219	2018-07-09
93	vtv	106.6500015258789	2018-07-16
94	vtv	108.30999755859375	2018-07-23
95	vtv	109.12999725341797	2018-07-30
96	vtv	108.77999877929688	2018-08-06
97	vtv	109.88999938964844	2018-08-13
98	vtv	110.33000183105469	2018-08-20
99	vtv	110.72000122070312	2018-08-27
100	vtv	110.38999938964844	2018-09-03
101	vtv	111.61000061035156	2018-09-10
102	vtv	113.26000213623047	2018-09-17
103	vtv	110.68000030517578	2018-09-24
104	vtv	NaN	2018-09-28
105	vtv	110.9800033569336	2018-10-01
106	vtv	106.19999694824219	2018-10-08
107	vtv	106.9800033569336	2018-10-15
108	vtv	102.80999755859375	2018-10-22
109	vtv	105.66999816894531	2018-10-29
110	vtv	108.37999725341797	2018-11-05
111	vtv	107.55000305175781	2018-11-12
112	vtv	104.30999755859375	2018-11-19
113	vtv	108.61000061035156	2018-11-26
114	vtv	103.69000244140625	2018-12-03
115	vtv	102.08999633789062	2018-12-10
116	vtv	95.72000122070312	2018-12-17
117	vtv	96.98999786376953	2018-12-24
118	vtv	98.95999908447266	2018-12-31
119	vtv	101	2019-01-07
120	vtv	103.95999908447266	2019-01-14
121	vtv	103.5999984741211	2019-01-21
122	vtv	105.02999877929688	2019-01-28
123	vtv	104.68000030517578	2019-02-04
124	vtv	107.45999908447266	2019-02-11
125	vtv	108.2300033569336	2019-02-18
126	vtv	108.30999755859375	2019-02-25
127	vtv	105.98999786376953	2019-03-04
128	vtv	108.7300033569336	2019-03-11
129	vtv	107.20999908447266	2019-03-18
130	vtv	107.62999725341797	2019-03-25
131	vtv	NaN	2019-03-28
132	vtv	109.5999984741211	2019-04-01
133	vtv	109.9800033569336	2019-04-08
134	vtv	109.86000061035156	2019-04-15
135	vtv	110.5	2019-04-22
136	vtv	111	2019-04-29
137	vtv	109.06999969482422	2019-05-06
138	vtv	108.23999786376953	2019-05-13
139	vtv	107.66999816894531	2019-05-20
140	vtv	104.20999908447266	2019-05-27
141	vtv	109.16999816894531	2019-06-03
142	vtv	109.72000122070312	2019-06-10
143	vtv	111.5999984741211	2019-06-17
144	vtv	110.91999816894531	2019-06-24
145	vtv	NaN	2019-06-27
146	vtv	112.58999633789062	2019-07-01
147	vtv	113.04000091552734	2019-07-08
148	vtv	111.79000091552734	2019-07-15
149	vtv	113.16999816894531	2019-07-22
150	vtv	110	2019-07-29
151	vtv	109.12999725341797	2019-08-05
152	vtv	107.56999969482422	2019-08-12
153	vtv	105.80999755859375	2019-08-19
154	vtv	108.5199966430664	2019-08-26
155	vtv	110.61000061035156	2019-09-02
156	vtv	113.16000366210938	2019-09-09
157	vtv	111.93000030517578	2019-09-16
158	vtv	111.29000091552734	2019-09-23
159	vtv	110.13999938964844	2019-09-30
160	vtv	110.52999877929688	2019-10-07
161	vtv	111.66999816894531	2019-10-14
162	vtv	113.18000030517578	2019-10-21
163	vtv	114.88999938964844	2019-10-28
164	vtv	116.69999694824219	2019-11-04
165	vtv	116.9800033569336	2019-11-11
166	vtv	116.95999908447266	2019-11-18
167	vtv	117.6500015258789	2019-11-25
168	vtv	118.08999633789062	2019-12-02
169	vtv	118.93000030517578	2019-12-09
170	vtv	120.75	2019-12-16
171	vtv	120.0999984741211	2019-12-23
172	vtv	NaN	2019-12-24
173	vtv	119.4800033569336	2019-12-30
174	vtv	119.5999984741211	2020-01-06
175	vtv	121.37000274658203	2020-01-13
176	vtv	119.80000305175781	2020-01-20
177	vtv	116.8499984741211	2020-01-27
178	vtv	120.05000305175781	2020-02-03
179	vtv	120.91999816894531	2020-02-10
180	vtv	120.02999877929688	2020-02-17
181	vtv	105.5	2020-02-24
182	vtv	106.16999816894531	2020-03-02
183	vtv	95.05000305175781	2020-03-09
184	vtv	80.05000305175781	2020-03-16
185	vtv	88.11000061035156	2020-03-23
186	vtv	NaN	2020-03-26
187	vtv	86.11000061035156	2020-03-30
188	vtv	97.37000274658203	2020-04-06
189	vtv	98.19000244140625	2020-04-13
190	vtv	96.37000274658203	2020-04-20
191	vtv	95.88999938964844	2020-04-27
192	vtv	97.58999633789062	2020-05-04
193	vtv	94.30000305175781	2020-05-11
194	vtv	97.16999816894531	2020-05-18
195	vtv	101.4000015258789	2020-05-25
196	vtv	108.25	2020-06-01
197	vtv	100.66999816894531	2020-06-08
198	vtv	101.54000091552734	2020-06-15
199	vtv	96.93000030517578	2020-06-22
200	vtv	NaN	2020-06-25
201	vtv	100.01000213623047	2020-06-29
202	vtv	100.19000244140625	2020-07-06
203	vtv	103.70999908447266	2020-07-13
204	vtv	103.58000183105469	2020-07-20
205	vtv	103.30999755859375	2020-07-27
206	vtv	106.05999755859375	2020-08-03
207	vtv	107.25	2020-08-10
208	vtv	105.72000122070312	2020-08-17
209	vtv	108.54000091552734	2020-08-24
210	vtv	107.5199966430664	2020-08-31
211	vtv	106	2020-09-07
212	vtv	106.48999786376953	2020-09-14
213	vtv	102.88999938964844	2020-09-21
214	vtv	NaN	2020-09-25
215	vtv	104.68000030517578	2020-09-28
216	vtv	108.51000213623047	2020-10-05
217	vtv	108.36000061035156	2020-10-12
218	vtv	108.29000091552734	2020-10-19
219	vtv	102.61000061035156	2020-10-26
220	vtv	108.05000305175781	2020-11-02
221	vtv	114.26000213623047	2020-11-09
222	vtv	113.87999725341797	2020-11-16
223	vtv	116.95999908447266	2020-11-23
224	vtv	119.1500015258789	2020-11-30
225	vtv	118.26000213623047	2020-12-07
226	vtv	118.30000305175781	2020-12-14
227	vtv	117.30000305175781	2020-12-21
228	vtv	NaN	2020-12-24
229	vtv	118.95999908447266	2020-12-28
230	vtv	122.16000366210938	2021-01-04
231	vtv	122.33000183105469	2021-01-11
232	vtv	121.81999969482422	2021-01-18
233	vtv	118.0199966430664	2021-01-25
234	vtv	122.77999877929688	2021-02-01
235	vtv	124.47000122070312	2021-02-08
236	vtv	124.83999633789062	2021-02-15
237	vtv	123.91999816894531	2021-02-22
238	vtv	127.91000366210938	2021-03-01
239	vtv	131.7899932861328	2021-03-08
240	vtv	130.74000549316406	2021-03-15
241	vtv	132.30999755859375	2021-03-22
242	vtv	NaN	2021-03-25
243	vtv	132.1199951171875	2021-03-29
244	vtv	133.6199951171875	2021-04-05
245	vtv	135.35000610351562	2021-04-12
246	vtv	135.3000030517578	2021-04-19
247	vtv	135.97999572753906	2021-04-26
248	vtv	140.61000061035156	2021-05-03
249	vtv	140.16000366210938	2021-05-10
250	vtv	139.30999755859375	2021-05-17
251	vtv	139.9499969482422	2021-05-24
252	vtv	141.1699981689453	2021-05-31
253	vtv	140.3699951171875	2021-06-07
254	vtv	134.52000427246094	2021-06-14
255	vtv	137.86000061035156	2021-06-21
256	vtv	NaN	2021-06-24
257	vtv	138.82000732421875	2021-06-28
258	vtv	138.50999450683594	2021-07-05
259	vtv	136.99000549316406	2021-07-12
260	vtv	138.19000244140625	2021-07-19
261	vtv	138.85000610351562	2021-07-26
262	vtv	140.17999267578125	2021-08-02
263	vtv	142.17999267578125	2021-08-09
264	vtv	140.4499969482422	2021-08-16
265	vtv	142.24000549316406	2021-08-23
266	vtv	141.8800048828125	2021-08-30
267	vtv	138.8000030517578	2021-09-06
268	vtv	138.02999877929688	2021-09-13
269	vtv	137.99000549316406	2021-09-20
270	vtv	NaN	2021-09-24
271	vtv	136.9600067138672	2021-09-27
272	vtv	139.0399932861328	2021-10-04
273	vtv	140.8800048828125	2021-10-11
274	vtv	143.27999877929688	2021-10-18
275	vtv	142.74000549316406	2021-10-25
276	vtv	144.8800048828125	2021-11-01
277	vtv	145.32000732421875	2021-11-08
278	vtv	142.58999633789062	2021-11-15
279	vtv	141.57000732421875	2021-11-22
280	vtv	141.57000732421875	2021-11-26
\.


--
-- Data for Name: vug weekly5y; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."vug weekly5y" (id, name, price, date) FROM stdin;
1	vug	109.55000305175781	2016-11-28
2	vug	112.97000122070312	2016-12-05
3	vug	112.80999755859375	2016-12-12
4	vug	112.52999877929688	2016-12-19
5	vug	NaN	2016-12-22
6	vug	111.4800033569336	2016-12-26
7	vug	114.30999755859375	2017-01-02
8	vug	114.62999725341797	2017-01-09
9	vug	114.73999786376953	2017-01-16
10	vug	116.08000183105469	2017-01-23
11	vug	116.63999938964844	2017-01-30
12	vug	118.06999969482422	2017-02-06
13	vug	119.86000061035156	2017-02-13
14	vug	120.61000061035156	2017-02-20
15	vug	121.5	2017-02-27
16	vug	121.30000305175781	2017-03-06
17	vug	121.95999908447266	2017-03-13
18	vug	120.51000213623047	2017-03-20
19	vug	NaN	2017-03-24
20	vug	121.66000366210938	2017-03-27
21	vug	121.41000366210938	2017-04-03
22	vug	120.30000305175781	2017-04-10
23	vug	121.94999694824219	2017-04-17
24	vug	124.43000030517578	2017-04-24
25	vug	125.5199966430664	2017-05-01
26	vug	125.81999969482422	2017-05-08
27	vug	125.55000305175781	2017-05-15
28	vug	127.9000015258789	2017-05-22
29	vug	129.6699981689453	2017-05-29
30	vug	127.9000015258789	2017-06-05
31	vug	127.7699966430664	2017-06-12
32	vug	128.77999877929688	2017-06-19
33	vug	NaN	2017-06-23
34	vug	127.04000091552734	2017-06-26
35	vug	127.02999877929688	2017-07-03
36	vug	129.7100067138672	2017-07-10
37	vug	130.9600067138672	2017-07-17
38	vug	130.67999267578125	2017-07-24
39	vug	130.30999755859375	2017-07-31
40	vug	128.75	2017-08-07
41	vug	128.24000549316406	2017-08-14
42	vug	129.17999267578125	2017-08-21
43	vug	131.9499969482422	2017-08-28
44	vug	131.77999877929688	2017-09-04
45	vug	132.86000061035156	2017-09-11
46	vug	131.7899932861328	2017-09-18
47	vug	NaN	2017-09-22
48	vug	132.75	2017-09-25
49	vug	134.44000244140625	2017-10-02
50	vug	135.1699981689453	2017-10-09
51	vug	135.38999938964844	2017-10-16
52	vug	136.2100067138672	2017-10-23
53	vug	137.17999267578125	2017-10-30
54	vug	137.6699981689453	2017-11-06
55	vug	137.66000366210938	2017-11-13
56	vug	139.5399932861328	2017-11-20
57	vug	139.5	2017-11-27
58	vug	139.8699951171875	2017-12-04
59	vug	141.5399932861328	2017-12-11
60	vug	141.13999938964844	2017-12-18
61	vug	NaN	2017-12-21
62	vug	140.64999389648438	2017-12-25
63	vug	145.17999267578125	2018-01-01
64	vug	147.4600067138672	2018-01-08
65	vug	149.14999389648438	2018-01-15
66	vug	152.3800048828125	2018-01-22
67	vug	146.64999389648438	2018-01-29
68	vug	139.41000366210938	2018-02-05
69	vug	146.16000366210938	2018-02-12
70	vug	147.6999969482422	2018-02-19
71	vug	144.86000061035156	2018-02-26
72	vug	150.88999938964844	2018-03-05
73	vug	149.2899932861328	2018-03-12
74	vug	140	2018-03-19
75	vug	NaN	2018-03-22
76	vug	141.8800048828125	2018-03-26
77	vug	139.41000366210938	2018-04-02
78	vug	142.49000549316406	2018-04-09
79	vug	143.1199951171875	2018-04-16
80	vug	142.8699951171875	2018-04-23
81	vug	144.77999877929688	2018-04-30
82	vug	148.72000122070312	2018-05-07
83	vug	147.72999572753906	2018-05-14
84	vug	148.64999389648438	2018-05-21
85	vug	150.2899932861328	2018-05-28
86	vug	152.69000244140625	2018-06-04
87	vug	154.2100067138672	2018-06-11
88	vug	152.24000549316406	2018-06-18
89	vug	NaN	2018-06-22
90	vug	149.80999755859375	2018-06-25
91	vug	152.5	2018-07-02
92	vug	155.42999267578125	2018-07-09
93	vug	155.2899932861328	2018-07-16
94	vug	154.5	2018-07-23
95	vug	155.66000366210938	2018-07-30
96	vug	155.80999755859375	2018-08-06
97	vug	155.99000549316406	2018-08-13
98	vug	158.3300018310547	2018-08-20
99	vug	160.74000549316406	2018-08-27
100	vug	158.1199951171875	2018-09-03
101	vug	160.1699981689453	2018-09-10
102	vug	160.3000030517578	2018-09-17
103	vug	161.0399932861328	2018-09-24
104	vug	NaN	2018-09-28
105	vug	157.25999450683594	2018-10-01
106	vug	150.9499969482422	2018-10-08
107	vug	149.8300018310547	2018-10-15
108	vug	143.88999938964844	2018-10-22
109	vug	147.08999633789062	2018-10-29
110	vug	149.52000427246094	2018-11-05
111	vug	146.1300048828125	2018-11-12
112	vug	139.52000427246094	2018-11-19
113	vug	147.27999877929688	2018-11-26
114	vug	140.9199981689453	2018-12-03
115	vug	139.77999877929688	2018-12-10
116	vug	128.58999633789062	2018-12-17
117	vug	133.0500030517578	2018-12-24
118	vug	135.36000061035156	2018-12-31
119	vug	139.80999755859375	2019-01-07
120	vug	143.83999633789062	2019-01-14
121	vug	143.75	2019-01-21
122	vug	146.55999755859375	2019-01-28
123	vug	147.52000427246094	2019-02-04
124	vug	151.16000366210938	2019-02-11
125	vug	151.97999572753906	2019-02-18
126	vug	153.44000244140625	2019-02-25
127	vug	150.02000427246094	2019-03-04
128	vug	155.05999755859375	2019-03-11
129	vug	154.85000610351562	2019-03-18
130	vug	156.4199981689453	2019-03-25
131	vug	NaN	2019-03-28
132	vug	160.07000732421875	2019-04-01
133	vug	161.4199981689453	2019-04-08
134	vug	161.2100067138672	2019-04-15
135	vug	164.16000366210938	2019-04-22
136	vug	164.1199951171875	2019-04-29
137	vug	160.36000061035156	2019-05-06
138	vug	159.33999633789062	2019-05-13
139	vug	156.63999938964844	2019-05-20
140	vug	153.39999389648438	2019-05-27
141	vug	159.85000610351562	2019-06-03
142	vug	160.77999877929688	2019-06-10
143	vug	165.02000427246094	2019-06-17
144	vug	163.38999938964844	2019-06-24
145	vug	NaN	2019-06-27
146	vug	166.7899932861328	2019-07-01
147	vug	168.9600067138672	2019-07-08
148	vug	166.8699951171875	2019-07-15
149	vug	170.25999450683594	2019-07-22
150	vug	164.5500030517578	2019-07-29
151	vug	164.5800018310547	2019-08-05
152	vug	163.60000610351562	2019-08-12
153	vug	161.80999755859375	2019-08-19
154	vug	166.17999267578125	2019-08-26
155	vug	169.24000549316406	2019-09-02
156	vug	168.6199951171875	2019-09-09
157	vug	167.61000061035156	2019-09-16
158	vug	165.2100067138672	2019-09-23
159	vug	166	2019-09-30
160	vug	167.3800048828125	2019-10-07
161	vug	167.61000061035156	2019-10-14
162	vug	169.52999877929688	2019-10-21
163	vug	172.02000427246094	2019-10-28
164	vug	172.3300018310547	2019-11-04
165	vug	175.22999572753906	2019-11-11
166	vug	174.55999755859375	2019-11-18
167	vug	177.39999389648438	2019-11-25
168	vug	177.10000610351562	2019-12-02
169	vug	178.3300018310547	2019-12-09
170	vug	181.82000732421875	2019-12-16
171	vug	183.0800018310547	2019-12-23
172	vug	NaN	2019-12-24
173	vug	183.52000427246094	2019-12-30
174	vug	187.35000610351562	2020-01-06
175	vug	191.91000366210938	2020-01-13
176	vug	190.9499969482422	2020-01-20
177	vug	187.8699951171875	2020-01-27
178	vug	194.9499969482422	2020-02-03
179	vug	200.0800018310547	2020-02-10
180	vug	197.02000427246094	2020-02-17
181	vug	175.72000122070312	2020-02-24
182	vug	176.47000122070312	2020-03-02
183	vug	162.66000366210938	2020-03-09
184	vug	139.61000061035156	2020-03-16
185	vug	153.77999877929688	2020-03-23
186	vug	NaN	2020-03-26
187	vug	150.39999389648438	2020-03-30
188	vug	167.74000549316406	2020-04-06
189	vug	176.3699951171875	2020-04-13
190	vug	175.2899932861328	2020-04-20
191	vug	175.58999633789062	2020-04-27
192	vug	185.05999755859375	2020-05-04
193	vug	183.14999389648438	2020-05-11
194	vug	189.3699951171875	2020-05-18
195	vug	193.0500030517578	2020-05-25
196	vug	199.8000030517578	2020-06-01
197	vug	194.47999572753906	2020-06-08
198	vug	200.25	2020-06-15
199	vug	195.80999755859375	2020-06-22
200	vug	205.27000427246094	2020-06-29
201	vug	212.52000427246094	2020-07-06
202	vug	211.1199951171875	2020-07-13
203	vug	210.33999633789062	2020-07-20
204	vug	217.3699951171875	2020-07-27
205	vug	222.16000366210938	2020-08-03
206	vug	223.0399932861328	2020-08-10
207	vug	229.4600067138672	2020-08-17
208	vug	238.35000610351562	2020-08-24
209	vug	230.2100067138672	2020-08-31
210	vug	222.58999633789062	2020-09-07
211	vug	220.44000244140625	2020-09-14
212	vug	222.69000244140625	2020-09-21
213	vug	NaN	2020-09-25
214	vug	226.3000030517578	2020-09-28
215	vug	235.42999267578125	2020-10-05
216	vug	236.30999755859375	2020-10-12
217	vug	234.27999877929688	2020-10-19
218	vug	220.77000427246094	2020-10-26
219	vug	240.66000366210938	2020-11-02
220	vug	238.19000244140625	2020-11-09
221	vug	237.36000061035156	2020-11-16
222	vug	243.41000366210938	2020-11-23
223	vug	247	2020-11-30
224	vug	244.61000061035156	2020-12-07
225	vug	251.5800018310547	2020-12-14
226	vug	251.25	2020-12-21
227	vug	NaN	2020-12-24
228	vug	253.33999633789062	2020-12-28
229	vug	256.989990234375	2021-01-04
230	vug	250.11000061035156	2021-01-11
231	vug	259.8399963378906	2021-01-18
232	vug	250.77000427246094	2021-01-25
233	vug	265	2021-02-01
234	vug	268.8999938964844	2021-02-08
235	vug	264.7699890136719	2021-02-15
236	vug	252.88999938964844	2021-02-22
237	vug	248.24000549316406	2021-03-01
238	vug	255.1300048828125	2021-03-08
239	vug	252.42999267578125	2021-03-15
240	vug	255.02000427246094	2021-03-22
241	vug	NaN	2021-03-25
242	vug	261.3800048828125	2021-03-29
243	vug	272.1400146484375	2021-04-05
244	vug	276.4700012207031	2021-04-12
245	vug	276.1199951171875	2021-04-19
246	vug	274.80999755859375	2021-04-26
247	vug	271.0799865722656	2021-05-03
248	vug	264.95001220703125	2021-05-10
249	vug	265.1700134277344	2021-05-17
250	vug	270.8800048828125	2021-05-24
251	vug	271.3500061035156	2021-05-31
252	vug	275.8299865722656	2021-06-07
253	vug	277.05999755859375	2021-06-14
254	vug	284.1099853515625	2021-06-21
255	vug	NaN	2021-06-24
256	vug	290.510009765625	2021-06-28
257	vug	293.05999755859375	2021-07-05
258	vug	290.05999755859375	2021-07-12
259	vug	299.5799865722656	2021-07-19
260	vug	295.94000244140625	2021-07-26
261	vug	298.6499938964844	2021-08-02
262	vug	299.0299987792969	2021-08-09
263	vug	298.5199890136719	2021-08-16
264	vug	304.2699890136719	2021-08-23
265	vug	308.6600036621094	2021-08-30
266	vug	304.69000244140625	2021-09-06
267	vug	302.7900085449219	2021-09-13
268	vug	303.9599914550781	2021-09-20
269	vug	NaN	2021-09-24
270	vug	293.2300109863281	2021-09-27
271	vug	294.29998779296875	2021-10-04
272	vug	301.6700134277344	2021-10-11
273	vug	306.44000244140625	2021-10-18
274	vug	314.1499938964844	2021-10-25
275	vug	321.4800109863281	2021-11-01
276	vug	319.7799987792969	2021-11-08
277	vug	325.6700134277344	2021-11-15
278	vug	315.010009765625	2021-11-22
279	vug	315.010009765625	2021-11-26
\.


--
-- Data for Name: xle weekly5y; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."xle weekly5y" (id, name, price, date) FROM stdin;
1	xle	74.83000183105469	2016-11-28
2	xle	76.5999984741211	2016-12-05
3	xle	76.51000213623047	2016-12-12
4	xle	NaN	2016-12-16
5	xle	76.3499984741211	2016-12-19
6	xle	75.31999969482422	2016-12-26
7	xle	75.88999938964844	2017-01-02
8	xle	74.37999725341797	2017-01-09
9	xle	74.54000091552734	2017-01-16
10	xle	74.2300033569336	2017-01-23
11	xle	73.4000015258789	2017-01-30
12	xle	73.27999877929688	2017-02-06
13	xle	71.97000122070312	2017-02-13
14	xle	70.98999786376953	2017-02-20
15	xle	71.98999786376953	2017-02-27
16	xle	70.01000213623047	2017-03-06
17	xle	69.80000305175781	2017-03-13
18	xle	NaN	2017-03-17
19	xle	68.55999755859375	2017-03-20
20	xle	69.9000015258789	2017-03-27
21	xle	70.36000061035156	2017-04-03
22	xle	69.30999755859375	2017-04-10
23	xle	67.79000091552734	2017-04-17
24	xle	67.83999633789062	2017-04-24
25	xle	67.30999755859375	2017-05-01
26	xle	67.75	2017-05-08
27	xle	68.08000183105469	2017-05-15
28	xle	66.61000061035156	2017-05-22
29	xle	65.08999633789062	2017-05-29
30	xle	66.41999816894531	2017-06-05
31	xle	66.30000305175781	2017-06-12
32	xle	NaN	2017-06-16
33	xle	64.37999725341797	2017-06-19
34	xle	64.91999816894531	2017-06-26
35	xle	64.01000213623047	2017-07-03
36	xle	65.4000015258789	2017-07-10
37	xle	65.11000061035156	2017-07-17
38	xle	66.47000122070312	2017-07-24
39	xle	65.63999938964844	2017-07-31
40	xle	63.939998626708984	2017-08-07
41	xle	62.31999969482422	2017-08-14
42	xle	63	2017-08-21
43	xle	63.58000183105469	2017-08-28
44	xle	64.4000015258789	2017-09-04
45	xle	65.83999633789062	2017-09-11
46	xle	NaN	2017-09-15
47	xle	67.19999694824219	2017-09-18
48	xle	68.4800033569336	2017-09-25
49	xle	68.06999969482422	2017-10-02
50	xle	68.13999938964844	2017-10-09
51	xle	67.7699966430664	2017-10-16
52	xle	67.33999633789062	2017-10-23
53	xle	68.68000030517578	2017-10-30
54	xle	69.66000366210938	2017-11-06
55	xle	67.43000030517578	2017-11-13
56	xle	67.87999725341797	2017-11-20
57	xle	69.68000030517578	2017-11-27
58	xle	69.27999877929688	2017-12-04
59	xle	68.72000122070312	2017-12-11
60	xle	NaN	2017-12-15
61	xle	71.97000122070312	2017-12-18
62	xle	72.26000213623047	2017-12-25
63	xle	74.97000122070312	2018-01-01
64	xle	77.41999816894531	2018-01-08
65	xle	76.37999725341797	2018-01-15
66	xle	77.51000213623047	2018-01-22
67	xle	72.45999908447266	2018-01-29
68	xle	66.66999816894531	2018-02-05
69	xle	68.12000274658203	2018-02-12
70	xle	68.80000305175781	2018-02-19
71	xle	66.94999694824219	2018-02-26
72	xle	68.44999694824219	2018-03-05
73	xle	67.30999755859375	2018-03-12
74	xle	NaN	2018-03-16
75	xle	66.7699966430664	2018-03-19
76	xle	67.41000366210938	2018-03-26
77	xle	67.3499984741211	2018-04-02
78	xle	71.41000366210938	2018-04-09
79	xle	73.30000305175781	2018-04-16
80	xle	73.81999969482422	2018-04-23
81	xle	73.8499984741211	2018-04-30
82	xle	76.7300033569336	2018-05-07
83	xle	78.11000061035156	2018-05-14
84	xle	74.58000183105469	2018-05-21
85	xle	76.37999725341797	2018-05-28
86	xle	76.9000015258789	2018-06-04
87	xle	74.16999816894531	2018-06-11
88	xle	NaN	2018-06-15
89	xle	75.1500015258789	2018-06-18
90	xle	75.94000244140625	2018-06-25
91	xle	75.66999816894531	2018-07-02
92	xle	76.26000213623047	2018-07-09
93	xle	74.88999938964844	2018-07-16
94	xle	76.62999725341797	2018-07-23
95	xle	75.23999786376953	2018-07-30
96	xle	75.29000091552734	2018-08-06
97	xle	72.61000061035156	2018-08-13
98	xle	74.54000091552734	2018-08-20
99	xle	74.44000244140625	2018-08-27
100	xle	72.80000305175781	2018-09-03
101	xle	74.26000213623047	2018-09-10
102	xle	75.0999984741211	2018-09-17
103	xle	NaN	2018-09-21
104	xle	75.73999786376953	2018-09-24
105	xle	77.16000366210938	2018-10-01
106	xle	73	2018-10-08
107	xle	71.52999877929688	2018-10-15
108	xle	66.4800033569336	2018-10-22
109	xle	67.55999755859375	2018-10-29
110	xle	68.5	2018-11-05
111	xle	67.18000030517578	2018-11-12
112	xle	63.90999984741211	2018-11-19
113	xle	66.11000061035156	2018-11-26
114	xle	64.06999969482422	2018-12-03
115	xle	62.09000015258789	2018-12-10
116	xle	56.11000061035156	2018-12-17
117	xle	NaN	2018-12-21
118	xle	57.04999923706055	2018-12-24
119	xle	59.869998931884766	2018-12-31
120	xle	62.0099983215332	2019-01-07
121	xle	63.84000015258789	2019-01-14
122	xle	62.93000030517578	2019-01-21
123	xle	64.88999938964844	2019-01-28
124	xle	62.939998626708984	2019-02-04
125	xle	66.12000274658203	2019-02-11
126	xle	65.76000213623047	2019-02-18
127	xle	66.44999694824219	2019-02-25
128	xle	63.900001525878906	2019-03-04
129	xle	65.51000213623047	2019-03-11
130	xle	NaN	2019-03-15
131	xle	65.47000122070312	2019-03-18
132	xle	66.12000274658203	2019-03-25
133	xle	67.61000061035156	2019-04-01
134	xle	67.55999755859375	2019-04-08
135	xle	67.19000244140625	2019-04-15
136	xle	66.22000122070312	2019-04-22
137	xle	64.25	2019-04-29
138	xle	64.05000305175781	2019-05-06
139	xle	63.75	2019-05-13
140	xle	61.619998931884766	2019-05-20
141	xle	58.77000045776367	2019-05-27
142	xle	61.27000045776367	2019-06-03
143	xle	61.0099983215332	2019-06-10
144	xle	63.560001373291016	2019-06-17
145	xle	NaN	2019-06-21
146	xle	63.709999084472656	2019-06-24
147	xle	63.09000015258789	2019-07-01
148	xle	64.44000244140625	2019-07-08
149	xle	62.7599983215332	2019-07-15
150	xle	62.45000076293945	2019-07-22
151	xle	60.400001525878906	2019-07-29
152	xle	59.099998474121094	2019-08-05
153	xle	57.02000045776367	2019-08-12
154	xle	55.959999084472656	2019-08-19
155	xle	57.47999954223633	2019-08-26
156	xle	59.029998779296875	2019-09-02
157	xle	61.08000183105469	2019-09-09
158	xle	61.279998779296875	2019-09-16
159	xle	NaN	2019-09-20
160	xle	59.630001068115234	2019-09-23
161	xle	57.380001068115234	2019-09-30
162	xle	57.88999938964844	2019-10-07
163	xle	57.029998779296875	2019-10-14
164	xle	59.52000045776367	2019-10-21
165	xle	59.279998779296875	2019-10-28
166	xle	60.689998626708984	2019-11-04
167	xle	60.08000183105469	2019-11-11
168	xle	59.83000183105469	2019-11-18
169	xle	58.88999938964844	2019-11-25
170	xle	59.720001220703125	2019-12-02
171	xle	60.310001373291016	2019-12-09
172	xle	61.36000061035156	2019-12-16
173	xle	NaN	2019-12-20
174	xle	61.68000030517578	2019-12-23
175	xle	60.400001525878906	2019-12-30
176	xle	59.810001373291016	2020-01-06
177	xle	59.119998931884766	2020-01-13
178	xle	56.619998931884766	2020-01-20
179	xle	53.439998626708984	2020-01-27
180	xle	53.97999954223633	2020-02-03
181	xle	54.58000183105469	2020-02-10
182	xle	54.13999938964844	2020-02-17
183	xle	45.27000045776367	2020-02-24
184	xle	42.5	2020-03-02
185	xle	32.189998626708984	2020-03-09
186	xle	25.860000610351562	2020-03-16
187	xle	28.329999923706055	2020-03-23
188	xle	29.829999923706055	2020-03-30
189	xle	33.90999984741211	2020-04-06
190	xle	33.95000076293945	2020-04-13
191	xle	34.619998931884766	2020-04-20
192	xle	35.849998474121094	2020-04-27
193	xle	38.779998779296875	2020-05-04
194	xle	35.9900016784668	2020-05-11
195	xle	38.47999954223633	2020-05-18
196	xle	38.7599983215332	2020-05-25
197	xle	44.84000015258789	2020-06-01
198	xle	39.81999969482422	2020-06-08
199	xle	39.56999969482422	2020-06-15
200	xle	36.5099983215332	2020-06-22
201	xle	37.34000015258789	2020-06-29
202	xle	35.540000915527344	2020-07-06
203	xle	36.689998626708984	2020-07-13
204	xle	37.5099983215332	2020-07-20
205	xle	36.029998779296875	2020-07-27
206	xle	37.18000030517578	2020-08-03
207	xle	38.189998626708984	2020-08-10
208	xle	36.029998779296875	2020-08-17
209	xle	36.439998626708984	2020-08-24
210	xle	34.869998931884766	2020-08-31
211	xle	32.619998931884766	2020-09-07
212	xle	33.61000061035156	2020-09-14
213	xle	30.18000030517578	2020-09-21
214	xle	29.309999465942383	2020-09-28
215	xle	30.790000915527344	2020-10-05
216	xle	30.190000534057617	2020-10-12
217	xle	30.389999389648438	2020-10-19
218	xle	28.719999313354492	2020-10-26
219	xle	28.93000030517578	2020-11-02
220	xle	33.880001068115234	2020-11-09
221	xle	35.810001373291016	2020-11-16
222	xle	38.90999984741211	2020-11-23
223	xle	40.630001068115234	2020-11-30
224	xle	41.119998931884766	2020-12-07
225	xle	39.400001525878906	2020-12-14
226	xle	38.119998931884766	2020-12-21
227	xle	37.900001525878906	2020-12-28
228	xle	41.41999816894531	2021-01-04
229	xle	42.75	2021-01-11
230	xle	42.06999969482422	2021-01-18
231	xle	39.31999969482422	2021-01-25
232	xle	42.560001373291016	2021-02-01
233	xle	44.66999816894531	2021-02-08
234	xle	46.18000030517578	2021-02-15
235	xle	48.150001525878906	2021-02-22
236	xle	52.95000076293945	2021-03-01
237	xle	53.56999969482422	2021-03-08
238	xle	49.529998779296875	2021-03-15
239	xle	50.43000030517578	2021-03-22
240	xle	50.310001373291016	2021-03-29
241	xle	48.189998626708984	2021-04-05
242	xle	48.400001525878906	2021-04-12
243	xle	47.540000915527344	2021-04-19
244	xle	49.38999938964844	2021-04-26
245	xle	53.630001068115234	2021-05-03
246	xle	53.4900016784668	2021-05-10
247	xle	52.15999984741211	2021-05-17
248	xle	52.209999084472656	2021-05-24
249	xle	55.75	2021-05-31
250	xle	55.380001068115234	2021-06-07
251	xle	52.38999938964844	2021-06-14
252	xle	55.34000015258789	2021-06-21
253	xle	54.689998626708984	2021-06-28
254	xle	52.849998474121094	2021-07-05
255	xle	48.68000030517578	2021-07-12
256	xle	48.52000045776367	2021-07-19
257	xle	49.38999938964844	2021-07-26
258	xle	49.5099983215332	2021-08-02
259	xle	49.41999816894531	2021-08-09
260	xle	45.88999938964844	2021-08-16
261	xle	49.310001373291016	2021-08-23
262	xle	48.619998931884766	2021-08-30
263	xle	47.790000915527344	2021-09-06
264	xle	49.31999969482422	2021-09-13
265	xle	50.900001525878906	2021-09-20
266	xle	53.84000015258789	2021-09-27
267	xle	56.56999969482422	2021-10-04
268	xle	57.33000183105469	2021-10-11
269	xle	57.95000076293945	2021-10-18
270	xle	57.470001220703125	2021-10-25
271	xle	58.2599983215332	2021-11-01
272	xle	57.54999923706055	2021-11-08
273	xle	54.66999816894531	2021-11-15
274	xle	55.58000183105469	2021-11-22
275	xle	55.58000183105469	2021-11-26
\.


--
-- Name: LBOARD_BROAD_ASSET_CLASS_1121_2021-11-23_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."LBOARD_BROAD_ASSET_CLASS_1121_2021-11-23_id_seq"', 77, true);


--
-- Name: PM_2021-11-26_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."PM_2021-11-26_id_seq"', 30, true);


--
-- Name: fang+_2021-11-26_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."fang+_2021-11-26_id_seq"', 30, true);


--
-- Name: fang_names_2021-11-23_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."fang_names_2021-11-23_id_seq"', 10, true);


--
-- Name: fang_names_2021-11-25_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."fang_names_2021-11-25_id_seq"', 10, true);


--
-- Name: gld weekly5y_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."gld weekly5y_id_seq"', 262, true);


--
-- Name: homies_2021-11-26_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."homies_2021-11-26_id_seq"', 45, true);


--
-- Name: index_components/fang_names.csv_2021-11-22_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."index_components/fang_names.csv_2021-11-22_id_seq"', 10, true);


--
-- Name: index_components_2021-11-23_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."index_components_2021-11-23_id_seq"', 10, true);


--
-- Name: iwm weekly5y_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."iwm weekly5y_id_seq"', 277, true);


--
-- Name: kre weekly5y_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."kre weekly5y_id_seq"', 275, true);


--
-- Name: l_and_l_2021-11-26_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."l_and_l_2021-11-26_id_seq"', 231, true);


--
-- Name: leaders & laggards_2021-11-23_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."leaders & laggards_2021-11-23_id_seq"', 77, true);


--
-- Name: leaders & laggards_2021-11-25_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."leaders & laggards_2021-11-25_id_seq"', 77, true);


--
-- Name: leaders_11/20/2021_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."leaders_11/20/2021_id_seq"', 3, true);


--
-- Name: retail_2021-11-26_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."retail_2021-11-26_id_seq"', 144, true);


--
-- Name: retail_xrt_2021-11-25_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."retail_xrt_2021-11-25_id_seq"', 107, true);


--
-- Name: semis_12/05/2020_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."semis_12/05/2020_id_seq"', 3, true);


--
-- Name: soxx_2021-11-23_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."soxx_2021-11-23_id_seq"', 30, true);


--
-- Name: soxx_2021-11-26_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."soxx_2021-11-26_id_seq"', 59, true);


--
-- Name: spy weekly5y_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."spy weekly5y_id_seq"', 282, true);


--
-- Name: tlt weekly5y_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."tlt weekly5y_id_seq"', 290, true);


--
-- Name: vtv weekly5y_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."vtv weekly5y_id_seq"', 280, true);


--
-- Name: vug weekly5y_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."vug weekly5y_id_seq"', 279, true);


--
-- Name: xle weekly5y_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."xle weekly5y_id_seq"', 275, true);


--
-- Name: LBOARD_BROAD_ASSET_CLASS_1121_2021-11-23 LBOARD_BROAD_ASSET_CLASS_1121_2021-11-23_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."LBOARD_BROAD_ASSET_CLASS_1121_2021-11-23"
    ADD CONSTRAINT "LBOARD_BROAD_ASSET_CLASS_1121_2021-11-23_pkey" PRIMARY KEY (id);


--
-- Name: PM_2021-11-26 PM_2021-11-26_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."PM_2021-11-26"
    ADD CONSTRAINT "PM_2021-11-26_pkey" PRIMARY KEY (id);


--
-- Name: fang+_2021-11-26 fang+_2021-11-26_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."fang+_2021-11-26"
    ADD CONSTRAINT "fang+_2021-11-26_pkey" PRIMARY KEY (id);


--
-- Name: fang_names_2021-11-23 fang_names_2021-11-23_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."fang_names_2021-11-23"
    ADD CONSTRAINT "fang_names_2021-11-23_pkey" PRIMARY KEY (id);


--
-- Name: fang_names_2021-11-25 fang_names_2021-11-25_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."fang_names_2021-11-25"
    ADD CONSTRAINT "fang_names_2021-11-25_pkey" PRIMARY KEY (id);


--
-- Name: gld weekly5y gld weekly5y_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."gld weekly5y"
    ADD CONSTRAINT "gld weekly5y_pkey" PRIMARY KEY (id);


--
-- Name: homies_2021-11-26 homies_2021-11-26_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."homies_2021-11-26"
    ADD CONSTRAINT "homies_2021-11-26_pkey" PRIMARY KEY (id);


--
-- Name: index_components/fang_names.csv_2021-11-22 index_components/fang_names.csv_2021-11-22_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."index_components/fang_names.csv_2021-11-22"
    ADD CONSTRAINT "index_components/fang_names.csv_2021-11-22_pkey" PRIMARY KEY (id);


--
-- Name: index_components_2021-11-23 index_components_2021-11-23_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."index_components_2021-11-23"
    ADD CONSTRAINT "index_components_2021-11-23_pkey" PRIMARY KEY (id);


--
-- Name: iwm weekly5y iwm weekly5y_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."iwm weekly5y"
    ADD CONSTRAINT "iwm weekly5y_pkey" PRIMARY KEY (id);


--
-- Name: kre weekly5y kre weekly5y_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."kre weekly5y"
    ADD CONSTRAINT "kre weekly5y_pkey" PRIMARY KEY (id);


--
-- Name: l_and_l_2021-11-26 l_and_l_2021-11-26_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."l_and_l_2021-11-26"
    ADD CONSTRAINT "l_and_l_2021-11-26_pkey" PRIMARY KEY (id);


--
-- Name: leaders & laggards_2021-11-23 leaders & laggards_2021-11-23_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."leaders & laggards_2021-11-23"
    ADD CONSTRAINT "leaders & laggards_2021-11-23_pkey" PRIMARY KEY (id);


--
-- Name: leaders & laggards_2021-11-25 leaders & laggards_2021-11-25_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."leaders & laggards_2021-11-25"
    ADD CONSTRAINT "leaders & laggards_2021-11-25_pkey" PRIMARY KEY (id);


--
-- Name: leaders_11/20/2021 leaders_11/20/2021_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."leaders_11/20/2021"
    ADD CONSTRAINT "leaders_11/20/2021_pkey" PRIMARY KEY (id);


--
-- Name: retail_2021-11-26 retail_2021-11-26_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."retail_2021-11-26"
    ADD CONSTRAINT "retail_2021-11-26_pkey" PRIMARY KEY (id);


--
-- Name: retail_xrt_2021-11-25 retail_xrt_2021-11-25_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."retail_xrt_2021-11-25"
    ADD CONSTRAINT "retail_xrt_2021-11-25_pkey" PRIMARY KEY (id);


--
-- Name: semis_12/05/2020 semis_12/05/2020_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."semis_12/05/2020"
    ADD CONSTRAINT "semis_12/05/2020_pkey" PRIMARY KEY (id);


--
-- Name: soxx_2021-11-23 soxx_2021-11-23_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."soxx_2021-11-23"
    ADD CONSTRAINT "soxx_2021-11-23_pkey" PRIMARY KEY (id);


--
-- Name: soxx_2021-11-26 soxx_2021-11-26_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."soxx_2021-11-26"
    ADD CONSTRAINT "soxx_2021-11-26_pkey" PRIMARY KEY (id);


--
-- Name: spy weekly5y spy weekly5y_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."spy weekly5y"
    ADD CONSTRAINT "spy weekly5y_pkey" PRIMARY KEY (id);


--
-- Name: tlt weekly5y tlt weekly5y_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."tlt weekly5y"
    ADD CONSTRAINT "tlt weekly5y_pkey" PRIMARY KEY (id);


--
-- Name: vtv weekly5y vtv weekly5y_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."vtv weekly5y"
    ADD CONSTRAINT "vtv weekly5y_pkey" PRIMARY KEY (id);


--
-- Name: vug weekly5y vug weekly5y_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."vug weekly5y"
    ADD CONSTRAINT "vug weekly5y_pkey" PRIMARY KEY (id);


--
-- Name: xle weekly5y xle weekly5y_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."xle weekly5y"
    ADD CONSTRAINT "xle weekly5y_pkey" PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

