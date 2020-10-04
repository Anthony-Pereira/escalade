--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.13
-- Dumped by pg_dump version 9.6.13

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

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: adresse; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.adresse (
    adresse_id numeric NOT NULL,
    numero character varying NOT NULL,
    rue character varying NOT NULL,
    code_postal character varying NOT NULL,
    ville character varying NOT NULL,
    departement_id numeric NOT NULL
);


ALTER TABLE public.adresse OWNER TO postgres;

--
-- Name: adresse_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.adresse_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.adresse_id_seq OWNER TO postgres;

--
-- Name: adresse_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.adresse_id_seq OWNED BY public.adresse.adresse_id;


--
-- Name: commentaire; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.commentaire (
    commentaire_id character varying NOT NULL,
    commentaire character varying NOT NULL,
    date date NOT NULL
);


ALTER TABLE public.commentaire OWNER TO postgres;

--
-- Name: commentaire_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.commentaire_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.commentaire_id_seq OWNER TO postgres;

--
-- Name: commentaire_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.commentaire_id_seq OWNED BY public.commentaire.commentaire_id;


--
-- Name: commentaire_secteur; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.commentaire_secteur (
    commentaire_secteur_commentaire_id character varying NOT NULL,
    commentaire_secteur_secteur_id numeric NOT NULL
);


ALTER TABLE public.commentaire_secteur OWNER TO postgres;

--
-- Name: commentaire_site; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.commentaire_site (
    commentaire_site_commentaire_id character varying NOT NULL,
    commentaire_site_site_id numeric NOT NULL
);


ALTER TABLE public.commentaire_site OWNER TO postgres;

--
-- Name: commentaire_voie; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.commentaire_voie (
    commentaire_voie_commentaire_id character varying NOT NULL,
    commentaire_voie_voie_id numeric NOT NULL
);


ALTER TABLE public.commentaire_voie OWNER TO postgres;

--
-- Name: compte; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.compte (
    compte_id numeric NOT NULL,
    email character varying NOT NULL,
    pseudo character varying,
    mot_de_passe character varying NOT NULL,
    nom character varying,
    prenom character varying,
    num_telephone character varying,
    adresse_id numeric,
    role_role_code integer NOT NULL
);


ALTER TABLE public.compte OWNER TO postgres;

--
-- Name: compte_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.compte_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.compte_id_seq OWNER TO postgres;

--
-- Name: compte_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.compte_id_seq OWNED BY public.compte.compte_id;


--
-- Name: departement; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.departement (
    departement_id numeric NOT NULL,
    numero character varying NOT NULL,
    nom character varying NOT NULL,
    region_id numeric NOT NULL
);


ALTER TABLE public.departement OWNER TO postgres;

--
-- Name: departement_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.departement_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.departement_id_seq OWNER TO postgres;

--
-- Name: departement_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.departement_id_seq OWNED BY public.departement.departement_id;


--
-- Name: pays; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pays (
    pays_code numeric NOT NULL,
    nom character varying NOT NULL,
    code_alpha_2 character varying NOT NULL,
    code_alpha_3 character varying NOT NULL
);


ALTER TABLE public.pays OWNER TO postgres;

--
-- Name: periode_jour; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.periode_jour (
    periode_jour_code integer NOT NULL,
    designation character varying NOT NULL,
    description character varying NOT NULL
);


ALTER TABLE public.periode_jour OWNER TO postgres;

--
-- Name: region; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.region (
    id numeric NOT NULL,
    nom character varying NOT NULL,
    pays_pays_code numeric NOT NULL
);


ALTER TABLE public.region OWNER TO postgres;

--
-- Name: region_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.region_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.region_id_seq OWNER TO postgres;

--
-- Name: region_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.region_id_seq OWNED BY public.region.id;


--
-- Name: reservation; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.reservation (
    reservation_id numeric NOT NULL,
    topo_id numeric NOT NULL,
    date_reservation date NOT NULL,
    reservation_periode_jour_code integer NOT NULL,
    utilisateur_id numeric NOT NULL
);


ALTER TABLE public.reservation OWNER TO postgres;

--
-- Name: reservation_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.reservation_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.reservation_id_seq OWNER TO postgres;

--
-- Name: reservation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.reservation_id_seq OWNED BY public.reservation.reservation_id;


--
-- Name: role; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.role (
    role_code integer NOT NULL,
    designation character varying NOT NULL,
    description character varying NOT NULL
);


ALTER TABLE public.role OWNER TO postgres;

--
-- Name: secteur; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.secteur (
    secteur_id numeric NOT NULL,
    nom character varying NOT NULL,
    description character varying NOT NULL,
    site_site_id numeric NOT NULL
);


ALTER TABLE public.secteur OWNER TO postgres;

--
-- Name: secteur_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.secteur_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.secteur_id_seq OWNER TO postgres;

--
-- Name: secteur_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.secteur_id_seq OWNED BY public.secteur.secteur_id;


--
-- Name: site; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.site (
    site_id numeric NOT NULL,
    nom character varying NOT NULL,
    description character varying,
    adresse_id numeric NOT NULL
);


ALTER TABLE public.site OWNER TO postgres;

--
-- Name: TABLE site; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.site IS 'L''adresse devra être saisie dans le même écran que le site et créé avant le site.';


--
-- Name: site_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.site_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.site_id_seq OWNER TO postgres;

--
-- Name: site_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.site_id_seq OWNED BY public.site.site_id;


--
-- Name: topo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.topo (
    topo_id numeric NOT NULL,
    compte_id numeric NOT NULL,
    nom character varying NOT NULL,
    description character varying NOT NULL,
    site_id numeric NOT NULL,
    proprietaire_id numeric NOT NULL
);


ALTER TABLE public.topo OWNER TO postgres;

--
-- Name: topo_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.topo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.topo_id_seq OWNER TO postgres;

--
-- Name: topo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.topo_id_seq OWNED BY public.topo.topo_id;


--
-- Name: url_photo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.url_photo (
    id numeric NOT NULL,
    url character varying NOT NULL,
    description character varying NOT NULL
);


ALTER TABLE public.url_photo OWNER TO postgres;

--
-- Name: url_photo_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.url_photo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.url_photo_id_seq OWNER TO postgres;

--
-- Name: url_photo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.url_photo_id_seq OWNED BY public.url_photo.id;


--
-- Name: url_photo_secteur; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.url_photo_secteur (
    url_photo_secteur_url_photo_id numeric NOT NULL,
    secteur_secteur_id numeric NOT NULL
);


ALTER TABLE public.url_photo_secteur OWNER TO postgres;

--
-- Name: url_photo_site; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.url_photo_site (
    url_photo_site_url_photo_id numeric NOT NULL,
    site_site_id numeric NOT NULL
);


ALTER TABLE public.url_photo_site OWNER TO postgres;

--
-- Name: url_photo_voie; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.url_photo_voie (
    url_photo_voie_url_photo_id numeric NOT NULL,
    voie_voie_id numeric NOT NULL
);


ALTER TABLE public.url_photo_voie OWNER TO postgres;

--
-- Name: voie; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.voie (
    voie_id numeric NOT NULL,
    numero character varying NOT NULL,
    nom character varying NOT NULL,
    description character varying NOT NULL,
    secteur_id numeric NOT NULL,
    url_photo_id character varying NOT NULL,
    longueur character varying,
    difficulte character varying
);


ALTER TABLE public.voie OWNER TO postgres;

--
-- Name: voie_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.voie_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.voie_id_seq OWNER TO postgres;

--
-- Name: voie_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.voie_id_seq OWNED BY public.voie.voie_id;


--
-- Name: adresse adresse_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.adresse ALTER COLUMN adresse_id SET DEFAULT nextval('public.adresse_id_seq'::regclass);


--
-- Name: commentaire commentaire_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.commentaire ALTER COLUMN commentaire_id SET DEFAULT nextval('public.commentaire_id_seq'::regclass);


--
-- Name: compte compte_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.compte ALTER COLUMN compte_id SET DEFAULT nextval('public.compte_id_seq'::regclass);


--
-- Name: departement departement_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.departement ALTER COLUMN departement_id SET DEFAULT nextval('public.departement_id_seq'::regclass);


--
-- Name: region id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.region ALTER COLUMN id SET DEFAULT nextval('public.region_id_seq'::regclass);


--
-- Name: reservation reservation_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reservation ALTER COLUMN reservation_id SET DEFAULT nextval('public.reservation_id_seq'::regclass);


--
-- Name: secteur secteur_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.secteur ALTER COLUMN secteur_id SET DEFAULT nextval('public.secteur_id_seq'::regclass);


--
-- Name: site site_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.site ALTER COLUMN site_id SET DEFAULT nextval('public.site_id_seq'::regclass);


--
-- Name: topo topo_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.topo ALTER COLUMN topo_id SET DEFAULT nextval('public.topo_id_seq'::regclass);


--
-- Name: url_photo id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.url_photo ALTER COLUMN id SET DEFAULT nextval('public.url_photo_id_seq'::regclass);


--
-- Name: voie voie_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.voie ALTER COLUMN voie_id SET DEFAULT nextval('public.voie_id_seq'::regclass);


--
-- Data for Name: adresse; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Name: adresse_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.adresse_id_seq', 1, false);


--
-- Data for Name: commentaire; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Name: commentaire_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.commentaire_id_seq', 1, false);


--
-- Data for Name: commentaire_secteur; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: commentaire_site; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: commentaire_voie; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: compte; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Name: compte_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.compte_id_seq', 1, false);


--
-- Data for Name: departement; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (1, '1', 'Ain', 1);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (2, '2', 'Aisne', 9);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (3, '3', 'Allier', 1);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (4, '4', 'Alpes-de-Haute-Provence', 18);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (5, '5', 'Hautes-Alpes', 18);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (6, '6', 'Alpes-Maritimes', 18);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (7, '7', 'Ardèche', 1);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (8, '8', 'Ardennes', 6);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (9, '9', 'Ariège', 16);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (10, '10', 'Aube', 6);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (11, '11', 'Aude', 16);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (12, '12', 'Aveyron', 16);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (13, '13', 'Bouches-du-Rhône', 18);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (14, '14', 'Calvados', 14);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (15, '15', 'Cantal', 1);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (16, '16', 'Charente', 15);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (17, '17', 'Charente-Maritime', 15);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (18, '18', 'Cher', 4);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (19, '19', 'Corrèze', 15);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (20, '21', 'Côte-d''Or', 2);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (21, '22', 'Côtes-d''Armor', 3);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (22, '23', 'Creuse', 15);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (23, '24', 'Dordogne', 15);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (24, '25', 'Doubs', 2);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (25, '26', 'Drôme', 1);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (26, '27', 'Eure', 14);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (27, '28', 'Eure-et-Loir', 4);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (28, '29', 'Finistère', 3);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (29, '30', 'Gard', 16);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (30, '31', 'Haute-Garonne', 16);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (31, '32', 'Gers', 16);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (32, '33', 'Gironde', 15);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (33, '34', 'Hérault', 16);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (34, '35', 'Ille-et-Vilaine', 3);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (35, '36', 'Indre', 4);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (36, '37', 'Indre-et-Loire', 4);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (37, '38', 'Isère', 1);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (38, '39', 'Jura', 2);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (39, '40', 'Landes', 15);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (40, '41', 'Loir-et-Cher', 4);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (41, '42', 'Loire', 1);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (42, '43', 'Haute-Loire', 1);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (43, '44', 'Loire-Atlantique', 17);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (44, '45', 'Loiret', 4);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (45, '46', 'Lot', 16);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (46, '47', 'Lot-et-Garonne', 15);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (47, '48', 'Lozère', 16);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (48, '49', 'Maine-et-Loire', 17);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (49, '50', 'Manche', 14);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (50, '51', 'Marne', 6);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (51, '52', 'Haute-Marne', 6);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (52, '53', 'Mayenne', 17);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (53, '54', 'Meurthe-et-Moselle', 6);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (54, '55', 'Meuse', 6);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (55, '56', 'Morbihan', 3);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (56, '57', 'Moselle', 6);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (57, '58', 'Nièvre', 2);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (58, '59', 'Nord', 9);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (59, '60', 'Oise', 9);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (60, '61', 'Orne', 14);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (61, '62', 'Pas-de-Calais', 9);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (62, '63', 'Puy-de-Dôme', 1);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (63, '64', 'Pyrénées-Atlantiques', 15);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (64, '65', 'Hautes-Pyrénées', 16);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (65, '66', 'Pyrénées-Orientales', 16);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (66, '67', 'Bas-Rhin', 6);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (67, '68', 'Haut-Rhin', 6);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (68, '69', 'RhôneNote 7', 1);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (69, '70', 'Haute-Saône', 2);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (70, '71', 'Saône-et-Loire', 2);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (71, '72', 'Sarthe', 17);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (72, '73', 'Savoie', 1);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (73, '74', 'Haute-Savoie', 1);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (74, '75', 'Paris', 10);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (75, '76', 'Seine-Maritime', 14);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (76, '77', 'Seine-et-Marne', 10);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (77, '78', 'Yvelines', 10);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (78, '79', 'Deux-Sèvres', 15);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (79, '80', 'Somme', 9);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (80, '81', 'Tarn', 16);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (81, '82', 'Tarn-et-Garonne', 16);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (82, '83', 'Var', 18);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (83, '84', 'Vaucluse', 18);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (84, '85', 'Vendée', 17);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (85, '86', 'Vienne', 15);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (86, '87', 'Haute-Vienne', 15);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (87, '88', 'Vosges', 6);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (88, '89', 'Yonne', 2);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (89, '90', 'Territoire de Belfort', 2);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (90, '91', 'Essonne', 10);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (91, '92', 'Hauts-de-Seine', 10);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (92, '93', 'Seine-Saint-Denis', 10);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (93, '94', 'Val-de-Marne', 10);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (94, '95', 'Val-d''Oise', 10);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (95, '971', 'Guadeloupe', 7);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (96, '972', 'Martinique', 12);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (97, '973', 'Guyane', 8);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (98, '974', 'La Réunion', 11);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (99, '976', 'Mayotte ', 13);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (100, '2A', 'Corse-du-Sud', 5);
INSERT INTO public.departement (departement_id, numero, nom, region_id) VALUES (101, '2B', 'Haute-Corse', 5);


--
-- Name: departement_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.departement_id_seq', 101, true);


--
-- Data for Name: pays; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (4, 'AFGHANISTAN', 'AFG', 'AF');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (8, 'ALBANIE', 'ALB', 'AL');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (10, 'ANTARCTIQUE', 'ATA', 'AQ');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (12, 'ALGÉRIE', 'DZA', 'DZ');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (16, 'SAMOA AMÉRICAINES', 'ASM', 'AS');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (20, 'ANDORRE', 'AND', 'AD');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (24, 'ANGOLA', 'AGO', 'AO');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (28, 'ANTIGUA-ET-BARBUDA', 'ATG', 'AG');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (31, 'AZERBAÏDJAN', 'AZE', 'AZ');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (32, 'ARGENTINE', 'ARG', 'AR');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (36, 'AUSTRALIE', 'AUS', 'AU');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (40, 'AUTRICHE', 'AUT', 'AT');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (44, 'BAHAMAS', 'BHS', 'BS');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (48, 'BAHREÏN', 'BHR', 'BH');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (50, 'BANGLADESH', 'BGD', 'BD');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (51, 'ARMÉNIE', 'ARM', 'AM');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (52, 'BARBADE', 'BRB', 'BB');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (56, 'BELGIQUE', 'BEL', 'BE');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (60, 'BERMUDES', 'BMU', 'BM');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (64, 'BHOUTAN', 'BTN', 'BT');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (68, 'BOLIVIE, ÉTAT PLURINATIONAL DE', 'BOL', 'BO');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (70, 'BOSNIE-HERZÉGOVINE', 'BIH', 'BA');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (72, 'BOTSWANA', 'BWA', 'BW');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (74, 'BOUVET, ÎLE', 'BVT', 'BV');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (76, 'BRÉSIL', 'BRA', 'BR');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (84, 'BELIZE', 'BLZ', 'BZ');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (86, 'OCÉAN INDIEN, TERRITOIRE BRITANNIQUE DE L''', 'IOT', 'IO');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (90, 'SALOMON, ÎLES', 'SLB', 'SB');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (92, 'ÎLES VIERGES BRITANNIQUES', 'VGB', 'VG');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (96, 'BRUNÉI DARUSSALAM', 'BRN', 'BN');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (100, 'BULGARIE', 'BGR', 'BG');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (104, 'MYANMAR', 'MMR', 'MM');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (108, 'BURUNDI', 'BDI', 'BI');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (112, 'BÉLARUS', 'BLR', 'BY');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (116, 'CAMBODGE', 'KHM', 'KH');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (120, 'CAMEROUN', 'CMR', 'CM');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (124, 'CANADA', 'CAN', 'CA');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (132, 'CABO VERDE', 'CPV', 'CV');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (136, 'CAÏMANES, ÎLES', 'CYM', 'KY');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (140, 'CENTRAFRICAINE, RÉPUBLIQUE', 'CAF', 'CF');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (144, 'SRI LANKA', 'LKA', 'LK');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (148, 'TCHAD', 'TCD', 'TD');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (152, 'CHILI', 'CHL', 'CL');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (156, 'CHINE', 'CHN', 'CN');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (158, 'TAÏWAN, PROVINCE DE CHINE', 'TWN', 'TW');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (162, 'CHRISTMAS, ÎLE', 'CXR', 'CX');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (166, 'COCOS (KEELING), ÎLES', 'CCK', 'CC');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (170, 'COLOMBIE', 'COL', 'CO');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (174, 'COMORES', 'COM', 'KM');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (175, 'MAYOTTE', 'MYT', 'YT');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (178, 'CONGO', 'COG', 'CG');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (180, 'CONGO, LA RÉPUBLIQUE DÉMOCRATIQUE DU', 'COD', 'CD');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (184, 'COOK, ÎLES', 'COK', 'CK');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (188, 'COSTA RICA', 'CRI', 'CR');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (191, 'CROATIE', 'HRV', 'HR');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (192, 'CUBA', 'CUB', 'CU');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (196, 'CHYPRE', 'CYP', 'CY');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (203, 'TCHÉQUIE', 'CZE', 'CZ');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (204, 'BÉNIN', 'BEN', 'BJ');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (208, 'DANEMARK', 'DNK', 'DK');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (212, 'DOMINIQUE', 'DMA', 'DM');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (214, 'DOMINICAINE, RÉPUBLIQUE', 'DOM', 'DO');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (218, 'ÉQUATEUR', 'ECU', 'EC');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (222, 'EL SALVADOR', 'SLV', 'SV');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (226, 'GUINÉE ÉQUATORIALE', 'GNQ', 'GQ');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (231, 'ÉTHIOPIE', 'ETH', 'ET');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (232, 'ÉRYTHRÉE', 'ERI', 'ER');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (233, 'ESTONIE', 'EST', 'EE');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (234, 'FÉROÉ, ÎLES', 'FRO', 'FO');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (238, 'FALKLAND, ÎLES (MALVINAS)', 'FLK', 'FK');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (239, 'GÉORGIE DU SUD ET LES ÎLES SANDWICH DU SUD', 'SGS', 'GS');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (242, 'FIDJI', 'FJI', 'FJ');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (246, 'FINLANDE', 'FIN', 'FI');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (248, 'ÅLAND, ÎLES', 'ALA', 'AX');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (250, 'FRANCE', 'FRA', 'FR');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (254, 'GUYANE FRANÇAISE', 'GUF', 'GF');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (258, 'POLYNÉSIE FRANÇAISE', 'PYF', 'PF');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (260, 'TERRES AUSTRALES FRANÇAISES', 'ATF', 'TF');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (262, 'DJIBOUTI', 'DJI', 'DJ');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (266, 'GABON', 'GAB', 'GA');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (268, 'GÉORGIE', 'GEO', 'GE');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (270, 'GAMBIE', 'GMB', 'GM');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (275, 'ÉTAT DE PALESTINE', 'PSE', 'PS');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (276, 'ALLEMAGNE', 'DEU', 'DE');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (288, 'GHANA', 'GHA', 'GH');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (292, 'GIBRALTAR', 'GIB', 'GI');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (296, 'KIRIBATI', 'KIR', 'KI');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (300, 'GRÈCE', 'GRC', 'GR');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (304, 'GROENLAND', 'GRL', 'GL');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (308, 'GRENADE', 'GRD', 'GD');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (312, 'GUADELOUPE', 'GLP', 'GP');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (316, 'GUAM', 'GUM', 'GU');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (320, 'GUATEMALA', 'GTM', 'GT');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (324, 'GUINÉE', 'GIN', 'GN');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (328, 'GUYANA', 'GUY', 'GY');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (332, 'HAÏTI', 'HTI', 'HT');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (334, 'HEARD ET MACDONALD, ÎLES', 'HMD', 'HM');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (336, 'SAINT-SIÈGE (ÉTAT DE LA CITÉ DU VATICAN)', 'VAT', 'VA');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (340, 'HONDURAS', 'HND', 'HN');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (344, 'HONG KONG', 'HKG', 'HK');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (348, 'HONGRIE', 'HUN', 'HU');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (352, 'ISLANDE', 'ISL', 'IS');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (356, 'INDE', 'IND', 'IN');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (360, 'INDONÉSIE', 'IDN', 'ID');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (364, 'IRAN, RÉPUBLIQUE ISLAMIQUE D''', 'IRN', 'IR');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (368, 'IRAQ', 'IRQ', 'IQ');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (372, 'IRLANDE', 'IRL', 'IE');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (376, 'ISRAËL', 'ISR', 'IL');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (380, 'ITALIE', 'ITA', 'IT');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (384, 'CÔTE D’IVOIRE', 'CIV', 'CI');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (388, 'JAMAÏQUE', 'JAM', 'JM');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (392, 'JAPON', 'JPN', 'JP');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (398, 'KAZAKHSTAN', 'KAZ', 'KZ');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (400, 'JORDANIE', 'JOR', 'JO');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (404, 'KENYA', 'KEN', 'KE');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (408, 'CORÉE, RÉPUBLIQUE POPULAIRE DÉMOCRATIQUE DE', 'PRK', 'KP');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (410, 'CORÉE, RÉPUBLIQUE DE', 'KOR', 'KR');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (414, 'KOWEÏT', 'KWT', 'KW');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (417, 'KIRGHIZISTAN', 'KGZ', 'KG');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (418, 'LAO, RÉPUBLIQUE DÉMOCRATIQUE POPULAIRE', 'LAO', 'LA');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (422, 'LIBAN', 'LBN', 'LB');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (426, 'LESOTHO', 'LSO', 'LS');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (428, 'LETTONIE', 'LVA', 'LV');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (430, 'LIBÉRIA', 'LBR', 'LR');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (434, 'LIBYE', 'LBY', 'LY');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (438, 'LIECHTENSTEIN', 'LIE', 'LI');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (440, 'LITUANIE', 'LTU', 'LT');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (442, 'LUXEMBOURG', 'LUX', 'LU');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (446, 'MACAO', 'MAC', 'MO');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (450, 'MADAGASCAR', 'MDG', 'MG');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (454, 'MALAWI', 'MWI', 'MW');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (458, 'MALAISIE', 'MYS', 'MY');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (462, 'MALDIVES', 'MDV', 'MV');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (466, 'MALI', 'MLI', 'ML');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (470, 'MALTE', 'MLT', 'MT');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (474, 'MARTINIQUE', 'MTQ', 'MQ');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (478, 'MAURITANIE', 'MRT', 'MR');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (480, 'MAURICE', 'MUS', 'MU');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (484, 'MEXIQUE', 'MEX', 'MX');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (492, 'MONACO', 'MCO', 'MC');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (496, 'MONGOLIE', 'MNG', 'MN');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (498, 'MOLDAVIE', 'MDA', 'MD');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (499, 'MONTÉNÉGRO', 'MNE', 'ME');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (500, 'MONTSERRAT', 'MSR', 'MS');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (504, 'MAROC', 'MAR', 'MA');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (508, 'MOZAMBIQUE', 'MOZ', 'MZ');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (512, 'OMAN', 'OMN', 'OM');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (516, 'NAMIBIE', 'NAM', 'NA');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (520, 'NAURU', 'NRU', 'NR');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (524, 'NÉPAL', 'NPL', 'NP');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (528, 'PAYS-BAS', 'NLD', 'NL');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (531, 'CURAÇAO', 'CUW', 'CW');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (533, 'ARUBA', 'ABW', 'AW');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (534, 'SAINT-MARTIN (PARTIE NÉERLANDAISE)', 'SXM', 'SX');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (535, 'BONAIRE, SAINT-EUSTACHE ET SABA', 'BES', 'BQ');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (540, 'NOUVELLE-CALÉDONIE', 'NCL', 'NC');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (548, 'VANUATU', 'VUT', 'VU');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (554, 'NOUVELLE-ZÉLANDE', 'NZL', 'NZ');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (558, 'NICARAGUA', 'NIC', 'NI');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (562, 'NIGER', 'NER', 'NE');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (566, 'NIGÉRIA', 'NGA', 'NG');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (570, 'NIUÉ', 'NIU', 'NU');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (574, 'NORFOLK, ÎLE', 'NFK', 'NF');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (578, 'NORVÈGE', 'NOR', 'NO');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (580, 'MARIANNES DU NORD, ÎLES', 'MNP', 'MP');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (581, 'ÎLES MINEURES ÉLOIGNÉES DES ÉTATS-UNIS', 'UMI', 'UM');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (583, 'MICRONÉSIE, ÉTATS FÉDÉRÉS DE', 'FSM', 'FM');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (584, 'MARSHALL, ÎLES', 'MHL', 'MH');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (585, 'PALAOS', 'PLW', 'PW');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (586, 'PAKISTAN', 'PAK', 'PK');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (591, 'PANAMA', 'PAN', 'PA');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (598, 'PAPOUASIE-NOUVELLE-GUINÉE', 'PNG', 'PG');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (600, 'PARAGUAY', 'PRY', 'PY');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (604, 'PÉROU', 'PER', 'PE');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (608, 'PHILIPPINES', 'PHL', 'PH');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (612, 'PITCAIRN', 'PCN', 'PN');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (616, 'POLOGNE', 'POL', 'PL');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (620, 'PORTUGAL', 'PRT', 'PT');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (624, 'GUINÉE-BISSAU', 'GNB', 'GW');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (626, 'TIMOR-LESTE', 'TLS', 'TL');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (630, 'PORTO RICO', 'PRI', 'PR');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (634, 'QATAR', 'QAT', 'QA');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (638, 'RÉUNION', 'REU', 'RE');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (642, 'ROUMANIE', 'ROU', 'RO');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (643, 'RUSSIE, FÉDÉRATION DE', 'RUS', 'RU');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (646, 'RWANDA', 'RWA', 'RW');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (652, 'SAINT-BARTHÉLEMY', 'BLM', 'BL');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (654, 'SAINTE-HÉLÈNE, ASCENSION ET TRISTAN DA CUNHA', 'SHN', 'SH');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (659, 'SAINT-KITTS-ET-NEVIS', 'KNA', 'KN');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (660, 'ANGUILLA', 'AIA', 'AI');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (662, 'SAINTE-LUCIE', 'LCA', 'LC');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (663, 'SAINT-MARTIN (PARTIE FRANÇAISE)', 'MAF', 'MF');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (666, 'SAINT-PIERRE-ET-MIQUELON', 'SPM', 'PM');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (670, 'SAINT-VINCENT-ET-LES-GRENADINES', 'VCT', 'VC');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (674, 'SAINT-MARIN', 'SMR', 'SM');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (678, 'SAO TOMÉ-ET-PRINCIPE', 'STP', 'ST');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (682, 'ARABIE SAOUDITE', 'SAU', 'SA');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (686, 'SÉNÉGAL', 'SEN', 'SN');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (688, 'SERBIE', 'SRB', 'RS');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (690, 'SEYCHELLES', 'SYC', 'SC');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (694, 'SIERRA LEONE', 'SLE', 'SL');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (702, 'SINGAPOUR', 'SGP', 'SG');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (703, 'SLOVAQUIE', 'SVK', 'SK');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (704, 'VIET NAM', 'VNM', 'VN');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (705, 'SLOVÉNIE', 'SVN', 'SI');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (706, 'SOMALIE', 'SOM', 'SO');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (710, 'AFRIQUE DU SUD', 'ZAF', 'ZA');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (716, 'ZIMBABWE', 'ZWE', 'ZW');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (724, 'ESPAGNE', 'ESP', 'ES');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (728, 'SOUDAN DU SUD', 'SSD', 'SS');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (729, 'SOUDAN', 'SDN', 'SD');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (732, 'SAHARA OCCIDENTAL', 'ESH', 'EH');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (740, 'SURINAME', 'SUR', 'SR');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (744, 'SVALBARD ET ÎLE JAN MAYEN', 'SJM', 'SJ');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (748, 'ESWATINI', 'SWZ', 'SZ');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (752, 'SUÈDE', 'SWE', 'SE');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (756, 'SUISSE', 'CHE', 'CH');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (760, 'SYRIENNE, RÉPUBLIQUE ARABE', 'SYR', 'SY');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (762, 'TADJIKISTAN', 'TJK', 'TJ');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (764, 'THAÏLANDE', 'THA', 'TH');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (768, 'TOGO', 'TGO', 'TG');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (772, 'TOKELAU', 'TKL', 'TK');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (776, 'TONGA', 'TON', 'TO');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (780, 'TRINITÉ-ET-TOBAGO', 'TTO', 'TT');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (784, 'ÉMIRATS ARABES UNIS', 'ARE', 'AE');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (788, 'TUNISIE', 'TUN', 'TN');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (792, 'TURQUIE', 'TUR', 'TR');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (795, 'TURKMÉNISTAN', 'TKM', 'TM');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (796, 'TURKS ET CAÏQUES, ÎLES', 'TCA', 'TC');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (798, 'TUVALU', 'TUV', 'TV');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (800, 'OUGANDA', 'UGA', 'UG');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (804, 'UKRAINE', 'UKR', 'UA');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (807, 'RÉPUBLIQUE DE MACÉDOINE', 'MKD', 'MK');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (818, 'ÉGYPTE', 'EGY', 'EG');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (826, 'ROYAUME-UNI', 'GBR', 'GB');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (831, 'GUERNESEY', 'GGY', 'GG');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (832, 'JERSEY', 'JEY', 'JE');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (833, 'ÎLE DE MAN', 'IMN', 'IM');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (834, 'TANZANIE, RÉPUBLIQUE UNIE DE', 'TZA', 'TZ');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (840, 'ÉTATS-UNIS', 'USA', 'US');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (850, 'ÎLES VIERGES DES ÉTATS-UNIS', 'VIR', 'VI');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (854, 'BURKINA FASO', 'BFA', 'BF');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (858, 'URUGUAY', 'URY', 'UY');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (860, 'OUZBÉKISTAN', 'UZB', 'UZ');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (862, 'VENEZUELA, RÉPUBLIQUE BOLIVARIENNE DU', 'VEN', 'VE');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (876, 'WALLIS-ET-FUTUNA', 'WLF', 'WF');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (882, 'SAMOA', 'WSM', 'WS');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (887, 'YÉMEN', 'YEM', 'YE');
INSERT INTO public.pays (pays_code, nom, code_alpha_2, code_alpha_3) VALUES (894, 'ZAMBIE', 'ZMB', 'ZM');


--
-- Data for Name: periode_jour; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: region; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.region (id, nom, pays_pays_code) VALUES (1, 'Auvergne-Rhône-Alpes', 250);
INSERT INTO public.region (id, nom, pays_pays_code) VALUES (2, 'Bourgogne-Franche-Comté', 250);
INSERT INTO public.region (id, nom, pays_pays_code) VALUES (3, 'Bretagne', 250);
INSERT INTO public.region (id, nom, pays_pays_code) VALUES (4, 'Centre-Val de Loire', 250);
INSERT INTO public.region (id, nom, pays_pays_code) VALUES (5, 'Corse', 250);
INSERT INTO public.region (id, nom, pays_pays_code) VALUES (6, 'Grand Est', 250);
INSERT INTO public.region (id, nom, pays_pays_code) VALUES (7, 'Guadeloupe', 250);
INSERT INTO public.region (id, nom, pays_pays_code) VALUES (8, 'Guyane', 250);
INSERT INTO public.region (id, nom, pays_pays_code) VALUES (9, 'Hauts-de-France', 250);
INSERT INTO public.region (id, nom, pays_pays_code) VALUES (10, 'Île-de-France', 250);
INSERT INTO public.region (id, nom, pays_pays_code) VALUES (11, 'La Réunion', 250);
INSERT INTO public.region (id, nom, pays_pays_code) VALUES (12, 'Martinique', 250);
INSERT INTO public.region (id, nom, pays_pays_code) VALUES (13, 'Mayotte', 250);
INSERT INTO public.region (id, nom, pays_pays_code) VALUES (14, 'Normandie', 250);
INSERT INTO public.region (id, nom, pays_pays_code) VALUES (15, 'Nouvelle-Aquitaine', 250);
INSERT INTO public.region (id, nom, pays_pays_code) VALUES (16, 'Occitanie', 250);
INSERT INTO public.region (id, nom, pays_pays_code) VALUES (17, 'Pays de la Loire', 250);
INSERT INTO public.region (id, nom, pays_pays_code) VALUES (18, 'Provence-Alpes-Côte d''Azur', 250);


--
-- Name: region_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.region_id_seq', 18, true);


--
-- Data for Name: reservation; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Name: reservation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.reservation_id_seq', 1, false);


--
-- Data for Name: role; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.role (id, designation, description) VALUES (1, 'Administrateur', 'Administrateur du site web');
INSERT INTO public.role (id, designation, description) VALUES (2, 'Membre', 'Membre de l''association');
INSERT INTO public.role (id, designation, description) VALUES (3, 'Utilisateur', 'Utilisateur avec compte');


--
-- Data for Name: secteur; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Name: secteur_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.secteur_id_seq', 1, false);


--
-- Data for Name: site; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Name: site_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.site_id_seq', 1, false);


--
-- Data for Name: topo; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Name: topo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.topo_id_seq', 1, false);


--
-- Data for Name: url_photo; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Name: url_photo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.url_photo_id_seq', 1, false);


--
-- Data for Name: url_photo_secteur; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: url_photo_site; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: url_photo_voie; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: voie; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Name: voie_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.voie_id_seq', 1, false);


--
-- Name: adresse adresse_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.adresse
    ADD CONSTRAINT adresse_id PRIMARY KEY (adresse_id);


--
-- Name: role code; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.role
    ADD CONSTRAINT code PRIMARY KEY (id);


--
-- Name: commentaire commentaire_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.commentaire
    ADD CONSTRAINT commentaire_id PRIMARY KEY (commentaire_id);


--
-- Name: compte compte_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.compte
    ADD CONSTRAINT compte_id PRIMARY KEY (compte_id);


--
-- Name: departement departement_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.departement
    ADD CONSTRAINT departement_id PRIMARY KEY (departement_id);


--
-- Name: pays pays_code; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pays
    ADD CONSTRAINT pays_code PRIMARY KEY (pays_code);


--
-- Name: periode_jour periode_jour_code; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.periode_jour
    ADD CONSTRAINT periode_jour_code PRIMARY KEY (periode_jour_code);


--
-- Name: region region_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.region
    ADD CONSTRAINT region_id PRIMARY KEY (id);


--
-- Name: reservation reservation_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reservation
    ADD CONSTRAINT reservation_id PRIMARY KEY (reservation_id);


--
-- Name: secteur secteur_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.secteur
    ADD CONSTRAINT secteur_id PRIMARY KEY (secteur_id);


--
-- Name: site site_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.site
    ADD CONSTRAINT site_id PRIMARY KEY (site_id);


--
-- Name: topo topo_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.topo
    ADD CONSTRAINT topo_id PRIMARY KEY (topo_id);


--
-- Name: url_photo url_photo_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.url_photo
    ADD CONSTRAINT url_photo_id PRIMARY KEY (id);


--
-- Name: voie voie_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.voie
    ADD CONSTRAINT voie_id PRIMARY KEY (voie_id);


--
-- Name: compte adresse_compte_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.compte
    ADD CONSTRAINT adresse_compte_fk FOREIGN KEY (adresse_id) REFERENCES public.adresse(adresse_id);


--
-- Name: site adresse_site_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.site
    ADD CONSTRAINT adresse_site_fk FOREIGN KEY (adresse_id) REFERENCES public.adresse(adresse_id);


--
-- Name: commentaire_secteur commentaire_commentaire_secteur_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.commentaire_secteur
    ADD CONSTRAINT commentaire_commentaire_secteur_fk FOREIGN KEY (commentaire_secteur_commentaire_id) REFERENCES public.commentaire(commentaire_id);


--
-- Name: commentaire_site commentaire_commentaire_site_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.commentaire_site
    ADD CONSTRAINT commentaire_commentaire_site_fk FOREIGN KEY (commentaire_site_commentaire_id) REFERENCES public.commentaire(commentaire_id);


--
-- Name: commentaire_voie commentaire_commentaire_voie_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.commentaire_voie
    ADD CONSTRAINT commentaire_commentaire_voie_fk FOREIGN KEY (commentaire_voie_commentaire_id) REFERENCES public.commentaire(commentaire_id);


--
-- Name: reservation compte_reservation_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reservation
    ADD CONSTRAINT compte_reservation_fk FOREIGN KEY (utilisateur_id) REFERENCES public.compte(compte_id);


--
-- Name: topo compte_topo_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.topo
    ADD CONSTRAINT compte_topo_fk FOREIGN KEY (proprietaire_id) REFERENCES public.compte(compte_id);


--
-- Name: adresse departement_adresse_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.adresse
    ADD CONSTRAINT departement_adresse_fk FOREIGN KEY (departement_id) REFERENCES public.departement(departement_id);


--
-- Name: region pays_region_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.region
    ADD CONSTRAINT pays_region_fk FOREIGN KEY (pays_pays_code) REFERENCES public.pays(pays_code);


--
-- Name: reservation periode_jour_reservation_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reservation
    ADD CONSTRAINT periode_jour_reservation_fk FOREIGN KEY (reservation_periode_jour_code) REFERENCES public.periode_jour(periode_jour_code);


--
-- Name: departement region_departement_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.departement
    ADD CONSTRAINT region_departement_fk FOREIGN KEY (region_id) REFERENCES public.region(id);


--
-- Name: compte role_compte_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.compte
    ADD CONSTRAINT role_compte_fk FOREIGN KEY (role_role_id) REFERENCES public.role(id);


--
-- Name: commentaire_secteur secteur_commentaire_secteur_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.commentaire_secteur
    ADD CONSTRAINT secteur_commentaire_secteur_fk FOREIGN KEY (commentaire_secteur_secteur_id) REFERENCES public.secteur(secteur_id);


--
-- Name: url_photo_secteur secteur_url_photo_secteur_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.url_photo_secteur
    ADD CONSTRAINT secteur_url_photo_secteur_fk FOREIGN KEY (secteur_secteur_id) REFERENCES public.secteur(secteur_id);


--
-- Name: voie secteur_voie_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.voie
    ADD CONSTRAINT secteur_voie_fk FOREIGN KEY (secteur_id) REFERENCES public.secteur(secteur_id);


--
-- Name: commentaire_site site_commentaire_site_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.commentaire_site
    ADD CONSTRAINT site_commentaire_site_fk FOREIGN KEY (commentaire_site_site_id) REFERENCES public.site(site_id);


--
-- Name: secteur site_secteur_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.secteur
    ADD CONSTRAINT site_secteur_fk FOREIGN KEY (site_site_id) REFERENCES public.site(site_id);


--
-- Name: topo site_topo_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.topo
    ADD CONSTRAINT site_topo_fk FOREIGN KEY (site_id) REFERENCES public.site(site_id);


--
-- Name: url_photo_site site_url_photo_site_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.url_photo_site
    ADD CONSTRAINT site_url_photo_site_fk FOREIGN KEY (site_site_id) REFERENCES public.site(site_id);


--
-- Name: reservation topo_reservation_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reservation
    ADD CONSTRAINT topo_reservation_fk FOREIGN KEY (topo_id) REFERENCES public.topo(topo_id);


--
-- Name: url_photo_secteur url_photo_url_photo_secteur_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.url_photo_secteur
    ADD CONSTRAINT url_photo_url_photo_secteur_fk FOREIGN KEY (url_photo_secteur_url_photo_id) REFERENCES public.url_photo(id);


--
-- Name: url_photo_voie url_photo_url_photo_voie_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.url_photo_voie
    ADD CONSTRAINT url_photo_url_photo_voie_fk FOREIGN KEY (url_photo_voie_url_photo_id) REFERENCES public.url_photo(id);


--
-- Name: url_photo_site url_photo_url_site_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.url_photo_site
    ADD CONSTRAINT url_photo_url_site_fk FOREIGN KEY (url_photo_site_url_photo_id) REFERENCES public.url_photo(id);


--
-- Name: commentaire_voie voie_commentaire_voie_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.commentaire_voie
    ADD CONSTRAINT voie_commentaire_voie_fk FOREIGN KEY (commentaire_voie_voie_id) REFERENCES public.voie(voie_id);


--
-- Name: url_photo_voie voie_url_photo_voie_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.url_photo_voie
    ADD CONSTRAINT voie_url_photo_voie_fk FOREIGN KEY (voie_voie_id) REFERENCES public.voie(voie_id);


--
-- Name: TABLE adresse; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.adresse TO "OC_Cours_JavaEE";


--
-- Name: SEQUENCE adresse_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE public.adresse_id_seq TO "OC_Cours_JavaEE";


--
-- Name: TABLE commentaire; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.commentaire TO "OC_Cours_JavaEE";


--
-- Name: SEQUENCE commentaire_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE public.commentaire_id_seq TO "OC_Cours_JavaEE";


--
-- Name: TABLE commentaire_secteur; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.commentaire_secteur TO "OC_Cours_JavaEE";


--
-- Name: TABLE commentaire_site; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.commentaire_site TO "OC_Cours_JavaEE";


--
-- Name: TABLE commentaire_voie; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.commentaire_voie TO "OC_Cours_JavaEE";


--
-- Name: TABLE compte; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.compte TO "OC_Cours_JavaEE";


--
-- Name: SEQUENCE compte_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE public.compte_id_seq TO "OC_Cours_JavaEE";


--
-- Name: TABLE departement; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.departement TO "OC_Cours_JavaEE";


--
-- Name: SEQUENCE departement_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE public.departement_id_seq TO "OC_Cours_JavaEE";


--
-- Name: TABLE pays; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.pays TO "OC_Cours_JavaEE";


--
-- Name: TABLE periode_jour; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.periode_jour TO "OC_Cours_JavaEE";


--
-- Name: TABLE region; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.region TO "OC_Cours_JavaEE";


--
-- Name: SEQUENCE region_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE public.region_id_seq TO "OC_Cours_JavaEE";


--
-- Name: TABLE reservation; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.reservation TO "OC_Cours_JavaEE";


--
-- Name: SEQUENCE reservation_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE public.reservation_id_seq TO "OC_Cours_JavaEE";


--
-- Name: TABLE role; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.role TO "OC_Cours_JavaEE";


--
-- Name: TABLE secteur; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.secteur TO "OC_Cours_JavaEE";


--
-- Name: SEQUENCE secteur_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE public.secteur_id_seq TO "OC_Cours_JavaEE";


--
-- Name: TABLE site; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.site TO "OC_Cours_JavaEE";


--
-- Name: SEQUENCE site_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE public.site_id_seq TO "OC_Cours_JavaEE";


--
-- Name: TABLE topo; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.topo TO "OC_Cours_JavaEE";


--
-- Name: SEQUENCE topo_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE public.topo_id_seq TO "OC_Cours_JavaEE";


--
-- Name: TABLE url_photo; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.url_photo TO "OC_Cours_JavaEE";


--
-- Name: SEQUENCE url_photo_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE public.url_photo_id_seq TO "OC_Cours_JavaEE";


--
-- Name: TABLE url_photo_secteur; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.url_photo_secteur TO "OC_Cours_JavaEE";


--
-- Name: TABLE url_photo_site; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.url_photo_site TO "OC_Cours_JavaEE";


--
-- Name: TABLE url_photo_voie; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.url_photo_voie TO "OC_Cours_JavaEE";


--
-- Name: TABLE voie; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.voie TO "OC_Cours_JavaEE";


--
-- Name: SEQUENCE voie_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE public.voie_id_seq TO "OC_Cours_JavaEE";


--
-- PostgreSQL database dump complete
--

