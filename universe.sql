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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: exploration; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.exploration (
    exploration_id integer NOT NULL,
    name character varying(30) NOT NULL,
    result text NOT NULL,
    year integer
);


ALTER TABLE public.exploration OWNER TO freecodecamp;

--
-- Name: exploration_exploration_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.exploration_exploration_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.exploration_exploration_id_seq OWNER TO freecodecamp;

--
-- Name: exploration_exploration_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.exploration_exploration_id_seq OWNED BY public.exploration.exploration_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    has_life boolean NOT NULL,
    age_in_millions_of_years integer,
    galaxy_types character varying(20)
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    density numeric(10,2),
    distance_from_earth numeric(10,2),
    age_in_millions_of_years integer NOT NULL,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    planet_types character varying(20) NOT NULL,
    description text,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    has_life boolean NOT NULL,
    age_in_millions_of_years integer,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: exploration exploration_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.exploration ALTER COLUMN exploration_id SET DEFAULT nextval('public.exploration_exploration_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: exploration; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.exploration VALUES (1, 'Exploration 1', 'Discovery of the possibility of living on this planet Mars', 1996);
INSERT INTO public.exploration VALUES (2, 'Exploration 2', 'Discovery of small other planets', 1999);
INSERT INTO public.exploration VALUES (3, 'Exploration 3', 'Dicovery of other moons', 2002);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Galaxy 1', true, 120, 'Type 1');
INSERT INTO public.galaxy VALUES (2, 'Galaxy 2', true, 180, 'Type 1');
INSERT INTO public.galaxy VALUES (3, 'Galaxy 3', true, 160, 'Type 2');
INSERT INTO public.galaxy VALUES (4, 'Galaxy 4', true, 160, 'Type 2');
INSERT INTO public.galaxy VALUES (5, 'Galaxy 5', false, 260, 'Type 3');
INSERT INTO public.galaxy VALUES (6, 'Galaxy 6', false, 280, 'Type 3');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon 1', 120.00, 300.00, 200, 1);
INSERT INTO public.moon VALUES (2, 'Moon 2', 10.00, 30.00, 254, 3);
INSERT INTO public.moon VALUES (3, 'Moon 3', 17.00, 378.00, 254, 5);
INSERT INTO public.moon VALUES (4, 'Moon 4', 170.00, 38.00, 285, 4);
INSERT INTO public.moon VALUES (5, 'Moon 5', 10.00, 380.00, 2854, 7);
INSERT INTO public.moon VALUES (6, 'Moon 6', 108.00, 3800.00, 284, 10);
INSERT INTO public.moon VALUES (7, 'Moon 7', 1038.00, 300.00, 2840, 1);
INSERT INTO public.moon VALUES (8, 'Moon 8', 138.00, 3010.00, 840, 9);
INSERT INTO public.moon VALUES (9, 'Moon 9', 1308.00, 301.00, 5840, 8);
INSERT INTO public.moon VALUES (10, 'Moon 10', 1388.00, 371.00, 50, 2);
INSERT INTO public.moon VALUES (11, 'Moon 11', 18.00, 3710.00, 5085, 6);
INSERT INTO public.moon VALUES (12, 'Moon 12', 108.00, 310.00, 505, 12);
INSERT INTO public.moon VALUES (13, 'Moon 13', 198.00, 380.00, 565, 1);
INSERT INTO public.moon VALUES (14, 'Moon 14', 158.00, 387.00, 595, 3);
INSERT INTO public.moon VALUES (15, 'Moon 15', 138.00, 3898.00, 5985, 7);
INSERT INTO public.moon VALUES (16, 'Moon 16', 1138.00, 38.00, 55, 4);
INSERT INTO public.moon VALUES (17, 'Moon 17', 118.00, 381.00, 505, 4);
INSERT INTO public.moon VALUES (18, 'Moon 18', 1718.00, 3810.00, 5050, 8);
INSERT INTO public.moon VALUES (19, 'Moon 19', 177.00, 384.00, 5098, 4);
INSERT INTO public.moon VALUES (20, 'Moon 20', 17.00, 34.00, 58, 3);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Planet 1', 'Type 1', 'Great planet for living', 1);
INSERT INTO public.planet VALUES (2, 'Planet 2', 'Type 1', 'Planet without oxygen', 2);
INSERT INTO public.planet VALUES (3, 'Planet 3', 'Type 2', 'Planet without oxygen', 2);
INSERT INTO public.planet VALUES (4, 'Planet 4', 'Type 1', 'Planet with oxygen', 5);
INSERT INTO public.planet VALUES (5, 'Planet5', 'Type 5', 'Planet with oxygen', 5);
INSERT INTO public.planet VALUES (6, 'Planet 6', 'Type 2', 'Planet without oxygen', 3);
INSERT INTO public.planet VALUES (7, 'Planet 7', 'Type 2', 'Planet without oxygen', 5);
INSERT INTO public.planet VALUES (8, 'Planet 8', 'Type 6', 'Planet without oxygen', 6);
INSERT INTO public.planet VALUES (9, 'Planet 9', 'Type 6', 'Planet without oxygen', 4);
INSERT INTO public.planet VALUES (10, 'Planet 10', 'Type 6', 'Planet with oxygen', 2);
INSERT INTO public.planet VALUES (11, 'Planet 11', 'Type 4', 'Planet with oxygen', 6);
INSERT INTO public.planet VALUES (12, 'Planet 12', 'Type 4', 'Planet with oxygen', 5);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Star 1', true, 150, 1);
INSERT INTO public.star VALUES (2, 'Star 2', true, 130, 3);
INSERT INTO public.star VALUES (3, 'Star 3', true, 320, 2);
INSERT INTO public.star VALUES (4, 'Star 4', true, 50, 4);
INSERT INTO public.star VALUES (5, 'Star 5', false, 20, 5);
INSERT INTO public.star VALUES (6, 'Star 6', false, 220, 6);


--
-- Name: exploration_exploration_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.exploration_exploration_id_seq', 1, false);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


--
-- Name: exploration exploration_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.exploration
    ADD CONSTRAINT exploration_name_key UNIQUE (name);


--
-- Name: exploration exploration_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.exploration
    ADD CONSTRAINT exploration_pkey PRIMARY KEY (exploration_id);


--
-- Name: galaxy galaxy_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: star name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT name UNIQUE (name);


--
-- Name: planet planet_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

