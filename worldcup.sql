--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
    round character varying(30) NOT NULL,
    year integer NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
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
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(20) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (11, 'Final', 2018, 271, 272, 4, 2);
INSERT INTO public.games VALUES (12, 'Third Place', 2018, 273, 274, 2, 0);
INSERT INTO public.games VALUES (13, 'Semi-Final', 2018, 272, 274, 2, 1);
INSERT INTO public.games VALUES (14, 'Semi-Final', 2018, 271, 273, 1, 0);
INSERT INTO public.games VALUES (15, 'Quarter-Final', 2018, 272, 275, 3, 2);
INSERT INTO public.games VALUES (16, 'Quarter-Final', 2018, 274, 276, 2, 0);
INSERT INTO public.games VALUES (17, 'Quarter-Final', 2018, 273, 277, 2, 1);
INSERT INTO public.games VALUES (18, 'Quarter-Final', 2018, 271, 278, 2, 0);
INSERT INTO public.games VALUES (19, 'Eighth-Final', 2018, 274, 279, 2, 1);
INSERT INTO public.games VALUES (20, 'Eighth-Final', 2018, 276, 280, 1, 0);
INSERT INTO public.games VALUES (21, 'Eighth-Final', 2018, 273, 281, 3, 2);
INSERT INTO public.games VALUES (22, 'Eighth-Final', 2018, 277, 282, 2, 0);
INSERT INTO public.games VALUES (23, 'Eighth-Final', 2018, 272, 283, 2, 1);
INSERT INTO public.games VALUES (24, 'Eighth-Final', 2018, 275, 284, 2, 1);
INSERT INTO public.games VALUES (25, 'Eighth-Final', 2018, 278, 285, 2, 1);
INSERT INTO public.games VALUES (26, 'Eighth-Final', 2018, 271, 286, 4, 3);
INSERT INTO public.games VALUES (27, 'Final', 2014, 287, 286, 1, 0);
INSERT INTO public.games VALUES (28, 'Third Place', 2014, 288, 277, 3, 0);
INSERT INTO public.games VALUES (29, 'Semi-Final', 2014, 286, 288, 1, 0);
INSERT INTO public.games VALUES (30, 'Semi-Final', 2014, 287, 277, 7, 1);
INSERT INTO public.games VALUES (31, 'Quarter-Final', 2014, 288, 289, 1, 0);
INSERT INTO public.games VALUES (32, 'Quarter-Final', 2014, 286, 273, 1, 0);
INSERT INTO public.games VALUES (33, 'Quarter-Final', 2014, 277, 279, 2, 1);
INSERT INTO public.games VALUES (34, 'Quarter-Final', 2014, 287, 271, 1, 0);
INSERT INTO public.games VALUES (35, 'Eighth-Final', 2014, 277, 290, 2, 1);
INSERT INTO public.games VALUES (36, 'Eighth-Final', 2014, 279, 278, 2, 0);
INSERT INTO public.games VALUES (37, 'Eighth-Final', 2014, 271, 291, 2, 0);
INSERT INTO public.games VALUES (38, 'Eighth-Final', 2014, 287, 292, 2, 1);
INSERT INTO public.games VALUES (39, 'Eighth-Final', 2014, 288, 282, 2, 1);
INSERT INTO public.games VALUES (40, 'Eighth-Final', 2014, 289, 293, 2, 1);
INSERT INTO public.games VALUES (41, 'Eighth-Final', 2014, 286, 280, 1, 0);
INSERT INTO public.games VALUES (42, 'Eighth-Final', 2014, 273, 294, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (271, 'France');
INSERT INTO public.teams VALUES (272, 'Croatia');
INSERT INTO public.teams VALUES (273, 'Belgium');
INSERT INTO public.teams VALUES (274, 'England');
INSERT INTO public.teams VALUES (275, 'Russia');
INSERT INTO public.teams VALUES (276, 'Sweden');
INSERT INTO public.teams VALUES (277, 'Brazil');
INSERT INTO public.teams VALUES (278, 'Uruguay');
INSERT INTO public.teams VALUES (279, 'Colombia');
INSERT INTO public.teams VALUES (280, 'Switzerland');
INSERT INTO public.teams VALUES (281, 'Japan');
INSERT INTO public.teams VALUES (282, 'Mexico');
INSERT INTO public.teams VALUES (283, 'Denmark');
INSERT INTO public.teams VALUES (284, 'Spain');
INSERT INTO public.teams VALUES (285, 'Portugal');
INSERT INTO public.teams VALUES (286, 'Argentina');
INSERT INTO public.teams VALUES (287, 'Germany');
INSERT INTO public.teams VALUES (288, 'Netherlands');
INSERT INTO public.teams VALUES (289, 'Costa Rica');
INSERT INTO public.teams VALUES (290, 'Chile');
INSERT INTO public.teams VALUES (291, 'Nigeria');
INSERT INTO public.teams VALUES (292, 'Algeria');
INSERT INTO public.teams VALUES (293, 'Greece');
INSERT INTO public.teams VALUES (294, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 42, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 294, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

