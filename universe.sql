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
-- Name: comet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.comet (
    comet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    distance_from_earth_km integer,
    age_in_millions_of_years numeric(6,1)
);


ALTER TABLE public.comet OWNER TO freecodecamp;

--
-- Name: comet_comet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.comet_comet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.comet_comet_id_seq OWNER TO freecodecamp;

--
-- Name: comet_comet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.comet_comet_id_seq OWNED BY public.comet.comet_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years numeric(6,1)
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
    description text,
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years numeric(6,1),
    planet_id integer NOT NULL
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
-- Name: moon_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_planet_id_seq OWNER TO freecodecamp;

--
-- Name: moon_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_planet_id_seq OWNED BY public.moon.planet_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    has_life boolean,
    is_spherical boolean,
    distance_from_earth_km integer,
    age_in_millions_of_years numeric(6,1),
    star_id integer NOT NULL
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
-- Name: planet_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_star_id_seq OWNER TO freecodecamp;

--
-- Name: planet_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_star_id_seq OWNED BY public.planet.star_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years numeric(6,1),
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: star_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_galaxy_id_seq OWNED BY public.star.galaxy_id;


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
-- Name: comet comet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet ALTER COLUMN comet_id SET DEFAULT nextval('public.comet_comet_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: moon planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN planet_id SET DEFAULT nextval('public.moon_planet_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: planet star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN star_id SET DEFAULT nextval('public.planet_star_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Name: star galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN galaxy_id SET DEFAULT nextval('public.star_galaxy_id_seq'::regclass);


--
-- Data for Name: comet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.comet VALUES (1, 'pcomet1', '', NULL, 4000.0);
INSERT INTO public.comet VALUES (3, 'comet2', '', NULL, 4000.0);
INSERT INTO public.comet VALUES (4, 'comet3', '', NULL, 4000.0);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'galaxy1', '', false, true, 130.0);
INSERT INTO public.galaxy VALUES (2, 'galaxy2', '', false, true, 130.0);
INSERT INTO public.galaxy VALUES (3, 'galaxy3', '', false, true, 130.0);
INSERT INTO public.galaxy VALUES (4, 'galaxy4', '', false, true, 130.0);
INSERT INTO public.galaxy VALUES (5, 'galaxy5', '', false, true, 130.0);
INSERT INTO public.galaxy VALUES (6, 'galaxy6', '', false, true, 130.0);
INSERT INTO public.galaxy VALUES (7, 'galaxy7', '', false, true, 130.0);
INSERT INTO public.galaxy VALUES (8, 'galaxy8', '', false, true, 130.0);
INSERT INTO public.galaxy VALUES (9, 'galaxy9', '', false, true, 130.0);
INSERT INTO public.galaxy VALUES (10, 'galaxy10', '', false, true, 130.0);
INSERT INTO public.galaxy VALUES (11, 'galaxy11', '', false, true, 130.0);
INSERT INTO public.galaxy VALUES (12, 'galaxy12', '', false, true, 130.0);
INSERT INTO public.galaxy VALUES (13, 'galaxy13', '', false, true, 130.0);
INSERT INTO public.galaxy VALUES (14, 'galaxy14', '', false, true, 130.0);
INSERT INTO public.galaxy VALUES (15, 'galaxy15', '', false, true, 130.0);
INSERT INTO public.galaxy VALUES (16, 'galaxy16', '', false, true, 130.0);
INSERT INTO public.galaxy VALUES (17, 'galaxy17', '', false, true, 130.0);
INSERT INTO public.galaxy VALUES (18, 'galaxy18', '', false, true, 130.0);
INSERT INTO public.galaxy VALUES (19, 'galaxy19', '', false, true, 130.0);
INSERT INTO public.galaxy VALUES (20, 'galaxy20', '', false, true, 130.0);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon1', '', false, true, 4000.0, 1);
INSERT INTO public.moon VALUES (2, 'moon2', '', false, true, 4000.0, 2);
INSERT INTO public.moon VALUES (3, 'moon3', '', false, true, 4000.0, 3);
INSERT INTO public.moon VALUES (4, 'moon4', '', false, true, 4000.0, 4);
INSERT INTO public.moon VALUES (5, 'moon5', '', false, true, 4000.0, 5);
INSERT INTO public.moon VALUES (6, 'moon6', '', false, true, 4000.0, 6);
INSERT INTO public.moon VALUES (7, 'moon7', '', false, true, 4000.0, 7);
INSERT INTO public.moon VALUES (8, 'moon8', '', false, true, 4000.0, 8);
INSERT INTO public.moon VALUES (9, 'moon9', '', false, true, 4000.0, 9);
INSERT INTO public.moon VALUES (10, 'moon10', '', false, true, 4000.0, 10);
INSERT INTO public.moon VALUES (11, 'moon11', '', false, true, 4000.0, 11);
INSERT INTO public.moon VALUES (12, 'moon12', '', false, true, 4000.0, 12);
INSERT INTO public.moon VALUES (13, 'moon13', '', false, true, 4000.0, 13);
INSERT INTO public.moon VALUES (14, 'moon14', '', false, true, 4000.0, 14);
INSERT INTO public.moon VALUES (15, 'moon15', '', false, true, 4000.0, 15);
INSERT INTO public.moon VALUES (16, 'moon16', '', false, true, 4000.0, 16);
INSERT INTO public.moon VALUES (17, 'moon17', '', false, true, 4000.0, 17);
INSERT INTO public.moon VALUES (18, 'moon18', '', false, true, 4000.0, 18);
INSERT INTO public.moon VALUES (19, 'moon19', '', false, true, 4000.0, 19);
INSERT INTO public.moon VALUES (20, 'moon20', '', false, true, 4000.0, 20);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'EARTH', '', true, true, NULL, 4000.0, 1);
INSERT INTO public.planet VALUES (2, 'planet1', '', false, true, NULL, 4000.0, 2);
INSERT INTO public.planet VALUES (3, 'planet2', '', false, true, NULL, 4000.0, 3);
INSERT INTO public.planet VALUES (4, 'planet3', '', false, true, NULL, 4000.0, 4);
INSERT INTO public.planet VALUES (5, 'planet4', '', false, true, NULL, 4000.0, 5);
INSERT INTO public.planet VALUES (6, 'planet5', '', false, true, NULL, 4000.0, 6);
INSERT INTO public.planet VALUES (7, 'planet6', '', false, true, NULL, 4000.0, 7);
INSERT INTO public.planet VALUES (8, 'planet7', '', false, true, NULL, 4000.0, 8);
INSERT INTO public.planet VALUES (9, 'planet8', '', false, true, NULL, 4000.0, 9);
INSERT INTO public.planet VALUES (10, 'planet9', '', false, true, NULL, 4000.0, 10);
INSERT INTO public.planet VALUES (11, 'planet10', '', false, true, NULL, 4000.0, 11);
INSERT INTO public.planet VALUES (12, 'planet11', '', false, true, NULL, 4000.0, 12);
INSERT INTO public.planet VALUES (13, 'planet12', '', false, true, NULL, 4000.0, 13);
INSERT INTO public.planet VALUES (14, 'planet13', '', false, true, NULL, 4000.0, 14);
INSERT INTO public.planet VALUES (16, 'planet14', '', false, true, NULL, 4000.0, 16);
INSERT INTO public.planet VALUES (17, 'planet15', '', false, true, NULL, 4000.0, 17);
INSERT INTO public.planet VALUES (18, 'planet16', '', false, true, NULL, 4000.0, 18);
INSERT INTO public.planet VALUES (19, 'planet17', '', false, true, NULL, 4000.0, 19);
INSERT INTO public.planet VALUES (20, 'planet18', '', false, true, NULL, 4000.0, 20);
INSERT INTO public.planet VALUES (15, 'planet101', '', false, true, NULL, 4000.0, 15);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'star1', 'a star', false, true, 1.0, 1);
INSERT INTO public.star VALUES (2, 'star2', '', false, true, 5.0, 2);
INSERT INTO public.star VALUES (3, 'star3', '', false, true, 5.0, 3);
INSERT INTO public.star VALUES (4, 'star4', '', false, true, 5.0, 4);
INSERT INTO public.star VALUES (5, 'star5', '', false, true, 5.0, 5);
INSERT INTO public.star VALUES (6, 'star6', '', false, true, 5.0, 6);
INSERT INTO public.star VALUES (8, 'star7', '', false, true, 5.0, 7);
INSERT INTO public.star VALUES (9, 'star8', '', false, true, 5.0, 8);
INSERT INTO public.star VALUES (10, 'star9', '', false, true, 5.0, 9);
INSERT INTO public.star VALUES (11, 'star10', '', false, true, 5.0, 10);
INSERT INTO public.star VALUES (12, 'star11', '', false, true, 5.0, 11);
INSERT INTO public.star VALUES (13, 'star12', '', false, true, 5.0, 12);
INSERT INTO public.star VALUES (14, 'star13', '', false, true, 5.0, 13);
INSERT INTO public.star VALUES (15, 'star14', '', false, true, 5.0, 14);
INSERT INTO public.star VALUES (16, 'star15', '', false, true, 5.0, 15);
INSERT INTO public.star VALUES (17, 'star16', '', false, true, 5.0, 16);
INSERT INTO public.star VALUES (18, 'star17', '', false, true, 5.0, 17);
INSERT INTO public.star VALUES (19, 'star18', '', false, true, 5.0, 18);
INSERT INTO public.star VALUES (20, 'star19', '', false, true, 5.0, 19);
INSERT INTO public.star VALUES (7, 'star20', '', false, true, 5.0, 20);


--
-- Name: comet_comet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.comet_comet_id_seq', 4, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 20, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: moon_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_planet_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 24, true);


--
-- Name: planet_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_star_id_seq', 23, true);


--
-- Name: star_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_galaxy_id_seq', 20, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 21, true);


--
-- Name: comet comet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet
    ADD CONSTRAINT comet_name_key UNIQUE (name);


--
-- Name: comet comet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet
    ADD CONSTRAINT comet_pkey PRIMARY KEY (comet_id);


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
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: planet star_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT star_id FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

