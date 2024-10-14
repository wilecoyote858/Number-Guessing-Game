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
    number_of_guesses integer DEFAULT 0 NOT NULL,
    secret_number integer
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
    username character varying(22) NOT NULL
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

INSERT INTO public.games VALUES (1, 1, 368, NULL);
INSERT INTO public.games VALUES (2, 1, 532, NULL);
INSERT INTO public.games VALUES (3, 2, 633, NULL);
INSERT INTO public.games VALUES (4, 2, 24, NULL);
INSERT INTO public.games VALUES (5, 1, 676, NULL);
INSERT INTO public.games VALUES (6, 1, 238, NULL);
INSERT INTO public.games VALUES (7, 1, 529, NULL);
INSERT INTO public.games VALUES (8, 12, 112, 111);
INSERT INTO public.games VALUES (9, 12, 623, 622);
INSERT INTO public.games VALUES (10, 13, 648, 647);
INSERT INTO public.games VALUES (11, 13, 702, 701);
INSERT INTO public.games VALUES (12, 12, 442, 439);
INSERT INTO public.games VALUES (13, 12, 720, 718);
INSERT INTO public.games VALUES (14, 12, 735, 734);
INSERT INTO public.games VALUES (15, 3, 15, 692);
INSERT INTO public.games VALUES (16, 14, 680, 679);
INSERT INTO public.games VALUES (17, 14, 221, 220);
INSERT INTO public.games VALUES (18, 15, 191, 190);
INSERT INTO public.games VALUES (19, 15, 427, 426);
INSERT INTO public.games VALUES (20, 14, 812, 809);
INSERT INTO public.games VALUES (21, 14, 994, 992);
INSERT INTO public.games VALUES (22, 14, 464, 463);
INSERT INTO public.games VALUES (23, 16, 518, 517);
INSERT INTO public.games VALUES (24, 16, 695, 694);
INSERT INTO public.games VALUES (25, 17, 527, 526);
INSERT INTO public.games VALUES (26, 17, 399, 398);
INSERT INTO public.games VALUES (27, 16, 256, 253);
INSERT INTO public.games VALUES (28, 16, 639, 637);
INSERT INTO public.games VALUES (29, 16, 476, 475);
INSERT INTO public.games VALUES (30, 18, 311, 310);
INSERT INTO public.games VALUES (31, 18, 596, 595);
INSERT INTO public.games VALUES (32, 19, 719, 718);
INSERT INTO public.games VALUES (33, 19, 483, 482);
INSERT INTO public.games VALUES (34, 18, 106, 103);
INSERT INTO public.games VALUES (35, 18, 619, 617);
INSERT INTO public.games VALUES (36, 18, 360, 359);
INSERT INTO public.games VALUES (37, 20, 395, 394);
INSERT INTO public.games VALUES (38, 20, 948, 947);
INSERT INTO public.games VALUES (39, 21, 861, 860);
INSERT INTO public.games VALUES (40, 21, 436, 435);
INSERT INTO public.games VALUES (41, 20, 247, 244);
INSERT INTO public.games VALUES (42, 20, 493, 491);
INSERT INTO public.games VALUES (43, 20, 386, 385);
INSERT INTO public.games VALUES (44, 3, 8, 384);
INSERT INTO public.games VALUES (45, 22, 635, 634);
INSERT INTO public.games VALUES (46, 22, 205, 204);
INSERT INTO public.games VALUES (47, 23, 680, 679);
INSERT INTO public.games VALUES (48, 23, 869, 868);
INSERT INTO public.games VALUES (49, 22, 350, 347);
INSERT INTO public.games VALUES (50, 22, 71, 69);
INSERT INTO public.games VALUES (51, 22, 22, 21);
INSERT INTO public.games VALUES (52, 24, 502, 501);
INSERT INTO public.games VALUES (53, 24, 263, 262);
INSERT INTO public.games VALUES (54, 25, 720, 719);
INSERT INTO public.games VALUES (55, 25, 765, 764);
INSERT INTO public.games VALUES (56, 24, 955, 952);
INSERT INTO public.games VALUES (57, 24, 71, 69);
INSERT INTO public.games VALUES (58, 24, 824, 823);
INSERT INTO public.games VALUES (59, 26, 432, 431);
INSERT INTO public.games VALUES (60, 26, 34, 33);
INSERT INTO public.games VALUES (61, 27, 803, 802);
INSERT INTO public.games VALUES (62, 27, 865, 864);
INSERT INTO public.games VALUES (63, 26, 29, 26);
INSERT INTO public.games VALUES (64, 26, 29, 27);
INSERT INTO public.games VALUES (65, 26, 584, 583);
INSERT INTO public.games VALUES (66, 28, 214, 213);
INSERT INTO public.games VALUES (67, 28, 914, 913);
INSERT INTO public.games VALUES (68, 29, 355, 354);
INSERT INTO public.games VALUES (69, 29, 127, 126);
INSERT INTO public.games VALUES (70, 28, 269, 266);
INSERT INTO public.games VALUES (71, 28, 102, 100);
INSERT INTO public.games VALUES (72, 28, 269, 268);
INSERT INTO public.games VALUES (73, 3, 15, 955);
INSERT INTO public.games VALUES (74, 31, 442, 441);
INSERT INTO public.games VALUES (75, 31, 175, 174);
INSERT INTO public.games VALUES (76, 32, 710, 709);
INSERT INTO public.games VALUES (77, 32, 657, 656);
INSERT INTO public.games VALUES (78, 31, 352, 349);
INSERT INTO public.games VALUES (79, 31, 798, 796);
INSERT INTO public.games VALUES (80, 31, 417, 416);
INSERT INTO public.games VALUES (81, 33, 545, 544);
INSERT INTO public.games VALUES (82, 33, 278, 277);
INSERT INTO public.games VALUES (83, 34, 336, 335);
INSERT INTO public.games VALUES (84, 34, 27, 26);
INSERT INTO public.games VALUES (85, 33, 587, 584);
INSERT INTO public.games VALUES (86, 33, 985, 983);
INSERT INTO public.games VALUES (87, 33, 806, 805);
INSERT INTO public.games VALUES (88, 3, 13, 114);
INSERT INTO public.games VALUES (89, 35, 983, 982);
INSERT INTO public.games VALUES (90, 35, 219, 218);
INSERT INTO public.games VALUES (91, 36, 616, 615);
INSERT INTO public.games VALUES (92, 36, 938, 937);
INSERT INTO public.games VALUES (93, 35, 368, 365);
INSERT INTO public.games VALUES (94, 35, 584, 582);
INSERT INTO public.games VALUES (95, 35, 16, 15);
INSERT INTO public.games VALUES (96, 3, 10, 283);
INSERT INTO public.games VALUES (97, 37, 492, 491);
INSERT INTO public.games VALUES (98, 37, 494, 493);
INSERT INTO public.games VALUES (99, 38, 669, 668);
INSERT INTO public.games VALUES (100, 38, 654, 653);
INSERT INTO public.games VALUES (101, 37, 362, 359);
INSERT INTO public.games VALUES (102, 37, 266, 264);
INSERT INTO public.games VALUES (103, 37, 768, 767);
INSERT INTO public.games VALUES (104, 39, 268, 267);
INSERT INTO public.games VALUES (105, 39, 732, 731);
INSERT INTO public.games VALUES (106, 40, 960, 959);
INSERT INTO public.games VALUES (107, 40, 988, 987);
INSERT INTO public.games VALUES (108, 39, 697, 694);
INSERT INTO public.games VALUES (109, 39, 122, 120);
INSERT INTO public.games VALUES (110, 39, 307, 306);
INSERT INTO public.games VALUES (111, 41, 322, 321);
INSERT INTO public.games VALUES (112, 41, 830, 829);
INSERT INTO public.games VALUES (113, 42, 747, 746);
INSERT INTO public.games VALUES (114, 42, 234, 233);
INSERT INTO public.games VALUES (115, 41, 402, 399);
INSERT INTO public.games VALUES (116, 41, 683, 681);
INSERT INTO public.games VALUES (117, 41, 199, 198);
INSERT INTO public.games VALUES (118, 43, 532, 531);
INSERT INTO public.games VALUES (119, 43, 713, 712);
INSERT INTO public.games VALUES (120, 44, 885, 884);
INSERT INTO public.games VALUES (121, 44, 809, 808);
INSERT INTO public.games VALUES (122, 43, 374, 371);
INSERT INTO public.games VALUES (123, 43, 669, 667);
INSERT INTO public.games VALUES (124, 43, 588, 587);
INSERT INTO public.games VALUES (125, 45, 198, 197);
INSERT INTO public.games VALUES (126, 45, 850, 849);
INSERT INTO public.games VALUES (127, 46, 709, 708);
INSERT INTO public.games VALUES (128, 46, 793, 792);
INSERT INTO public.games VALUES (129, 45, 713, 710);
INSERT INTO public.games VALUES (130, 45, 848, 846);
INSERT INTO public.games VALUES (131, 45, 892, 891);
INSERT INTO public.games VALUES (132, 47, 498, 497);
INSERT INTO public.games VALUES (133, 47, 304, 303);
INSERT INTO public.games VALUES (134, 48, 221, 220);
INSERT INTO public.games VALUES (135, 48, 10, 9);
INSERT INTO public.games VALUES (136, 47, 392, 389);
INSERT INTO public.games VALUES (137, 47, 521, 519);
INSERT INTO public.games VALUES (138, 47, 974, 973);
INSERT INTO public.games VALUES (139, 49, 893, 892);
INSERT INTO public.games VALUES (140, 49, 183, 182);
INSERT INTO public.games VALUES (141, 50, 442, 441);
INSERT INTO public.games VALUES (142, 50, 656, 655);
INSERT INTO public.games VALUES (143, 49, 879, 876);
INSERT INTO public.games VALUES (144, 49, 501, 499);
INSERT INTO public.games VALUES (145, 49, 98, 97);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (2, 'user_1728880301609');
INSERT INTO public.users VALUES (1, 'user_1728880301610');
INSERT INTO public.users VALUES (3, 'Mike');
INSERT INTO public.users VALUES (4, 'user_1728881443165');
INSERT INTO public.users VALUES (5, 'user_1728881443164');
INSERT INTO public.users VALUES (6, 'MIke');
INSERT INTO public.users VALUES (7, 'mike');
INSERT INTO public.users VALUES (8, 'user_1728881886683');
INSERT INTO public.users VALUES (9, 'user_1728881886682');
INSERT INTO public.users VALUES (10, 'user_1728881962075');
INSERT INTO public.users VALUES (11, 'user_1728881962074');
INSERT INTO public.users VALUES (12, 'user_1728883081316');
INSERT INTO public.users VALUES (13, 'user_1728883081315');
INSERT INTO public.users VALUES (14, 'user_1728883220314');
INSERT INTO public.users VALUES (15, 'user_1728883220312');
INSERT INTO public.users VALUES (16, 'user_1728883285167');
INSERT INTO public.users VALUES (17, 'user_1728883285166');
INSERT INTO public.users VALUES (18, 'user_1728883364514');
INSERT INTO public.users VALUES (19, 'user_1728883364513');
INSERT INTO public.users VALUES (20, 'user_1728883474537');
INSERT INTO public.users VALUES (21, 'user_1728883474536');
INSERT INTO public.users VALUES (22, 'user_1728883526194');
INSERT INTO public.users VALUES (23, 'user_1728883526193');
INSERT INTO public.users VALUES (24, 'user_1728883846620');
INSERT INTO public.users VALUES (25, 'user_1728883846619');
INSERT INTO public.users VALUES (26, 'user_1728883865736');
INSERT INTO public.users VALUES (27, 'user_1728883865735');
INSERT INTO public.users VALUES (28, 'user_1728883942750');
INSERT INTO public.users VALUES (29, 'user_1728883942749');
INSERT INTO public.users VALUES (30, 'MIkes');
INSERT INTO public.users VALUES (31, 'user_1728884265043');
INSERT INTO public.users VALUES (32, 'user_1728884265042');
INSERT INTO public.users VALUES (33, 'user_1728884307746');
INSERT INTO public.users VALUES (34, 'user_1728884307745');
INSERT INTO public.users VALUES (35, 'user_1728884440545');
INSERT INTO public.users VALUES (36, 'user_1728884440544');
INSERT INTO public.users VALUES (37, 'user_1728884557179');
INSERT INTO public.users VALUES (38, 'user_1728884557178');
INSERT INTO public.users VALUES (39, 'user_1728884649993');
INSERT INTO public.users VALUES (40, 'user_1728884649992');
INSERT INTO public.users VALUES (41, 'user_1728884857163');
INSERT INTO public.users VALUES (42, 'user_1728884857162');
INSERT INTO public.users VALUES (43, 'user_1728884958727');
INSERT INTO public.users VALUES (44, 'user_1728884958726');
INSERT INTO public.users VALUES (45, 'user_1728885041622');
INSERT INTO public.users VALUES (46, 'user_1728885041621');
INSERT INTO public.users VALUES (47, 'user_1728885078585');
INSERT INTO public.users VALUES (48, 'user_1728885078584');
INSERT INTO public.users VALUES (49, 'user_1728885108580');
INSERT INTO public.users VALUES (50, 'user_1728885108579');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 145, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 50, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- PostgreSQL database dump complete
--

