--
-- PostgreSQL database dump
--

-- Dumped from database version 14.9 (Ubuntu 14.9-0ubuntu0.22.04.1)
-- Dumped by pg_dump version 14.9 (Ubuntu 14.9-0ubuntu0.22.04.1)

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
-- Name: likes; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.likes (
    id integer NOT NULL,
    "postId" integer,
    "userId" integer
);


--
-- Name: likes_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.likes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: likes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.likes_id_seq OWNED BY public.likes.id;


--
-- Name: posts; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.posts (
    id integer NOT NULL,
    url text NOT NULL,
    description text,
    "userId" integer
);


--
-- Name: posts_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.posts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: posts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.posts_id_seq OWNED BY public.posts.id;


--
-- Name: sessions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.sessions (
    id integer NOT NULL,
    "userId" integer,
    token text NOT NULL
);


--
-- Name: sessions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.sessions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: sessions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.sessions_id_seq OWNED BY public.sessions.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.users (
    id integer NOT NULL,
    username text NOT NULL,
    email text NOT NULL,
    password text NOT NULL,
    photo text NOT NULL
);


--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: likes id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.likes ALTER COLUMN id SET DEFAULT nextval('public.likes_id_seq'::regclass);


--
-- Name: posts id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.posts ALTER COLUMN id SET DEFAULT nextval('public.posts_id_seq'::regclass);


--
-- Name: sessions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.sessions ALTER COLUMN id SET DEFAULT nextval('public.sessions_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: likes; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: posts; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.posts VALUES (5, 'https://aivalley.ai/', 'A very good site to find the AI that fits your needs', 16);
INSERT INTO public.posts VALUES (7, 'https://sindicojf.com.br/noticias/calendario-anual-de-acoes-organiza-trabalho-do-sindico/', 'Olha eu ficando famosa!', 21);


--
-- Data for Name: sessions; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.sessions VALUES (35, 16, '4c115f8d-ef36-4f80-a4b6-57044e4c5902');
INSERT INTO public.sessions VALUES (36, 16, 'be14e902-45c1-4877-85a4-949c5e4bce86');
INSERT INTO public.sessions VALUES (37, 19, '218af622-e12b-4cc4-9fb2-eba0b1a2d6bf');
INSERT INTO public.sessions VALUES (38, 19, '3888fb06-1559-42b0-a5f2-6fda9062bfca');
INSERT INTO public.sessions VALUES (39, 19, 'c67ecbd0-6156-4405-8cc4-e60175345b91');
INSERT INTO public.sessions VALUES (46, 19, '73242ae5-aab8-4501-94bc-f9b41407ff1c');
INSERT INTO public.sessions VALUES (47, 19, 'db534318-0ec2-4dbe-92b9-ac94bd5af899');
INSERT INTO public.sessions VALUES (48, 19, '40eb8a07-0e92-422c-acc9-081ed1398eed');
INSERT INTO public.sessions VALUES (49, 19, '3bec1a72-90fe-41f3-92fd-81a632b9d3a5');
INSERT INTO public.sessions VALUES (50, 19, 'a9f591be-fbf3-465c-8984-78fe20e93554');
INSERT INTO public.sessions VALUES (51, 19, 'ce8b6b92-0f69-4613-8a87-dce2e3d3e0da');
INSERT INTO public.sessions VALUES (52, 19, 'f07107e4-9464-43d7-88ac-67b9a2900b9c');
INSERT INTO public.sessions VALUES (53, 17, '7dbc8cc6-1e49-44a9-8377-a1b01a5577e1');
INSERT INTO public.sessions VALUES (54, 17, '444fa41b-f21c-4dc8-ac27-c5bd9bfb5c47');
INSERT INTO public.sessions VALUES (55, 19, '59009296-658e-42a1-ab30-816161833197');
INSERT INTO public.sessions VALUES (56, 19, '5ad348dd-96be-4434-85b1-d142f113d7c5');
INSERT INTO public.sessions VALUES (57, 17, 'dab88016-dd0c-4aa6-bb17-911e6cf67fe1');
INSERT INTO public.sessions VALUES (58, 19, 'f57bcc3b-782a-43e1-b413-6b754ff819d0');
INSERT INTO public.sessions VALUES (59, 17, '4c9b73ac-3114-4d3d-8891-18148a045dcc');
INSERT INTO public.sessions VALUES (60, 17, 'c656114f-acd9-4de7-948a-381fd9b6d0cf');
INSERT INTO public.sessions VALUES (61, 17, 'bee716b4-7263-40db-8de7-156d0cfe3d60');
INSERT INTO public.sessions VALUES (62, 17, '9cdc68e0-0b21-4f58-9cc2-c9c11840b20b');
INSERT INTO public.sessions VALUES (63, 17, '1e077669-9b79-499b-8150-e4528a69156c');
INSERT INTO public.sessions VALUES (64, 17, 'a54a1343-754a-4ab9-9ed6-ab0eccaa9c3d');
INSERT INTO public.sessions VALUES (65, 17, '31a417e5-d8dd-4dbc-929f-0b7d9bb2b3af');
INSERT INTO public.sessions VALUES (66, 17, '0b4373fe-bc1f-42b0-9e5d-9b908422b76d');
INSERT INTO public.sessions VALUES (67, 17, '4607c1d9-03cf-4a40-8b9b-40d0278a6f78');
INSERT INTO public.sessions VALUES (68, 17, '0de80a1f-0ba1-45fe-a91b-925772fe55bb');
INSERT INTO public.sessions VALUES (69, 17, '4ebb6f1f-f409-493e-973e-031c00e90b90');
INSERT INTO public.sessions VALUES (70, 17, '50bc4d6d-060d-4e14-89e5-08a5e518e1c2');
INSERT INTO public.sessions VALUES (71, 17, '6deb01d6-52ec-423f-8a7f-afe2fddf42ce');
INSERT INTO public.sessions VALUES (72, 17, 'dda6ca0e-0e6b-49cb-9a0f-d050afe23c7b');
INSERT INTO public.sessions VALUES (73, 17, 'ea75f829-603f-41ab-8f60-999e815b4547');
INSERT INTO public.sessions VALUES (74, 17, '92b32e45-046a-4ae1-aa63-6fcea8476153');
INSERT INTO public.sessions VALUES (75, 17, '1047bf3c-a5b0-4a0d-90e4-78d3a7c70170');
INSERT INTO public.sessions VALUES (76, 17, 'ae49cefd-ebed-456f-aff1-ec4ce536bf8a');
INSERT INTO public.sessions VALUES (77, 17, 'dc244e28-1780-4b2e-9d7e-2396927a6c0d');
INSERT INTO public.sessions VALUES (78, 17, 'b1eb9e43-5431-4ec1-8141-c024e4a337cd');
INSERT INTO public.sessions VALUES (79, 17, '69e59a1a-2417-4a3e-b112-9881c069579c');
INSERT INTO public.sessions VALUES (80, 17, 'b6c0020c-2eac-4310-a25a-f7ec355f34ec');
INSERT INTO public.sessions VALUES (81, 17, 'bf8bb78b-0b4c-48d8-b98d-cec1816e4ab5');
INSERT INTO public.sessions VALUES (82, 17, 'f64a15d6-6307-4dc8-8248-2705767420a6');
INSERT INTO public.sessions VALUES (83, 17, 'f7db510d-e08c-476d-bc5c-c40576a43ce8');
INSERT INTO public.sessions VALUES (84, 17, 'b308130e-6bdb-4bc8-9cdf-3ea151e0099c');
INSERT INTO public.sessions VALUES (85, 17, 'd068315b-8003-4329-abd6-2ec05ad541eb');
INSERT INTO public.sessions VALUES (86, 17, 'ad99ac53-04bc-477f-a7a8-b2a960c37cd4');
INSERT INTO public.sessions VALUES (87, 17, 'b6d6bd50-32a1-486d-95ca-b66f641fcce6');
INSERT INTO public.sessions VALUES (88, 17, 'a7dbb16b-2a23-4118-b694-a3e2a262fef0');
INSERT INTO public.sessions VALUES (89, 16, 'e9057f35-6450-4d9f-aa93-1885c2c744b9');
INSERT INTO public.sessions VALUES (90, 21, '76a76e23-2806-418b-a09d-ce633705b0c0');
INSERT INTO public.sessions VALUES (91, 16, '25c9667f-8c30-45eb-b7e8-9ecbb4004998');
INSERT INTO public.sessions VALUES (92, 21, 'fc708d99-fe6f-41bd-b73f-683552446705');


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.users VALUES (9, 'Guilherme', 'pig22@ymail.com', '$2b$10$0zzR9tFSCnsoPOn8F/rIxuTNOBNRW9jugkC30UfGjfhgX1MmTd03C', 'https://upload.wikimedia.org/wikipedia/commons/thumb/5/59/User-avatar.svg/768px-User-avatar.svg.png');
INSERT INTO public.users VALUES (10, 'Guilherme', 'pig2@ymail.com', '$2b$10$Xs9HkOWkxPz2gyAhLUr2Yu3A/cRJolCzBMXbNXerKoLqOppMv4Lae', 'https://upload.wikimedia.org/wikipedia/commons/thumb/5/59/User-avatar.svg/768px-User-avatar.svg.png');
INSERT INTO public.users VALUES (13, 'Guilherme Yung', 'gilyung@ymail.com', '$2b$10$dW469gFMV.ODJBNFSLTA2u37goZ9k3AIlE9v5vo0HVFJznYg1C2Py', 'https://upload.wikimedia.org/wikipedia/commons/thumb/5/59/User-avatar.svg/768px-User-avatar.svg.png');
INSERT INTO public.users VALUES (14, 'Guilherme Yung', 'gilyung2@ymail.com', '$2b$10$fRsMPW2deMT.d/QXwkmBFOVEJXBSE4tWU/wjhLCJEMscXcNfLmjp2', 'https://upload.wikimedia.org/wikipedia/commons/thumb/5/59/User-avatar.svg/768px-User-avatar.svg.png');
INSERT INTO public.users VALUES (15, 'Guilherme Yung', 'gilyung22@ymail.com', '$2b$10$8kwEXbsdvNy5FlBXnI0aJeT88lVs1ar/pYnFXXRwHXEaUsJcXcXwK', 'https://upload.wikimedia.org/wikipedia/commons/thumb/5/59/User-avatar.svg/768px-User-avatar.svg.png');
INSERT INTO public.users VALUES (16, 'José Guilherme', 'zezin@gmail.com', '$2b$10$PceGrMOJH4WxfAK07lMobeRs3g.Ox13Tg3tRHNPOuTjlU6hTc7uT.', 'https://staticg.sportskeeda.com/editor/2022/07/f57a8-16590033267497.png');
INSERT INTO public.users VALUES (17, 'Zé Guilherme', 'jgryung@gmail.com', '$2b$10$A1NGClzbboBg6bslyPQf0.HuCQVACNxk9JhigYq1oS9dZ9TqQ.rjO', 'https://staticg.sportskeeda.com/editor/2022/07/f57a8-16590033267497.png');
INSERT INTO public.users VALUES (18, 'Zé Guilherme', 'jose@gmail.com', '$2b$10$oRsSnMzcnQEuml8ur5eYi.3af6kbBbpZjC2Gw4ioHwB0JV9oNhv4K', 'https://staticg.sportskeeda.com/editor/2022/07/f57a8-16590033267497.png');
INSERT INTO public.users VALUES (19, 'Arcelino', 'arcelino@gmail.com', '$2b$10$Lrmn3FL9qIpMKI2tvQY0FuGpFmRyiroCpDJVQNhuqLaXedp0w1l7a', 'https://upload.wikimedia.org/wikipedia/commons/thumb/5/59/User-avatar.svg/768px-User-avatar.svg.png');
INSERT INTO public.users VALUES (21, 'Suely Ribeiro', 'suelyrp@hotmail.com', '$2b$10$jkxztzMXvmQYiQhI7iA0bu8Y3RIT9fvl/7Gos9woP40.W5MtNMgqe', 'https://sindicojf.com.br/wp-content/uploads/2022/02/Suely-Ribeiro-300x300.png');


--
-- Name: likes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.likes_id_seq', 1, false);


--
-- Name: posts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.posts_id_seq', 10, true);


--
-- Name: sessions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.sessions_id_seq', 92, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.users_id_seq', 21, true);


--
-- Name: likes likes_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.likes
    ADD CONSTRAINT likes_pkey PRIMARY KEY (id);


--
-- Name: posts posts_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.posts
    ADD CONSTRAINT posts_pkey PRIMARY KEY (id);


--
-- Name: sessions sessions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.sessions
    ADD CONSTRAINT sessions_pkey PRIMARY KEY (id);


--
-- Name: sessions sessions_token_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.sessions
    ADD CONSTRAINT sessions_token_key UNIQUE (token);


--
-- Name: users users_email_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key UNIQUE (email);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: likes likes_postId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.likes
    ADD CONSTRAINT "likes_postId_fkey" FOREIGN KEY ("postId") REFERENCES public.posts(id);


--
-- Name: likes likes_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.likes
    ADD CONSTRAINT "likes_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id);


--
-- Name: posts posts_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.posts
    ADD CONSTRAINT "posts_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id);


--
-- Name: sessions sessions_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.sessions
    ADD CONSTRAINT "sessions_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id);


--
-- PostgreSQL database dump complete
--

