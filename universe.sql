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
-- Name: description; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.description (
    description_id integer NOT NULL,
    description text,
    name character varying(30) NOT NULL,
    level numeric
);


ALTER TABLE public.description OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    has_life boolean NOT NULL,
    is_spherical boolean NOT NULL,
    name character varying(30) NOT NULL,
    age integer NOT NULL,
    galaxy_id integer NOT NULL
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
    has_life boolean NOT NULL,
    is_spherical boolean NOT NULL,
    name character varying(30) NOT NULL,
    age integer NOT NULL,
    moon_id integer NOT NULL,
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
    has_life boolean NOT NULL,
    is_spherical boolean NOT NULL,
    name character varying(30) NOT NULL,
    age integer NOT NULL,
    planet_id integer NOT NULL,
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
    has_life boolean NOT NULL,
    is_spherical boolean NOT NULL,
    name character varying(30) NOT NULL,
    age integer NOT NULL,
    star_id integer NOT NULL,
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
-- Data for Name: description; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.description VALUES (1, 'The universe is everything that exists: all of space, time, matter, energy, and the physical laws that govern them. It includes all galaxies, stars, planets, and cosmic structures. The universe is vast and constantly expanding.', 'Universe', NULL);
INSERT INTO public.description VALUES (2, 'A galaxy is a massive system made up of stars, star systems, gas, dust, and dark matter, all bound together by gravity. Our galaxy is the Milky Way, and there are billions of galaxies in the universe, like Andromeda and the Whirlpool Galaxy.', 'Galaxy', NULL);
INSERT INTO public.description VALUES (3, 'A star is a massive, luminous ball of gas (mostly hydrogen and helium) held together by gravity, with nuclear fusion occurring in its core. This fusion releases energy in the form of light and heat. Our Sun is an example of a star.', 'Star', NULL);
INSERT INTO public.description VALUES (4, 'A planet is a large celestial body that orbits a star, is spherical in shape due to its own gravity, and has cleared its orbit of other debris. Planets can be rocky like Earth or gas giants like Jupiter.', 'Planet', NULL);
INSERT INTO public.description VALUES (5, 'A moon is a natural satellite that orbits a planet. Moons vary in size and composition and can be rocky or icy. Earth’s Moon is a well-known example, but planets like Jupiter and Saturn have many moons.', 'Moon', NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (true, false, 'Milky Way', 14, 1);
INSERT INTO public.galaxy VALUES (false, false, 'Andromeda', 10, 2);
INSERT INTO public.galaxy VALUES (false, false, 'Triangulum', 3, 3);
INSERT INTO public.galaxy VALUES (false, false, 'Whirlpool', 0, 4);
INSERT INTO public.galaxy VALUES (false, false, 'Messier', 13, 5);
INSERT INTO public.galaxy VALUES (false, false, 'Sombrero', 10, 6);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (false, true, 'The Moon', 5, 1, 3);
INSERT INTO public.moon VALUES (false, false, 'Phobos', 5, 2, 4);
INSERT INTO public.moon VALUES (false, false, 'Deimos', 5, 3, 4);
INSERT INTO public.moon VALUES (false, true, 'Ganymede', 5, 4, 5);
INSERT INTO public.moon VALUES (false, true, 'Eurpoa', 5, 5, 5);
INSERT INTO public.moon VALUES (false, true, 'Io', 5, 6, 5);
INSERT INTO public.moon VALUES (false, true, 'Callisto', 5, 7, 5);
INSERT INTO public.moon VALUES (false, false, 'Amalthea', 5, 8, 5);
INSERT INTO public.moon VALUES (false, true, 'Titan', 5, 9, 6);
INSERT INTO public.moon VALUES (false, true, 'Enceladus', 5, 10, 6);
INSERT INTO public.moon VALUES (false, true, 'Mimas', 5, 11, 6);
INSERT INTO public.moon VALUES (false, true, 'Tethys', 5, 12, 6);
INSERT INTO public.moon VALUES (false, true, 'Dione', 5, 13, 6);
INSERT INTO public.moon VALUES (false, true, 'Rhea', 5, 14, 6);
INSERT INTO public.moon VALUES (false, true, 'Titania', 5, 15, 7);
INSERT INTO public.moon VALUES (false, true, 'Oberon', 5, 16, 7);
INSERT INTO public.moon VALUES (false, false, 'Miranda', 5, 17, 7);
INSERT INTO public.moon VALUES (false, true, 'Triton', 5, 18, 8);
INSERT INTO public.moon VALUES (false, false, 'Nereid', 5, 19, 8);
INSERT INTO public.moon VALUES (false, false, 'Proteus', 5, 20, 8);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (false, true, 'Mercury', 5, 1, 1);
INSERT INTO public.planet VALUES (false, true, 'Venus', 5, 2, 1);
INSERT INTO public.planet VALUES (true, true, 'Earth', 5, 3, 1);
INSERT INTO public.planet VALUES (false, true, 'Mars', 5, 4, 1);
INSERT INTO public.planet VALUES (false, true, 'Jupiter', 5, 5, 1);
INSERT INTO public.planet VALUES (false, true, 'Saturn', 5, 6, 1);
INSERT INTO public.planet VALUES (false, true, 'Uranus', 5, 7, 1);
INSERT INTO public.planet VALUES (false, true, 'Neptune', 5, 8, 1);
INSERT INTO public.planet VALUES (false, true, 'Exoplanet1', 0, 9, 2);
INSERT INTO public.planet VALUES (false, true, 'Gliese 581 d', 2, 10, 3);
INSERT INTO public.planet VALUES (false, true, 'Exoplanet2', 0, 11, 4);
INSERT INTO public.planet VALUES (false, true, 'Exoplanet3', 3, 12, 3);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (false, true, 'The Sun', 4, 1, 1);
INSERT INTO public.star VALUES (false, true, 'MS31-V1', 0, 2, 2);
INSERT INTO public.star VALUES (false, false, 'SN 1994D', 3, 3, 6);
INSERT INTO public.star VALUES (false, true, 'HD 5980', 0, 4, 5);
INSERT INTO public.star VALUES (false, true, 'M33-OB1', 0, 5, 3);
INSERT INTO public.star VALUES (false, false, 'SN 2011dh', 0, 6, 4);


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
-- Name: description description_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.description
    ADD CONSTRAINT description_description_key UNIQUE (description);


--
-- Name: description description_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.description
    ADD CONSTRAINT description_name_key UNIQUE (name);


--
-- Name: description description_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.description
    ADD CONSTRAINT description_pkey PRIMARY KEY (description_id);


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
-- Name: planet fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

