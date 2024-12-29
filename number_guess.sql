--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    user_id integer NOT NULL,
    guess_no integer DEFAULT '-1'::integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    name character varying(22) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 1, 3);
INSERT INTO public.games VALUES (2, 1, 4);
INSERT INTO public.games VALUES (3, 13, 6);
INSERT INTO public.games VALUES (4, 1, 7);
INSERT INTO public.games VALUES (5, 1, 6);
INSERT INTO public.games VALUES (6, 15, 947);
INSERT INTO public.games VALUES (7, 16, 592);
INSERT INTO public.games VALUES (8, 15, 681);
INSERT INTO public.games VALUES (9, 15, 420);
INSERT INTO public.games VALUES (10, 15, 448);
INSERT INTO public.games VALUES (11, 1, 4);
INSERT INTO public.games VALUES (12, 13, 6);
INSERT INTO public.games VALUES (13, 18, 254);
INSERT INTO public.games VALUES (14, 19, 282);
INSERT INTO public.games VALUES (15, 18, 952);
INSERT INTO public.games VALUES (16, 18, 107);
INSERT INTO public.games VALUES (17, 18, 460);
INSERT INTO public.games VALUES (18, 20, 818);
INSERT INTO public.games VALUES (19, 21, 164);
INSERT INTO public.games VALUES (20, 20, 329);
INSERT INTO public.games VALUES (21, 20, 318);
INSERT INTO public.games VALUES (22, 20, 500);
INSERT INTO public.games VALUES (23, 22, 435);
INSERT INTO public.games VALUES (24, 23, 54);
INSERT INTO public.games VALUES (25, 22, 595);
INSERT INTO public.games VALUES (26, 22, 958);
INSERT INTO public.games VALUES (27, 22, 759);
INSERT INTO public.games VALUES (28, 13, 6);
INSERT INTO public.games VALUES (29, 24, 49);
INSERT INTO public.games VALUES (30, 25, 867);
INSERT INTO public.games VALUES (31, 24, 949);
INSERT INTO public.games VALUES (32, 24, 117);
INSERT INTO public.games VALUES (33, 24, 730);
INSERT INTO public.games VALUES (34, 27, 4);
INSERT INTO public.games VALUES (35, 28, 303);
INSERT INTO public.games VALUES (36, 28, 922);
INSERT INTO public.games VALUES (37, 29, 763);
INSERT INTO public.games VALUES (38, 29, 506);
INSERT INTO public.games VALUES (39, 28, 859);
INSERT INTO public.games VALUES (40, 28, 260);
INSERT INTO public.games VALUES (41, 28, 42);
INSERT INTO public.games VALUES (42, 27, 5);
INSERT INTO public.games VALUES (43, 27, 10);
INSERT INTO public.games VALUES (44, 27, 10);
INSERT INTO public.games VALUES (45, 30, 708);
INSERT INTO public.games VALUES (46, 30, 37);
INSERT INTO public.games VALUES (47, 31, 494);
INSERT INTO public.games VALUES (48, 31, 617);
INSERT INTO public.games VALUES (49, 30, 934);
INSERT INTO public.games VALUES (50, 30, 821);
INSERT INTO public.games VALUES (51, 30, 63);
INSERT INTO public.games VALUES (52, 27, 8);
INSERT INTO public.games VALUES (53, 32, 702);
INSERT INTO public.games VALUES (54, 32, 905);
INSERT INTO public.games VALUES (55, 33, 478);
INSERT INTO public.games VALUES (56, 33, 477);
INSERT INTO public.games VALUES (57, 32, 853);
INSERT INTO public.games VALUES (58, 32, 602);
INSERT INTO public.games VALUES (59, 32, 178);
INSERT INTO public.games VALUES (60, 27, 10);
INSERT INTO public.games VALUES (61, 27, 8);
INSERT INTO public.games VALUES (62, 34, 190);
INSERT INTO public.games VALUES (63, 34, 835);
INSERT INTO public.games VALUES (64, 35, 33);
INSERT INTO public.games VALUES (65, 35, 283);
INSERT INTO public.games VALUES (66, 34, 41);
INSERT INTO public.games VALUES (67, 34, 1000);
INSERT INTO public.games VALUES (68, 34, 856);
INSERT INTO public.games VALUES (69, 27, 7);
INSERT INTO public.games VALUES (70, 36, 539);
INSERT INTO public.games VALUES (71, 36, 293);
INSERT INTO public.games VALUES (72, 37, 686);
INSERT INTO public.games VALUES (73, 37, 824);
INSERT INTO public.games VALUES (74, 36, 256);
INSERT INTO public.games VALUES (75, 36, 298);
INSERT INTO public.games VALUES (76, 36, 761);
INSERT INTO public.games VALUES (77, 13, 5);
INSERT INTO public.games VALUES (78, 1, 6);
INSERT INTO public.games VALUES (79, 1, 7);
INSERT INTO public.games VALUES (80, 38, 339);
INSERT INTO public.games VALUES (81, 38, 798);
INSERT INTO public.games VALUES (82, 39, 640);
INSERT INTO public.games VALUES (83, 39, 275);
INSERT INTO public.games VALUES (84, 38, 695);
INSERT INTO public.games VALUES (85, 38, 467);
INSERT INTO public.games VALUES (86, 38, 395);
INSERT INTO public.games VALUES (87, 40, 841);
INSERT INTO public.games VALUES (88, 40, 82);
INSERT INTO public.games VALUES (89, 41, 913);
INSERT INTO public.games VALUES (90, 41, 240);
INSERT INTO public.games VALUES (91, 40, 643);
INSERT INTO public.games VALUES (92, 40, 345);
INSERT INTO public.games VALUES (93, 40, 445);
INSERT INTO public.games VALUES (94, 42, 5);
INSERT INTO public.games VALUES (95, 42, 6);
INSERT INTO public.games VALUES (96, 43, 391);
INSERT INTO public.games VALUES (97, 43, 687);
INSERT INTO public.games VALUES (98, 44, 262);
INSERT INTO public.games VALUES (99, 44, 687);
INSERT INTO public.games VALUES (100, 43, 13);
INSERT INTO public.games VALUES (101, 43, 231);
INSERT INTO public.games VALUES (102, 43, 276);
INSERT INTO public.games VALUES (103, 45, 749);
INSERT INTO public.games VALUES (104, 45, 616);
INSERT INTO public.games VALUES (105, 46, 653);
INSERT INTO public.games VALUES (106, 46, 194);
INSERT INTO public.games VALUES (107, 45, 740);
INSERT INTO public.games VALUES (108, 45, 939);
INSERT INTO public.games VALUES (109, 45, 298);
INSERT INTO public.games VALUES (110, 42, 17);
INSERT INTO public.games VALUES (111, 53, 182);
INSERT INTO public.games VALUES (112, 53, 502);
INSERT INTO public.games VALUES (113, 54, 381);
INSERT INTO public.games VALUES (114, 54, 890);
INSERT INTO public.games VALUES (115, 53, 367);
INSERT INTO public.games VALUES (116, 53, 58);
INSERT INTO public.games VALUES (117, 53, 50);
INSERT INTO public.games VALUES (118, 55, 583);
INSERT INTO public.games VALUES (119, 55, 117);
INSERT INTO public.games VALUES (120, 56, 712);
INSERT INTO public.games VALUES (121, 56, 361);
INSERT INTO public.games VALUES (122, 55, 94);
INSERT INTO public.games VALUES (123, 55, 364);
INSERT INTO public.games VALUES (124, 55, 307);
INSERT INTO public.games VALUES (125, 1, 7);
INSERT INTO public.games VALUES (126, 1, 5);
INSERT INTO public.games VALUES (127, 13, 12);
INSERT INTO public.games VALUES (128, 13, 8);
INSERT INTO public.games VALUES (129, 57, 670);
INSERT INTO public.games VALUES (130, 57, 642);
INSERT INTO public.games VALUES (131, 58, 168);
INSERT INTO public.games VALUES (132, 58, 432);
INSERT INTO public.games VALUES (133, 57, 983);
INSERT INTO public.games VALUES (134, 57, 441);
INSERT INTO public.games VALUES (135, 57, 970);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'Joe');
INSERT INTO public.users VALUES (2, 'John');
INSERT INTO public.users VALUES (3, 'user_1735499728040');
INSERT INTO public.users VALUES (4, 'user_1735499728039');
INSERT INTO public.users VALUES (5, '900');
INSERT INTO public.users VALUES (6, 'user_1735501768925');
INSERT INTO public.users VALUES (7, 'user_1735501768923');
INSERT INTO public.users VALUES (8, 'JOE');
INSERT INTO public.users VALUES (13, 'Jin');
INSERT INTO public.users VALUES (15, 'user_1735504922729');
INSERT INTO public.users VALUES (16, 'user_1735504922728');
INSERT INTO public.users VALUES (17, 'Ben');
INSERT INTO public.users VALUES (18, 'user_1735505247880');
INSERT INTO public.users VALUES (19, 'user_1735505247879');
INSERT INTO public.users VALUES (20, 'user_1735505356843');
INSERT INTO public.users VALUES (21, 'user_1735505356842');
INSERT INTO public.users VALUES (22, 'user_1735505436880');
INSERT INTO public.users VALUES (23, 'user_1735505436879');
INSERT INTO public.users VALUES (24, 'user_1735505525484');
INSERT INTO public.users VALUES (25, 'user_1735505525483');
INSERT INTO public.users VALUES (26, 'user_1735505247878');
INSERT INTO public.users VALUES (27, 'user_173550524788');
INSERT INTO public.users VALUES (28, 'user_1735505936498');
INSERT INTO public.users VALUES (29, 'user_1735505936497');
INSERT INTO public.users VALUES (30, 'user_1735506087685');
INSERT INTO public.users VALUES (31, 'user_1735506087684');
INSERT INTO public.users VALUES (32, 'user_1735506194984');
INSERT INTO public.users VALUES (33, 'user_1735506194983');
INSERT INTO public.users VALUES (34, 'user_1735506397871');
INSERT INTO public.users VALUES (35, 'user_1735506397870');
INSERT INTO public.users VALUES (36, 'user_1735506443741');
INSERT INTO public.users VALUES (37, 'user_1735506443740');
INSERT INTO public.users VALUES (38, 'user_1735506609688');
INSERT INTO public.users VALUES (39, 'user_1735506609687');
INSERT INTO public.users VALUES (40, 'user_1735506615510');
INSERT INTO public.users VALUES (41, 'user_1735506615509');
INSERT INTO public.users VALUES (42, 'user_173550661550w');
INSERT INTO public.users VALUES (43, 'user_1735506796248');
INSERT INTO public.users VALUES (44, 'user_1735506796247');
INSERT INTO public.users VALUES (45, 'user_1735506981719');
INSERT INTO public.users VALUES (46, 'user_1735506981718');
INSERT INTO public.users VALUES (47, 'user_1735507244712');
INSERT INTO public.users VALUES (48, 'user_1735507244711');
INSERT INTO public.users VALUES (49, 'user_1735507257200');
INSERT INTO public.users VALUES (50, 'user_1735507257199');
INSERT INTO public.users VALUES (51, 'user_1735507314363');
INSERT INTO public.users VALUES (52, 'user_1735507314362');
INSERT INTO public.users VALUES (53, 'user_1735507330724');
INSERT INTO public.users VALUES (54, 'user_1735507330723');
INSERT INTO public.users VALUES (55, 'user_1735507571155');
INSERT INTO public.users VALUES (56, 'user_1735507571154');
INSERT INTO public.users VALUES (57, 'user_1735508389527');
INSERT INTO public.users VALUES (58, 'user_1735508389526');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 135, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 58, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_name_key UNIQUE (name);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

