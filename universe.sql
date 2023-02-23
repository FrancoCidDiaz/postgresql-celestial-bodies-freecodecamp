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
-- Name: black_hole; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.black_hole (
    black_hole_id integer NOT NULL,
    name character varying(30) NOT NULL,
    is_spherical boolean
);


ALTER TABLE public.black_hole OWNER TO freecodecamp;

--
-- Name: black_holes_black_hole_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.black_holes_black_hole_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.black_holes_black_hole_id_seq OWNER TO freecodecamp;

--
-- Name: black_holes_black_hole_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.black_holes_black_hole_id_seq OWNED BY public.black_hole.black_hole_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    distance_from_earth integer,
    age_in_million_of_years integer,
    description text
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30),
    planet_id integer NOT NULL,
    description character varying(30),
    is_spherical boolean
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    is_spherical boolean,
    star_id integer,
    description character varying(30)
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    distance_from_earth numeric,
    is_spherical boolean,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: black_hole black_hole_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole ALTER COLUMN black_hole_id SET DEFAULT nextval('public.black_holes_black_hole_id_seq'::regclass);


--
-- Data for Name: black_hole; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.black_hole VALUES (1, 'uno', NULL);
INSERT INTO public.black_hole VALUES (2, 'dos', NULL);
INSERT INTO public.black_hole VALUES (3, 'tres', NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'andromeda 1', 123123, 123, 'lorem');
INSERT INTO public.galaxy VALUES (2, 'andromeda 2', 21321, 21321, 'lorem');
INSERT INTO public.galaxy VALUES (3, 'adromeda 3', 23213, 213213, 'lorem');
INSERT INTO public.galaxy VALUES (4, 'andromeda 4', 213213, 12321, 'lorem');
INSERT INTO public.galaxy VALUES (5, 'andromeda 5', 123213, 12321, 'lorem');
INSERT INTO public.galaxy VALUES (6, 'seis', 12321, 123213, 'lorem');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'luna', 1, NULL, NULL);
INSERT INTO public.moon VALUES (2, 'luna 2', 1, NULL, NULL);
INSERT INTO public.moon VALUES (3, 'luna 3', 1, NULL, NULL);
INSERT INTO public.moon VALUES (4, NULL, 2, NULL, NULL);
INSERT INTO public.moon VALUES (5, NULL, 2, NULL, NULL);
INSERT INTO public.moon VALUES (6, NULL, 2, NULL, NULL);
INSERT INTO public.moon VALUES (7, NULL, 3, NULL, NULL);
INSERT INTO public.moon VALUES (8, NULL, 3, NULL, NULL);
INSERT INTO public.moon VALUES (9, NULL, 3, NULL, NULL);
INSERT INTO public.moon VALUES (10, NULL, 3, NULL, NULL);
INSERT INTO public.moon VALUES (11, NULL, 3, NULL, NULL);
INSERT INTO public.moon VALUES (12, NULL, 4, NULL, NULL);
INSERT INTO public.moon VALUES (13, NULL, 4, NULL, NULL);
INSERT INTO public.moon VALUES (14, NULL, 4, NULL, NULL);
INSERT INTO public.moon VALUES (15, NULL, 5, NULL, NULL);
INSERT INTO public.moon VALUES (16, NULL, 5, NULL, NULL);
INSERT INTO public.moon VALUES (17, NULL, 5, NULL, NULL);
INSERT INTO public.moon VALUES (18, NULL, 5, NULL, NULL);
INSERT INTO public.moon VALUES (19, NULL, 5, NULL, NULL);
INSERT INTO public.moon VALUES (20, NULL, 5, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'planeta_uno', true, 1, NULL);
INSERT INTO public.planet VALUES (2, 'tierra', true, 1, NULL);
INSERT INTO public.planet VALUES (3, 'jupiter', true, 1, NULL);
INSERT INTO public.planet VALUES (4, 'sdqwd', true, 2, NULL);
INSERT INTO public.planet VALUES (5, 'sad', true, 3, NULL);
INSERT INTO public.planet VALUES (6, 'asdasd', true, 3, NULL);
INSERT INTO public.planet VALUES (7, 'asdsa', true, 3, NULL);
INSERT INTO public.planet VALUES (8, '2131as', true, 4, NULL);
INSERT INTO public.planet VALUES (9, 'qweqw', true, 5, NULL);
INSERT INTO public.planet VALUES (10, 'sasdsd', false, 5, NULL);
INSERT INTO public.planet VALUES (11, 'asds', true, 6, NULL);
INSERT INTO public.planet VALUES (12, 'asdasdas', true, 6, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'delta_andromedae_1', 2132132, true, 1);
INSERT INTO public.star VALUES (2, 'delta 2', 12321, true, 1);
INSERT INTO public.star VALUES (3, 'delta 3', 32131, false, 2);
INSERT INTO public.star VALUES (4, 'cuatro', 213213, false, 3);
INSERT INTO public.star VALUES (5, 'cinco', 21321, true, 4);
INSERT INTO public.star VALUES (6, 'seis', 123213, true, 3);


--
-- Name: black_holes_black_hole_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.black_holes_black_hole_id_seq', 3, true);


--
-- Name: black_hole black_holes_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT black_holes_pkey PRIMARY KEY (black_hole_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


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
-- Name: black_hole uk_black_hole_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT uk_black_hole_id UNIQUE (black_hole_id);


--
-- Name: galaxy uk_galaxy_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT uk_galaxy_id UNIQUE (galaxy_id);


--
-- Name: moon uk_moon_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT uk_moon_id UNIQUE (moon_id);


--
-- Name: planet uk_planet_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT uk_planet_id UNIQUE (planet_id);


--
-- Name: star uk_star_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT uk_star_id UNIQUE (star_id);


--
-- Name: star fk_galaxy_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet_id FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star_id FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

