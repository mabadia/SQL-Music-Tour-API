--
-- PostgreSQL database dump
--

-- Dumped from database version 15.2
-- Dumped by pg_dump version 15.2

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

--
-- Data for Name: SequelizeMeta; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."SequelizeMeta" (name) FROM stdin;
20210728205549-create-band.js
20210805161730-create-event.js
20210805162404-create-stage.js
20210805162712-create-stage-event.js
20210805163332-create-set-time.js
20210805163754-create-meet-greet.js
20210811232709-add-recommendation-column-to-bands.js
\.


--
-- Data for Name: bands; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.bands (band_id, name, genre, available_start_time, end_time, recommendation) FROM stdin;
1	rolling moss	rock	2023-09-23 00:00:00-06	2023-09-23 00:00:00-06	\N
\.


--
-- Data for Name: events; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.events (event_id, name, date, start_time, end_time) FROM stdin;
1	tulsa	2023-09-23 00:00:00-06	2023-09-23 00:00:00-06	2023-09-23 00:00:00-06
2	denver	2023-09-23 00:00:00-06	2023-09-23 00:00:00-06	2023-09-23 00:00:00-06
3	los angeles	2023-09-23 00:00:00-06	2023-09-23 00:00:00-06	2023-09-23 00:00:00-06
4	seattle	2023-09-23 00:00:00-06	2023-09-23 00:00:00-06	2023-09-23 00:00:00-06
5	new york	2023-09-23 00:00:00-06	2023-09-23 00:00:00-06	2023-09-23 00:00:00-06
\.


--
-- Data for Name: meet_greets; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.meet_greets (meet_greet_id, event_id, band_id, meet_start_time, meet_end_time) FROM stdin;
1	1	1	2023-09-23 00:00:00-06	2023-09-23 00:00:00-06
\.


--
-- Data for Name: set_times; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.set_times (set_time_id, event_id, stage_id, band_id, start_time, end_time) FROM stdin;
1	1	1	1	2023-09-23 00:00:00-06	2023-09-23 00:00:00-06
\.


--
-- Data for Name: stage_events; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.stage_events (stage_events_id, stage_id, event_id) FROM stdin;
1	1	1
2	1	5
3	1	3
\.


--
-- Data for Name: stages; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.stages (stage_id, stage_name) FROM stdin;
1	rock
\.


--
-- Name: bands_band_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.bands_band_id_seq', 1, true);


--
-- Name: events_event_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.events_event_id_seq', 5, true);


--
-- Name: meet_greets_meet_greet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.meet_greets_meet_greet_id_seq', 1, true);


--
-- Name: set_times_set_time_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.set_times_set_time_id_seq', 1, true);


--
-- Name: stage_events_stage_events_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.stage_events_stage_events_id_seq', 3, true);


--
-- Name: stages_stage_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.stages_stage_id_seq', 1, true);


--
-- PostgreSQL database dump complete
--

