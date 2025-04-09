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
-- Name: continent; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.continent (
    is_spherical boolean,
    has_life boolean,
    name character varying(25),
    age_in_millions_of_years integer NOT NULL,
    area integer NOT NULL,
    description text,
    temprature numeric(5,2),
    planet_id integer,
    continent_id integer NOT NULL
);


ALTER TABLE public.continent OWNER TO freecodecamp;

--
-- Name: continent_continent_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.continent_continent_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.continent_continent_id_seq OWNER TO freecodecamp;

--
-- Name: continent_continent_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.continent_continent_id_seq OWNED BY public.continent.continent_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(25) NOT NULL,
    distance_from_earth integer,
    age_in_millions_of_years_ integer,
    temprature numeric(7,2),
    galaxy_types text,
    has_life boolean NOT NULL,
    is_spherical boolean
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
    name character varying(25) NOT NULL,
    distance_from_earth integer,
    age_in_millions_of_years_ integer,
    temprature numeric(3,2),
    description text,
    has_life boolean NOT NULL,
    planet_id integer,
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
    name character varying(25) NOT NULL,
    age_in_millions_of_years_ integer,
    distance_from_earth integer,
    temprature numeric(5,2),
    planet_types text,
    has_life boolean NOT NULL,
    star_id integer,
    is_spherical boolean
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
    name character varying(25) NOT NULL,
    distance_from_earth integer,
    age_in_millions_of_years_ integer,
    temprature numeric(7,2),
    star_types text,
    has_life boolean NOT NULL,
    galaxy_id integer,
    is_spherical boolean
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
-- Name: continent continent_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.continent ALTER COLUMN continent_id SET DEFAULT nextval('public.continent_continent_id_seq'::regclass);


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
-- Data for Name: continent; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.continent VALUES (true, true, 'africa', 1000, 10000000, 'very large', 100.15, NULL, 1);
INSERT INTO public.continent VALUES (false, true, 'europe', 1000, 500000, 'small', 102.15, NULL, 2);
INSERT INTO public.continent VALUES (false, true, 'asia', 2000, 30000000, 'very large', 97.15, NULL, 3);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'milkiy way', 30000000, 10000, 4.15, 'extremely large', true, true);
INSERT INTO public.galaxy VALUES (2, 'andromeda', 30020000, 100000, 78.15, 'spheric', true, false);
INSERT INTO public.galaxy VALUES (3, 'magellanic clouds', 60050000, 600000, 178.15, 'oval', true, false);
INSERT INTO public.galaxy VALUES (4, 'pinwheel', 50040000, 500000, 1179.15, 'oval', false, false);
INSERT INTO public.galaxy VALUES (5, 'whirlpool', 40030000, 400000, 1479.15, 'vortex like', false, true);
INSERT INTO public.galaxy VALUES (6, 'sombreo', 30064000, 3200000, 1899.15, 'blue', false, true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'mars_moon', 11290, 1687, 1.19, 'medium', false, 2, true);
INSERT INTO public.moon VALUES (2, 'mars moon two', 11290, 1687, 1.19, 'medium', false, 2, true);
INSERT INTO public.moon VALUES (3, 'earth moon two', 11290, 1687, 1.19, 'large', false, 2, true);
INSERT INTO public.moon VALUES (4, 'earth moon four', 11290, 1687, 1.19, 'large', false, 2, true);
INSERT INTO public.moon VALUES (5, 'moon three', 4567, 1234, 9.99, 'four', true, 2, true);
INSERT INTO public.moon VALUES (6, 'jupiter moon five', 11290, 1687, 1.19, 'large', false, 2, true);
INSERT INTO public.moon VALUES (7, 'moon five', 4567, 1234, 9.99, 'four', true, 2, true);
INSERT INTO public.moon VALUES (8, 'jupiter moon eight', 11290, 1687, 1.29, 'medium', false, 2, true);
INSERT INTO public.moon VALUES (9, 'moon seven', 4567, 1234, 9.99, 'four', true, 2, true);
INSERT INTO public.moon VALUES (10, 'jupiter moon six', 9874, 7894, 0.99, 'green', false, 2, true);
INSERT INTO public.moon VALUES (11, 'jupiter moon nine', 11290, 16888, 1.29, 'medium', false, 2, false);
INSERT INTO public.moon VALUES (12, 'moon eight', 4567, 1234, 9.99, 'four', true, 2, true);
INSERT INTO public.moon VALUES (13, 'jupiter moon seven', 9874, 7894, 4.99, 'bluee', false, 3, true);
INSERT INTO public.moon VALUES (19, 'jupiter moon foure', 11290, 16888, 1.29, 'medium', false, 3, false);
INSERT INTO public.moon VALUES (20, 'moon fivee', 4567, 1234, 9.99, 'four', true, 3, true);
INSERT INTO public.moon VALUES (21, 'jupiter moon sixx', 9874, 7894, 4.99, 'bluee', false, 3, true);
INSERT INTO public.moon VALUES (22, 'jupiter moon une', 11290, 16888, 1.29, 'medium', false, 3, false);
INSERT INTO public.moon VALUES (23, 'moon deux', 4567, 1234, 9.99, 'four', true, 3, true);
INSERT INTO public.moon VALUES (24, 'jupiter moon Trois', 9874, 7894, 4.99, 'bluee', false, 3, true);
INSERT INTO public.moon VALUES (25, 'moon une', 11290, 16888, 1.29, 'medium', false, 3, false);
INSERT INTO public.moon VALUES (26, 'moon ten', 4567, 1234, 9.99, 'four', true, 3, true);
INSERT INTO public.moon VALUES (27, 'moon Trois', 9874, 7894, 4.99, 'bluee', false, 3, true);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'earth', 4600, 0, 100.99, 'home', true, 1, true);
INSERT INTO public.planet VALUES (2, 'venus', 4607, 22, 900.99, 'home', false, 1, true);
INSERT INTO public.planet VALUES (3, 'mercury', 4607, 90, 100.99, 'hot', false, 1, true);
INSERT INTO public.planet VALUES (4, 'mars', 4607, 90, 100.99, 'hot', false, 1, true);
INSERT INTO public.planet VALUES (5, 'jupiter', 4677, 1190, 100.99, 'large', false, 2, true);
INSERT INTO public.planet VALUES (6, 'saturn', 5677, 1290, 100.99, 'cold', false, 2, true);
INSERT INTO public.planet VALUES (7, 'neptune', 7677, 2290, 100.99, 'rings', false, 2, true);
INSERT INTO public.planet VALUES (8, 'pluto', 1677, 3290, 10.99, 'small', false, 2, true);
INSERT INTO public.planet VALUES (9, 'urans', 1677, 3290, 10.99, 'small', false, 2, true);
INSERT INTO public.planet VALUES (10, 'exoOne', 1677, 10290, 10.99, 'very small', false, 2, true);
INSERT INTO public.planet VALUES (11, 'exoTwo', 1687, 11290, 10.99, 'very small', false, 2, true);
INSERT INTO public.planet VALUES (12, 'exoThree', 1687, 11290, 10.19, 'medium', false, 2, false);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'sun', 150000000, 9800000, 90999.00, 'yellow', false, 4, true);
INSERT INTO public.star VALUES (2, 'rigel', 154500000, 45000000, 90945.00, 'redish', false, 4, true);
INSERT INTO public.star VALUES (3, 'betelgeuse', 154504500, 45000534, 90995.90, 'supergaint', true, 4, false);
INSERT INTO public.star VALUES (4, 'sirius', 154504500, 4588534, 99995.99, 'super bright', true, 2, true);
INSERT INTO public.star VALUES (5, 'polaris', 854504500, 588534, 59789.99, 'North star', true, 2, true);
INSERT INTO public.star VALUES (6, 'aplha centauri', 854566500, 566634, 59889.99, 'closest star', false, 2, true);


--
-- Name: continent_continent_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.continent_continent_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 27, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: continent continent_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.continent
    ADD CONSTRAINT continent_name_key UNIQUE (name);


--
-- Name: continent continent_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.continent
    ADD CONSTRAINT continent_pkey PRIMARY KEY (continent_id);


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
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: continent fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.continent
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

