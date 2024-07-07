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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    age_in_millions_of_years numeric,
    distance_from_earth integer,
    has_life boolean
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
    distance_from_earth double precision,
    planet_id integer,
    age_in_millions_of_years numeric
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
    name character varying(30) NOT NULL,
    planet_id integer NOT NULL,
    star_id integer,
    description text,
    age_in_millions_of_years numeric,
    distance_from_earth double precision,
    has_life boolean,
    structure_id integer
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
    name character varying(30) NOT NULL,
    star_id integer NOT NULL,
    has_life boolean,
    description text,
    age_in_millions_of_years numeric,
    galaxy_id integer,
    distance_from_earth integer
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
-- Name: structure; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.structure (
    structure_id integer NOT NULL,
    name character varying(30) NOT NULL,
    gravity boolean
);


ALTER TABLE public.structure OWNER TO freecodecamp;

--
-- Name: structure_structure_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.structure_structure_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.structure_structure_id_seq OWNER TO freecodecamp;

--
-- Name: structure_structure_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.structure_structure_id_seq OWNED BY public.structure.structure_id;


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
-- Name: structure structure_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.structure ALTER COLUMN structure_id SET DEFAULT nextval('public.structure_structure_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', NULL, 2.5, 2500000, false);
INSERT INTO public.galaxy VALUES (2, 'Milky Way', NULL, 13400, 0, true);
INSERT INTO public.galaxy VALUES (3, 'Eye of God', NULL, 500, 60000000, false);
INSERT INTO public.galaxy VALUES (4, 'Large Magellanic Cloud', NULL, 600, 163000, false);
INSERT INTO public.galaxy VALUES (5, 'Triangulum', NULL, 400, 61100, false);
INSERT INTO public.galaxy VALUES (6, 'Messier 81', NULL, 700, 12000000, false);
INSERT INTO public.galaxy VALUES (7, 'Centauri', NULL, 500, 3900, false);
INSERT INTO public.galaxy VALUES (8, 'Ursa Major', NULL, 76000, 84, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Earth Moon', NULL, 0.3, 1, NULL);
INSERT INTO public.moon VALUES (2, 'Phobos', NULL, 1.38, 4, NULL);
INSERT INTO public.moon VALUES (3, 'Deimos', NULL, 1.38, 4, NULL);
INSERT INTO public.moon VALUES (4, 'Ganymede', NULL, 4.95, 5, NULL);
INSERT INTO public.moon VALUES (5, 'Callisto', NULL, 4.95, 5, NULL);
INSERT INTO public.moon VALUES (6, 'Io', NULL, 4.95, 5, NULL);
INSERT INTO public.moon VALUES (7, 'Europa', NULL, 4.95, 5, NULL);
INSERT INTO public.moon VALUES (8, 'Titan', NULL, 9.08, 6, NULL);
INSERT INTO public.moon VALUES (9, 'Enceladus', NULL, 9.08, 6, NULL);
INSERT INTO public.moon VALUES (10, 'Hyperion', NULL, 9.08, 6, NULL);
INSERT INTO public.moon VALUES (11, 'Prometheus', NULL, 9.08, 6, NULL);
INSERT INTO public.moon VALUES (12, 'Pandora', NULL, 9.08, 6, NULL);
INSERT INTO public.moon VALUES (13, 'Janus', NULL, 9.08, 6, NULL);
INSERT INTO public.moon VALUES (14, 'Epimetheus', NULL, 9.08, 6, NULL);
INSERT INTO public.moon VALUES (15, 'Mimas', NULL, 9.08, 6, NULL);
INSERT INTO public.moon VALUES (16, 'Iapetus', NULL, 9.08, 6, NULL);
INSERT INTO public.moon VALUES (17, 'Phoebe', NULL, 9.08, 6, NULL);
INSERT INTO public.moon VALUES (18, 'Tethys', NULL, 9.08, 6, NULL);
INSERT INTO public.moon VALUES (19, 'Telesto', NULL, 9.08, 6, NULL);
INSERT INTO public.moon VALUES (20, 'Miranda', NULL, 18.3, 7, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('Earth', 1, 1, NULL, NULL, 0, true, NULL);
INSERT INTO public.planet VALUES ('Mercury', 2, 1, NULL, NULL, 0.31, false, NULL);
INSERT INTO public.planet VALUES ('Venus', 3, 1, NULL, NULL, 0.72, false, NULL);
INSERT INTO public.planet VALUES ('Mars', 4, 1, NULL, NULL, 1.38, false, NULL);
INSERT INTO public.planet VALUES ('Jupiter', 5, 1, NULL, NULL, 4.95, false, NULL);
INSERT INTO public.planet VALUES ('Saturn', 6, 1, NULL, NULL, 9.08, false, NULL);
INSERT INTO public.planet VALUES ('Uranus', 7, 1, NULL, NULL, 18.3, false, NULL);
INSERT INTO public.planet VALUES ('Neptune', 8, 1, NULL, NULL, 29.9, false, NULL);
INSERT INTO public.planet VALUES ('Proxima Centauri d', 9, 7, NULL, NULL, 3900, false, NULL);
INSERT INTO public.planet VALUES ('Proxima Centauri b', 10, 7, NULL, NULL, 3900, false, NULL);
INSERT INTO public.planet VALUES ('Proxima Centauri c', 11, 7, NULL, NULL, 3900, false, NULL);
INSERT INTO public.planet VALUES ('Gliese 411 b', 12, 8, NULL, NULL, 8, false, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('Sun', 1, true, NULL, NULL, 2, 1);
INSERT INTO public.star VALUES ('Antares', 2, false, NULL, NULL, 2, 550);
INSERT INTO public.star VALUES ('Betelguese', 3, false, NULL, NULL, 2, 643);
INSERT INTO public.star VALUES ('UY Scuti', 4, false, NULL, NULL, 2, 5219);
INSERT INTO public.star VALUES ('VY Canis Maoris', 5, false, NULL, NULL, 2, 3900);
INSERT INTO public.star VALUES ('RW Cephei', 6, false, NULL, NULL, 2, 3500);
INSERT INTO public.star VALUES ('Proxima Centauri', 7, false, NULL, NULL, 7, 3900);
INSERT INTO public.star VALUES ('Lalande 21185', 8, false, NULL, NULL, 8, 8);


--
-- Data for Name: structure; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.structure VALUES (1, 'rocky', true);
INSERT INTO public.structure VALUES (2, 'liquid', true);
INSERT INTO public.structure VALUES (3, 'gaseous', false);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 8, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 8, true);


--
-- Name: structure_structure_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.structure_structure_id_seq', 3, true);


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
-- Name: structure structure_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.structure
    ADD CONSTRAINT structure_name_key UNIQUE (name);


--
-- Name: structure structure_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.structure
    ADD CONSTRAINT structure_pkey PRIMARY KEY (structure_id);


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
-- Name: planet planet_structure_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_structure_id_fkey FOREIGN KEY (structure_id) REFERENCES public.structure(structure_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

