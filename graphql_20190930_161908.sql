--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.5
-- Dumped by pg_dump version 11.0

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: Todos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Todos" (
    id integer NOT NULL,
    description text,
    priority integer DEFAULT 1,
    completed boolean DEFAULT false,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public."Todos" OWNER TO postgres;

--
-- Name: Todos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Todos_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Todos_id_seq" OWNER TO postgres;

--
-- Name: Todos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Todos_id_seq" OWNED BY public."Todos".id;


--
-- Name: Todos id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Todos" ALTER COLUMN id SET DEFAULT nextval('public."Todos_id_seq"'::regclass);


--
-- Data for Name: Todos; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Todos" VALUES (2, '123', 1, false, '2019-09-30 14:04:14.679+03', '2019-09-30 14:04:14.679+03');
INSERT INTO public."Todos" VALUES (4, '123', 1, false, '2019-09-30 14:07:29.117+03', '2019-09-30 14:07:29.117+03');
INSERT INTO public."Todos" VALUES (5, '123', 1, false, '2019-09-30 14:07:30.733+03', '2019-09-30 14:07:30.733+03');
INSERT INTO public."Todos" VALUES (7, 'rferg', 5, false, '2019-09-30 14:09:07.572+03', '2019-09-30 14:09:07.572+03');
INSERT INTO public."Todos" VALUES (8, 'rferg', 5, false, '2019-09-30 14:25:41.524+03', '2019-09-30 14:25:41.524+03');
INSERT INTO public."Todos" VALUES (3, '99', 9, false, '2019-09-30 14:06:43.242+03', '2019-09-30 14:37:17.704+03');
INSERT INTO public."Todos" VALUES (6, 'rferg', 1, true, '2019-09-30 14:08:35.55+03', '2019-09-30 14:49:41.551+03');
INSERT INTO public."Todos" VALUES (9, '984165479', 1, false, '2019-09-30 15:07:16.571+03', '2019-09-30 15:07:16.571+03');
INSERT INTO public."Todos" VALUES (11, 'Test 2', 2, false, '2019-09-30 15:15:19.458+03', '2019-09-30 15:15:19.458+03');


--
-- Name: Todos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Todos_id_seq"', 11, true);


--
-- Name: Todos Todos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Todos"
    ADD CONSTRAINT "Todos_pkey" PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

