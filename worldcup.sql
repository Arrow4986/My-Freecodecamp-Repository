--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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
    year integer NOT NULL,
    round character varying(30) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    opponent_goals integer NOT NULL,
    winner_goals integer NOT NULL
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
    name character varying(50) NOT NULL
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

INSERT INTO public.games VALUES (289, 2018, 'Final', 1124, 1125, 2, 4);
INSERT INTO public.games VALUES (290, 2018, 'Third Place', 1126, 1127, 0, 2);
INSERT INTO public.games VALUES (291, 2018, 'Semi-Final', 1125, 1127, 1, 2);
INSERT INTO public.games VALUES (292, 2018, 'Semi-Final', 1124, 1126, 0, 1);
INSERT INTO public.games VALUES (293, 2018, 'Quarter-Final', 1125, 1133, 2, 3);
INSERT INTO public.games VALUES (294, 2018, 'Quarter-Final', 1127, 1135, 0, 2);
INSERT INTO public.games VALUES (295, 2018, 'Quarter-Final', 1126, 1137, 1, 2);
INSERT INTO public.games VALUES (296, 2018, 'Quarter-Final', 1124, 1139, 0, 2);
INSERT INTO public.games VALUES (297, 2018, 'Eighth-Final', 1127, 1141, 1, 2);
INSERT INTO public.games VALUES (298, 2018, 'Eighth-Final', 1135, 1143, 0, 1);
INSERT INTO public.games VALUES (299, 2018, 'Eighth-Final', 1126, 1145, 2, 3);
INSERT INTO public.games VALUES (300, 2018, 'Eighth-Final', 1137, 1147, 0, 2);
INSERT INTO public.games VALUES (301, 2018, 'Eighth-Final', 1125, 1149, 1, 2);
INSERT INTO public.games VALUES (302, 2018, 'Eighth-Final', 1133, 1151, 1, 2);
INSERT INTO public.games VALUES (303, 2018, 'Eighth-Final', 1139, 1153, 1, 2);
INSERT INTO public.games VALUES (304, 2018, 'Eighth-Final', 1124, 1155, 3, 4);
INSERT INTO public.games VALUES (305, 2014, 'Final', 1156, 1155, 0, 1);
INSERT INTO public.games VALUES (306, 2014, 'Third Place', 1158, 1137, 0, 3);
INSERT INTO public.games VALUES (307, 2014, 'Semi-Final', 1155, 1158, 0, 1);
INSERT INTO public.games VALUES (308, 2014, 'Semi-Final', 1156, 1137, 1, 7);
INSERT INTO public.games VALUES (309, 2014, 'Quarter-Final', 1158, 1165, 0, 1);
INSERT INTO public.games VALUES (310, 2014, 'Quarter-Final', 1155, 1126, 0, 1);
INSERT INTO public.games VALUES (311, 2014, 'Quarter-Final', 1137, 1141, 1, 2);
INSERT INTO public.games VALUES (312, 2014, 'Quarter-Final', 1156, 1124, 0, 1);
INSERT INTO public.games VALUES (313, 2014, 'Eighth-Final', 1137, 1173, 1, 2);
INSERT INTO public.games VALUES (314, 2014, 'Eighth-Final', 1141, 1139, 0, 2);
INSERT INTO public.games VALUES (315, 2014, 'Eighth-Final', 1124, 1177, 0, 2);
INSERT INTO public.games VALUES (316, 2014, 'Eighth-Final', 1156, 1179, 1, 2);
INSERT INTO public.games VALUES (317, 2014, 'Eighth-Final', 1158, 1147, 1, 2);
INSERT INTO public.games VALUES (318, 2014, 'Eighth-Final', 1165, 1183, 1, 2);
INSERT INTO public.games VALUES (319, 2014, 'Eighth-Final', 1155, 1143, 0, 1);
INSERT INTO public.games VALUES (320, 2014, 'Eighth-Final', 1126, 1187, 1, 2);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (1124, 'France');
INSERT INTO public.teams VALUES (1125, 'Croatia');
INSERT INTO public.teams VALUES (1126, 'Belgium');
INSERT INTO public.teams VALUES (1127, 'England');
INSERT INTO public.teams VALUES (1133, 'Russia');
INSERT INTO public.teams VALUES (1135, 'Sweden');
INSERT INTO public.teams VALUES (1137, 'Brazil');
INSERT INTO public.teams VALUES (1139, 'Uruguay');
INSERT INTO public.teams VALUES (1141, 'Colombia');
INSERT INTO public.teams VALUES (1143, 'Switzerland');
INSERT INTO public.teams VALUES (1145, 'Japan');
INSERT INTO public.teams VALUES (1147, 'Mexico');
INSERT INTO public.teams VALUES (1149, 'Denmark');
INSERT INTO public.teams VALUES (1151, 'Spain');
INSERT INTO public.teams VALUES (1153, 'Portugal');
INSERT INTO public.teams VALUES (1155, 'Argentina');
INSERT INTO public.teams VALUES (1156, 'Germany');
INSERT INTO public.teams VALUES (1158, 'Netherlands');
INSERT INTO public.teams VALUES (1165, 'Costa Rica');
INSERT INTO public.teams VALUES (1173, 'Chile');
INSERT INTO public.teams VALUES (1177, 'Nigeria');
INSERT INTO public.teams VALUES (1179, 'Algeria');
INSERT INTO public.teams VALUES (1183, 'Greece');
INSERT INTO public.teams VALUES (1187, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 320, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 1187, true);


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

