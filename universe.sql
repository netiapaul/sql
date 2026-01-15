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
-- Name: asteroids; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.asteroids (
    gravity numeric(2,1),
    direction text,
    name character varying(30) NOT NULL,
    asteroids_id integer NOT NULL
);


ALTER TABLE public.asteroids OWNER TO freecodecamp;

--
-- Name: asteroids_asteroids_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.asteroids_asteroids_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.asteroids_asteroids_id_seq OWNER TO freecodecamp;

--
-- Name: asteroids_asteroids_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.asteroids_asteroids_id_seq OWNED BY public.asteroids.asteroids_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    has_life boolean,
    age_in_millions_of_years integer,
    distance_from_earth integer,
    description text,
    rings numeric
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
    has_life boolean,
    planet_id integer,
    age_in_millions_of_years integer,
    distance_from_earth integer,
    description text,
    rings numeric
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
    has_life boolean,
    star_id integer,
    age_in_millions_of_years integer,
    distance_from_earth integer,
    description text
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
    has_life boolean,
    galaxy_id integer NOT NULL,
    age_in_millions_of_years integer,
    distance_from_earth integer,
    description text,
    rings numeric
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
-- Name: asteroids asteroids_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroids ALTER COLUMN asteroids_id SET DEFAULT nextval('public.asteroids_asteroids_id_seq'::regclass);


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
-- Data for Name: asteroids; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.asteroids VALUES (1.7, 'East', 'Ceres', 1);
INSERT INTO public.asteroids VALUES (9.0, 'West', 'Vesta', 2);
INSERT INTO public.asteroids VALUES (9.1, 'North', 'Pallas', 3);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', true, 120, 50, 'Our home galaxy, a barred spiral.', 0);
INSERT INTO public.galaxy VALUES (2, 'Whirlpool Galaxy', false, 123, 20, 'A classic spiral galaxy with prominent arms', 10);
INSERT INTO public.galaxy VALUES (3, 'Antennae Galaxies', false, 123, 20, 'A classic spiral galaxy with prominent arms', 10);
INSERT INTO public.galaxy VALUES (4, 'Vega', false, 123, 20, 'A classic spiral galaxy with prominent arms', 10);
INSERT INTO public.galaxy VALUES (5, 'Sirius', false, 123, 20, 'A classic spiral galaxy with prominent arms', 10);
INSERT INTO public.galaxy VALUES (6, 'Antennae Galaxy', false, 123, 20, 'A classic spiral galaxy with prominent arms', 10);
INSERT INTO public.galaxy VALUES (7, 'Cartwheel Galaxy', false, 123, 20, 'A classic spiral galaxy with prominent arms', 10);
INSERT INTO public.galaxy VALUES (17, 'Andromeda', false, 10000, 2537000, 'Nearest spiral galaxy', 2);
INSERT INTO public.galaxy VALUES (18, 'Triangulum Galaxy', false, 12000, 3000000, 'Small spiral galaxy', 1);
INSERT INTO public.galaxy VALUES (19, 'Sombrero Galaxy', false, 9000, 29000000, 'Bright nucleus with dust lane', 1);
INSERT INTO public.galaxy VALUES (20, 'Black Eye Galaxy', false, 13200, 17000000, 'Dark band of dust', 0);
INSERT INTO public.galaxy VALUES (21, 'Cigar Galaxy', false, 12000, 12000000, 'Starburst galaxy', 0);
INSERT INTO public.galaxy VALUES (22, 'Pinwheel Galaxy', false, 21000, 21000000, 'Face-on spiral galaxy', 2);
INSERT INTO public.galaxy VALUES (23, 'Tadpole Galaxy', false, 100, 420000000, 'Distorted by collision', 0);
INSERT INTO public.galaxy VALUES (24, 'Sunflower Galaxy', false, 13000, 27000000, 'Bright spiral arms', 1);
INSERT INTO public.galaxy VALUES (25, 'Messier 81', false, 14000, 12000000, 'Large spiral galaxy', 2);
INSERT INTO public.galaxy VALUES (26, 'Messier 82', false, 13000, 12000000, 'Irregular starburst galaxy', 0);
INSERT INTO public.galaxy VALUES (27, 'Large Magellanic Cloud', false, 13000, 163000, 'Satellite of Milky Way', 0);
INSERT INTO public.galaxy VALUES (28, 'Small Magellanic Cloud', false, 13000, 200000, 'Dwarf galaxy companion', 0);
INSERT INTO public.galaxy VALUES (29, 'NGC 1300', false, 11000, 61000000, 'Barred spiral galaxy', 1);
INSERT INTO public.galaxy VALUES (30, 'NGC 4414', false, 14000, 62000000, 'Flocculent spiral galaxy', 0);
INSERT INTO public.galaxy VALUES (31, 'Hoags Object', false, 13000, 600000000, 'Nearly perfect ring galaxy', 1);
INSERT INTO public.galaxy VALUES (32, 'IC 1101', false, 14000, 1000000000, 'One of the largest known galaxies', 0);
INSERT INTO public.galaxy VALUES (33, 'ESO 325-G004', false, 13500, 450000000, 'Elliptical galaxy used in lensing', 0);
INSERT INTO public.galaxy VALUES (34, 'Centaurus A', false, 13000, 13000000, 'Active galactic nucleus', 0);
INSERT INTO public.galaxy VALUES (35, 'NGC 6744', false, 12000, 30000000, 'Milky Way–like spiral galaxy', 2);
INSERT INTO public.galaxy VALUES (36, 'Messier 87', false, 13000, 53000000, 'Giant elliptical with supermassive black hole', 0);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Phobos', true, 1, 120, 50, 'Our home galaxy, a barred spiral.', 3);
INSERT INTO public.moon VALUES (2, 'Titan', false, 2, 123, 20, 'A classic spiral galaxy with prominent arms', 2);
INSERT INTO public.moon VALUES (3, 'Rhea', false, 3, 123, 20, 'A classic spiral galaxy with prominent arms', 3);
INSERT INTO public.moon VALUES (22, 'Io', false, 24, 4500, 629, 'Volcanically active moon of Jupiter', 0);
INSERT INTO public.moon VALUES (23, 'Europa', false, 25, 4500, 629, 'Icy moon with subsurface ocean', 0);
INSERT INTO public.moon VALUES (24, 'Ganymede', false, 26, 4500, 629, 'Largest moon in the solar system', 0);
INSERT INTO public.moon VALUES (25, 'Callisto', false, 27, 4500, 629, 'Heavily cratered icy moon', 0);
INSERT INTO public.moon VALUES (26, 'Titus', false, 28, 4500, 1275, 'Moon with thick nitrogen atmosphere', 1);
INSERT INTO public.moon VALUES (27, 'Enceladus', false, 29, 4500, 1275, 'Icy moon with active geysers', 0);
INSERT INTO public.moon VALUES (28, 'Mimas', false, 30, 4500, 1275, 'Small moon with large impact crater', 0);
INSERT INTO public.moon VALUES (29, 'Triton', false, 31, 4500, 4351, 'Retrograde moon with icy volcanoes', 0);
INSERT INTO public.moon VALUES (30, 'Oberon', false, 32, 4500, 2724, 'Dark, icy moon of Uranus', 0);
INSERT INTO public.moon VALUES (31, 'Titania', false, 33, 4500, 2724, 'Largest moon of Uranus', 0);
INSERT INTO public.moon VALUES (32, 'Ariel', false, 34, 4500, 2724, 'Bright icy moon with canyons', 0);
INSERT INTO public.moon VALUES (33, 'Umbriel', false, 35, 4500, 2724, 'Dark moon with ancient surface', 0);
INSERT INTO public.moon VALUES (34, 'Phobes', false, 36, 4500, 77, 'Small irregular moon of Mars-like planet', 0);
INSERT INTO public.moon VALUES (35, 'Deimos', false, 37, 4500, 77, 'Small smooth moon', 0);
INSERT INTO public.moon VALUES (36, 'Charon', false, 38, 4500, 5906, 'Large moon relative to its dwarf planet', 0);
INSERT INTO public.moon VALUES (41, 'Nix', false, 39, 4500, 5906, 'Small irregular moon of dwarf planet', 0);
INSERT INTO public.moon VALUES (42, 'Hydra', false, 40, 4500, 5906, 'Outer moon with chaotic rotation', 0);
INSERT INTO public.moon VALUES (43, 'Dione', false, 41, 4500, 1275, 'Icy moon with tectonic features', 0);
INSERT INTO public.moon VALUES (44, 'Rheas', false, 42, 4500, 1275, 'Second-largest moon of Saturn', 0);
INSERT INTO public.moon VALUES (45, 'Iapetus', false, 43, 4500, 1275, 'Moon with distinctive two-tone coloration', 0);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', true, 1, 120, 50, 'Our home galaxy, a barred spiral.');
INSERT INTO public.planet VALUES (2, 'Mars', false, 3, 123, 20, 'A classic spiral galaxy with prominent arms');
INSERT INTO public.planet VALUES (3, 'Mercury', false, 4, 123, 20, 'A classic spiral galaxy with prominent arms');
INSERT INTO public.planet VALUES (24, 'Jupiter', false, 11, 4500, 629, 'Gas giant with a massive magnetic field');
INSERT INTO public.planet VALUES (25, 'Saturn', false, 12, 4500, 1275, 'Gas giant known for its prominent ring system');
INSERT INTO public.planet VALUES (26, 'Uranus', false, 13, 4500, 2724, 'Ice giant with extreme axial tilt');
INSERT INTO public.planet VALUES (27, 'Neptune', false, 14, 4500, 4351, 'Ice giant with supersonic winds');
INSERT INTO public.planet VALUES (28, 'Venus', false, 15, 4500, 261, 'Rocky planet with runaway greenhouse effect');
INSERT INTO public.planet VALUES (29, 'Pluto', false, 16, 4500, 5906, 'Dwarf planet in the Kuiper Belt');
INSERT INTO public.planet VALUES (30, 'Kepler-22b', false, 17, 4000, 600, 'Exoplanet orbiting within the habitable zone');
INSERT INTO public.planet VALUES (31, 'Proxima b', false, 18, 4800, 4, 'Closest known exoplanet to Earth');
INSERT INTO public.planet VALUES (32, 'Kepler-452b', false, 19, 6000, 1400, 'Super-Earth in the habitable zone');
INSERT INTO public.planet VALUES (33, 'TRAPPIST-1d', false, 20, 7500, 40, 'Rocky exoplanet in a compact system');
INSERT INTO public.planet VALUES (34, 'TRAPPIST-1e', false, 21, 7500, 40, 'Potentially habitable rocky exoplanet');
INSERT INTO public.planet VALUES (35, 'TRAPPIST-1f', false, 22, 7500, 40, 'Cold terrestrial exoplanet');
INSERT INTO public.planet VALUES (36, 'Gliese 667 Cc', false, 23, 7000, 24, 'Super-Earth in the habitable zone');
INSERT INTO public.planet VALUES (37, 'HD 209458 b', false, 24, 5000, 159, 'Hot Jupiter with atmospheric evaporation');
INSERT INTO public.planet VALUES (38, 'WASP-12b', false, 25, 3000, 1410, 'Extremely hot gas giant');
INSERT INTO public.planet VALUES (39, 'Kepler-16b', false, 26, 4500, 200, 'Circumbinary planet orbiting two stars');
INSERT INTO public.planet VALUES (40, '55 Cancri e', false, 27, 8000, 41, 'Carbon-rich super-Earth');
INSERT INTO public.planet VALUES (41, 'GJ 1214 b', false, 28, 6000, 48, 'Water-rich exoplanet');
INSERT INTO public.planet VALUES (42, 'LHS 1140 b', false, 29, 5000, 41, 'Dense rocky exoplanet');
INSERT INTO public.planet VALUES (43, 'K2-18b', false, 30, 5000, 124, 'Exoplanet with water vapor in atmosphere');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Milky Way', false, 1, 120, 50, 'Our home galaxy, a barred spiral.', 0);
INSERT INTO public.star VALUES (3, 'Vega', false, 2, 123, 20, 'A classic spiral galaxy with prominent arms', 10);
INSERT INTO public.star VALUES (4, 'Sirius', false, 3, 123, 20, 'A classic spiral galaxy with prominent arms', 10);
INSERT INTO public.star VALUES (9, 'Paul', false, 4, 123, 20, 'A classic spiral galaxy with prominent arms', 10);
INSERT INTO public.star VALUES (10, 'Nora', false, 5, 123, 20, 'A classic spiral galaxy with prominent arms', 10);
INSERT INTO public.star VALUES (11, 'Zeus', false, 5, 123, 20, 'A classic spiral galaxy with prominent arms', 10);
INSERT INTO public.star VALUES (12, 'Begas', false, 17, 455, 25, 'Bright star in Lyra', 0);
INSERT INTO public.star VALUES (13, 'Birius', false, 18, 242, 9, 'Brightest star in the night sky', 0);
INSERT INTO public.star VALUES (14, 'Betelgeuse', false, 19, 10, 548, 'Red supergiant star', 0);
INSERT INTO public.star VALUES (15, 'Rigel', false, 20, 8, 860, 'Blue supergiant star', 0);
INSERT INTO public.star VALUES (16, 'Procyon', false, 21, 1800, 11, 'Binary star system', 0);
INSERT INTO public.star VALUES (17, 'Altair', false, 22, 1200, 17, 'Fast rotating star', 0);
INSERT INTO public.star VALUES (18, 'Aldebaran', false, 23, 6500, 65, 'Orange giant star', 0);
INSERT INTO public.star VALUES (19, 'Spica', false, 24, 12, 250, 'Massive binary system', 0);
INSERT INTO public.star VALUES (20, 'Antares', false, 25, 11, 550, 'Red supergiant in Scorpius', 0);
INSERT INTO public.star VALUES (21, 'Pollux', false, 26, 720, 34, 'Orange giant with exoplanet', 0);
INSERT INTO public.star VALUES (22, 'Fomalhaut', false, 27, 440, 25, 'Debris disk star', 1);
INSERT INTO public.star VALUES (23, 'Deneb', false, 28, 10, 2600, 'Extremely luminous supergiant', 0);
INSERT INTO public.star VALUES (24, 'Regulus', false, 29, 150, 79, 'Rapidly spinning star', 0);
INSERT INTO public.star VALUES (25, 'Arcturus', false, 30, 7100, 37, 'Old red giant star', 0);
INSERT INTO public.star VALUES (26, 'Capella', false, 31, 590, 43, 'Binary giant stars', 0);
INSERT INTO public.star VALUES (27, 'Bellatrix', false, 32, 25, 250, 'Blue giant star', 0);
INSERT INTO public.star VALUES (28, 'Alnilam', false, 33, 6, 1340, 'Massive blue supergiant', 0);
INSERT INTO public.star VALUES (29, 'Alnitak', false, 34, 6, 820, 'Triple star system', 0);
INSERT INTO public.star VALUES (30, 'Saiph', false, 35, 7, 720, 'Hot blue supergiant', 0);
INSERT INTO public.star VALUES (31, 'Castor', false, 36, 370, 51, 'Six-star system', 0);


--
-- Name: asteroids_asteroids_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.asteroids_asteroids_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 36, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 45, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 43, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 31, true);


--
-- Name: asteroids asteroids_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroids
    ADD CONSTRAINT asteroids_name_key UNIQUE (name);


--
-- Name: asteroids asteroids_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroids
    ADD CONSTRAINT asteroids_pkey PRIMARY KEY (asteroids_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_name_key1; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key1 UNIQUE (name);


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
-- Name: moon moon_name_key1; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key1 UNIQUE (name);


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
-- Name: planet planet_name_key1; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key1 UNIQUE (name);


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
-- Name: star star_name_key1; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key1 UNIQUE (name);


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

