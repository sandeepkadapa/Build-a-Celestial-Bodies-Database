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
-- Name: earth; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.earth (
    earth_id integer NOT NULL,
    name character varying(30) NOT NULL,
    distance_from_earth numeric NOT NULL,
    has_life boolean,
    is_spherical boolean
);


ALTER TABLE public.earth OWNER TO freecodecamp;

--
-- Name: earth_earth_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.earth_earth_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.earth_earth_id_seq OWNER TO freecodecamp;

--
-- Name: earth_earth_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.earth_earth_id_seq OWNED BY public.earth.earth_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    star_id integer NOT NULL,
    description text,
    name character varying(30) NOT NULL,
    distance_from_earth numeric
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
    distance_from_earth numeric,
    has_life boolean,
    is_spherical boolean
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
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    distance_from_earth numeric,
    has_life boolean
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
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    distance_from_earth numeric,
    has_life boolean
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
-- Name: earth earth_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.earth ALTER COLUMN earth_id SET DEFAULT nextval('public.earth_earth_id_seq'::regclass);


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
-- Data for Name: earth; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.earth VALUES (1, 'A', 1, false, false);
INSERT INTO public.earth VALUES (2, 'B', 2, false, false);
INSERT INTO public.earth VALUES (3, 'C', 3, false, false);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 1, 'A', 'm gal', 1);
INSERT INTO public.galaxy VALUES (2, 2, 'B', 'n gal', 2);
INSERT INTO public.galaxy VALUES (3, 3, 'C', 'o gal', 3);
INSERT INTO public.galaxy VALUES (4, 4, 'D', 'p gal', 4);
INSERT INTO public.galaxy VALUES (5, 5, 'E', 'q gal', 5);
INSERT INTO public.galaxy VALUES (6, 6, 'F', 'r gal', 6);
INSERT INTO public.galaxy VALUES (7, 7, 'G', 's gal', 7);
INSERT INTO public.galaxy VALUES (8, 8, 'H', 't gal', 8);
INSERT INTO public.galaxy VALUES (9, 9, 'I', 'u gal', 9);
INSERT INTO public.galaxy VALUES (10, 10, 'J', 'v gal', 10);
INSERT INTO public.galaxy VALUES (11, 11, 'K', 'w gal', 11);
INSERT INTO public.galaxy VALUES (12, 12, 'L', 'x gal', 12);
INSERT INTO public.galaxy VALUES (13, 13, 'M', 'y gal', 13);
INSERT INTO public.galaxy VALUES (14, 14, 'N', 'z gal', 14);
INSERT INTO public.galaxy VALUES (15, 15, 'O', 'a gal', 15);
INSERT INTO public.galaxy VALUES (16, 16, 'P', 'b gal', 16);
INSERT INTO public.galaxy VALUES (17, 17, 'Q', 'c gal', 17);
INSERT INTO public.galaxy VALUES (18, 18, 'R', 'd gal', 18);
INSERT INTO public.galaxy VALUES (19, 19, 'S', 'e gal', 19);
INSERT INTO public.galaxy VALUES (20, 20, 'T', 'f gal', 20);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'A', 1, false, false);
INSERT INTO public.moon VALUES (2, 'B', 2, false, false);
INSERT INTO public.moon VALUES (3, 'C', 3, false, false);
INSERT INTO public.moon VALUES (4, 'D', 4, false, false);
INSERT INTO public.moon VALUES (5, 'E', 5, false, false);
INSERT INTO public.moon VALUES (6, 'F', 6, false, false);
INSERT INTO public.moon VALUES (7, 'G', 7, false, false);
INSERT INTO public.moon VALUES (8, 'H', 8, false, false);
INSERT INTO public.moon VALUES (9, 'I', 9, false, false);
INSERT INTO public.moon VALUES (10, 'J', 10, false, false);
INSERT INTO public.moon VALUES (11, 'K', 11, false, false);
INSERT INTO public.moon VALUES (12, 'L', 12, false, false);
INSERT INTO public.moon VALUES (13, 'M', 13, false, false);
INSERT INTO public.moon VALUES (14, 'N', 14, false, false);
INSERT INTO public.moon VALUES (15, 'O', 15, false, false);
INSERT INTO public.moon VALUES (16, 'P', 16, false, false);
INSERT INTO public.moon VALUES (17, 'Q', 17, false, false);
INSERT INTO public.moon VALUES (18, 'R', 18, false, false);
INSERT INTO public.moon VALUES (19, 'S', 19, false, false);
INSERT INTO public.moon VALUES (20, 'T', 20, false, false);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 1, 'A star', 1, false);
INSERT INTO public.planet VALUES (2, 2, 'B star', 2, false);
INSERT INTO public.planet VALUES (3, 3, 'C star', 3, false);
INSERT INTO public.planet VALUES (4, 4, 'D star', 4, false);
INSERT INTO public.planet VALUES (5, 5, 'E star', 5, false);
INSERT INTO public.planet VALUES (6, 6, 'F star', 6, false);
INSERT INTO public.planet VALUES (7, 7, 'H star', 7, false);
INSERT INTO public.planet VALUES (8, 8, 'I star', 8, false);
INSERT INTO public.planet VALUES (9, 9, 'J star', 9, false);
INSERT INTO public.planet VALUES (10, 10, 'K star', 10, false);
INSERT INTO public.planet VALUES (11, 11, 'L star', 11, false);
INSERT INTO public.planet VALUES (12, 12, 'M star', 12, false);
INSERT INTO public.planet VALUES (13, 13, 'O star', 13, false);
INSERT INTO public.planet VALUES (14, 14, 'P star', 14, false);
INSERT INTO public.planet VALUES (15, 15, 'Q star', 15, false);
INSERT INTO public.planet VALUES (16, 16, 'R star', 16, false);
INSERT INTO public.planet VALUES (17, 17, 'S star', 17, false);
INSERT INTO public.planet VALUES (18, 18, 'T star', 18, false);
INSERT INTO public.planet VALUES (19, 19, 'U star', 19, false);
INSERT INTO public.planet VALUES (20, 20, 'V star', 20, false);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 1, 'A star', 1, false);
INSERT INTO public.star VALUES (2, 2, 'B star', 2, false);
INSERT INTO public.star VALUES (3, 3, 'C star', 3, false);
INSERT INTO public.star VALUES (4, 4, 'D star', 4, false);
INSERT INTO public.star VALUES (5, 5, 'E star', 5, false);
INSERT INTO public.star VALUES (6, 6, 'F star', 6, false);
INSERT INTO public.star VALUES (7, 7, 'H star', 7, false);
INSERT INTO public.star VALUES (8, 8, 'I star', 8, false);
INSERT INTO public.star VALUES (9, 9, 'J star', 9, false);
INSERT INTO public.star VALUES (10, 10, 'K star', 10, false);
INSERT INTO public.star VALUES (11, 11, 'L star', 11, false);
INSERT INTO public.star VALUES (12, 12, 'M star', 12, false);
INSERT INTO public.star VALUES (13, 13, 'O star', 13, false);
INSERT INTO public.star VALUES (14, 14, 'P star', 14, false);
INSERT INTO public.star VALUES (15, 15, 'Q star', 15, false);
INSERT INTO public.star VALUES (16, 16, 'R star', 16, false);
INSERT INTO public.star VALUES (17, 17, 'S star', 17, false);
INSERT INTO public.star VALUES (18, 18, 'T star', 18, false);
INSERT INTO public.star VALUES (19, 19, 'U star', 19, false);
INSERT INTO public.star VALUES (20, 20, 'V star', 20, false);


--
-- Name: earth_earth_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.earth_earth_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 20, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 20, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 20, true);


--
-- Name: earth earth_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.earth
    ADD CONSTRAINT earth_name_key UNIQUE (name);


--
-- Name: earth earth_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.earth
    ADD CONSTRAINT earth_pkey PRIMARY KEY (earth_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy galaxy_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_star_id_key UNIQUE (star_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_moon_id_key UNIQUE (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_planet_id_key UNIQUE (planet_id);


--
-- Name: moon moon_moon_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_fkey FOREIGN KEY (moon_id) REFERENCES public.planet(moon_id);


--
-- Name: planet planet_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.star(planet_id);


--
-- Name: star star_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.galaxy(star_id);


--
-- PostgreSQL database dump complete
--

