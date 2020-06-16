--
-- PostgreSQL database dump
--

-- Dumped from database version 11.5
-- Dumped by pg_dump version 11.5

-- Started on 2020-06-16 14:39:28

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

SET default_with_oids = false;

--
-- TOC entry 196 (class 1259 OID 36902)
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
-- TOC entry 197 (class 1259 OID 36908)
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
-- TOC entry 2991 (class 0 OID 0)
-- Dependencies: 197
-- Name: adresse_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.adresse_id_seq OWNED BY public.adresse.adresse_id;


--
-- TOC entry 198 (class 1259 OID 36910)
-- Name: commentaire; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.commentaire (
    commentaire_id character varying NOT NULL,
    commentaire character varying NOT NULL,
    date date NOT NULL
);


ALTER TABLE public.commentaire OWNER TO postgres;

--
-- TOC entry 199 (class 1259 OID 36916)
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
-- TOC entry 2992 (class 0 OID 0)
-- Dependencies: 199
-- Name: commentaire_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.commentaire_id_seq OWNED BY public.commentaire.commentaire_id;


--
-- TOC entry 200 (class 1259 OID 36918)
-- Name: commentaire_secteur; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.commentaire_secteur (
    commentaire_secteur_commentaire_id character varying NOT NULL,
    commentaire_secteur_secteur_id numeric NOT NULL
);


ALTER TABLE public.commentaire_secteur OWNER TO postgres;

--
-- TOC entry 201 (class 1259 OID 36924)
-- Name: commentaire_site; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.commentaire_site (
    commentaire_site_commentaire_id character varying NOT NULL,
    commentaire_site_site_id numeric NOT NULL
);


ALTER TABLE public.commentaire_site OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 36930)
-- Name: commentaire_voie; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.commentaire_voie (
    commentaire_voie_commentaire_id character varying NOT NULL,
    commentaire_voie_voie_id numeric NOT NULL
);


ALTER TABLE public.commentaire_voie OWNER TO postgres;

--
-- TOC entry 203 (class 1259 OID 36936)
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
    role_role_code integer
);


ALTER TABLE public.compte OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 36942)
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
-- TOC entry 2993 (class 0 OID 0)
-- Dependencies: 204
-- Name: compte_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.compte_id_seq OWNED BY public.compte.compte_id;


--
-- TOC entry 205 (class 1259 OID 36944)
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
-- TOC entry 206 (class 1259 OID 36950)
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
-- TOC entry 2994 (class 0 OID 0)
-- Dependencies: 206
-- Name: departement_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.departement_id_seq OWNED BY public.departement.departement_id;


--
-- TOC entry 207 (class 1259 OID 36952)
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
-- TOC entry 208 (class 1259 OID 36958)
-- Name: periode_jour; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.periode_jour (
    periode_jour_code integer NOT NULL,
    designation character varying NOT NULL,
    description character varying NOT NULL
);


ALTER TABLE public.periode_jour OWNER TO postgres;

--
-- TOC entry 209 (class 1259 OID 36964)
-- Name: region; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.region (
    id numeric NOT NULL,
    nom character varying NOT NULL,
    pays_pays_code numeric NOT NULL
);


ALTER TABLE public.region OWNER TO postgres;

--
-- TOC entry 210 (class 1259 OID 36970)
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
-- TOC entry 2995 (class 0 OID 0)
-- Dependencies: 210
-- Name: region_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.region_id_seq OWNED BY public.region.id;


--
-- TOC entry 211 (class 1259 OID 36972)
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
-- TOC entry 212 (class 1259 OID 36978)
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
-- TOC entry 2996 (class 0 OID 0)
-- Dependencies: 212
-- Name: reservation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.reservation_id_seq OWNED BY public.reservation.reservation_id;


--
-- TOC entry 213 (class 1259 OID 36980)
-- Name: role; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.role (
    role_code integer NOT NULL,
    designation character varying NOT NULL,
    description character varying NOT NULL
);


ALTER TABLE public.role OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 36986)
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
-- TOC entry 215 (class 1259 OID 36992)
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
-- TOC entry 2997 (class 0 OID 0)
-- Dependencies: 215
-- Name: secteur_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.secteur_id_seq OWNED BY public.secteur.secteur_id;


--
-- TOC entry 216 (class 1259 OID 36994)
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
-- TOC entry 2998 (class 0 OID 0)
-- Dependencies: 216
-- Name: TABLE site; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.site IS 'L''adresse devra être saisie dans le même écran que le site et créé avant le site.';


--
-- TOC entry 217 (class 1259 OID 37000)
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
-- TOC entry 2999 (class 0 OID 0)
-- Dependencies: 217
-- Name: site_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.site_id_seq OWNED BY public.site.site_id;


--
-- TOC entry 218 (class 1259 OID 37002)
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
-- TOC entry 219 (class 1259 OID 37008)
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
-- TOC entry 3000 (class 0 OID 0)
-- Dependencies: 219
-- Name: topo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.topo_id_seq OWNED BY public.topo.topo_id;


--
-- TOC entry 220 (class 1259 OID 37010)
-- Name: url_photo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.url_photo (
    id numeric NOT NULL,
    url character varying NOT NULL,
    description character varying NOT NULL
);


ALTER TABLE public.url_photo OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 37016)
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
-- TOC entry 3001 (class 0 OID 0)
-- Dependencies: 221
-- Name: url_photo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.url_photo_id_seq OWNED BY public.url_photo.id;


--
-- TOC entry 222 (class 1259 OID 37018)
-- Name: url_photo_secteur; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.url_photo_secteur (
    url_photo_secteur_url_photo_id numeric NOT NULL,
    secteur_secteur_id numeric NOT NULL
);


ALTER TABLE public.url_photo_secteur OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 37024)
-- Name: url_photo_site; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.url_photo_site (
    url_photo_site_url_photo_id numeric NOT NULL,
    site_site_id numeric NOT NULL
);


ALTER TABLE public.url_photo_site OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 37030)
-- Name: url_photo_voie; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.url_photo_voie (
    url_photo_voie_url_photo_id numeric NOT NULL,
    voie_voie_id numeric NOT NULL
);


ALTER TABLE public.url_photo_voie OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 37036)
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
-- TOC entry 226 (class 1259 OID 37042)
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
-- TOC entry 3002 (class 0 OID 0)
-- Dependencies: 226
-- Name: voie_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.voie_id_seq OWNED BY public.voie.voie_id;


--
-- TOC entry 2801 (class 2604 OID 37044)
-- Name: adresse adresse_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.adresse ALTER COLUMN adresse_id SET DEFAULT nextval('public.adresse_id_seq'::regclass);


--
-- TOC entry 2802 (class 2604 OID 37045)
-- Name: commentaire commentaire_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.commentaire ALTER COLUMN commentaire_id SET DEFAULT nextval('public.commentaire_id_seq'::regclass);


--
-- TOC entry 2803 (class 2604 OID 37046)
-- Name: compte compte_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.compte ALTER COLUMN compte_id SET DEFAULT nextval('public.compte_id_seq'::regclass);


--
-- TOC entry 2804 (class 2604 OID 37047)
-- Name: departement departement_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.departement ALTER COLUMN departement_id SET DEFAULT nextval('public.departement_id_seq'::regclass);


--
-- TOC entry 2805 (class 2604 OID 37048)
-- Name: region id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.region ALTER COLUMN id SET DEFAULT nextval('public.region_id_seq'::regclass);


--
-- TOC entry 2806 (class 2604 OID 37049)
-- Name: reservation reservation_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reservation ALTER COLUMN reservation_id SET DEFAULT nextval('public.reservation_id_seq'::regclass);


--
-- TOC entry 2807 (class 2604 OID 37050)
-- Name: secteur secteur_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.secteur ALTER COLUMN secteur_id SET DEFAULT nextval('public.secteur_id_seq'::regclass);


--
-- TOC entry 2808 (class 2604 OID 37051)
-- Name: site site_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.site ALTER COLUMN site_id SET DEFAULT nextval('public.site_id_seq'::regclass);


--
-- TOC entry 2809 (class 2604 OID 37052)
-- Name: topo topo_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.topo ALTER COLUMN topo_id SET DEFAULT nextval('public.topo_id_seq'::regclass);


--
-- TOC entry 2810 (class 2604 OID 37053)
-- Name: url_photo id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.url_photo ALTER COLUMN id SET DEFAULT nextval('public.url_photo_id_seq'::regclass);


--
-- TOC entry 2811 (class 2604 OID 37054)
-- Name: voie voie_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.voie ALTER COLUMN voie_id SET DEFAULT nextval('public.voie_id_seq'::regclass);


--
-- TOC entry 2813 (class 2606 OID 37056)
-- Name: adresse adresse_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.adresse
    ADD CONSTRAINT adresse_id PRIMARY KEY (adresse_id);


--
-- TOC entry 2829 (class 2606 OID 37058)
-- Name: role code; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.role
    ADD CONSTRAINT code PRIMARY KEY (role_code);


--
-- TOC entry 2815 (class 2606 OID 37060)
-- Name: commentaire commentaire_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.commentaire
    ADD CONSTRAINT commentaire_id PRIMARY KEY (commentaire_id);


--
-- TOC entry 2817 (class 2606 OID 37062)
-- Name: compte compte_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.compte
    ADD CONSTRAINT compte_id PRIMARY KEY (compte_id);


--
-- TOC entry 2819 (class 2606 OID 37064)
-- Name: departement departement_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.departement
    ADD CONSTRAINT departement_id PRIMARY KEY (departement_id);


--
-- TOC entry 2821 (class 2606 OID 37066)
-- Name: pays pays_code; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pays
    ADD CONSTRAINT pays_code PRIMARY KEY (pays_code);


--
-- TOC entry 2823 (class 2606 OID 37068)
-- Name: periode_jour periode_jour_code; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.periode_jour
    ADD CONSTRAINT periode_jour_code PRIMARY KEY (periode_jour_code);


--
-- TOC entry 2825 (class 2606 OID 37070)
-- Name: region region_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.region
    ADD CONSTRAINT region_id PRIMARY KEY (id);


--
-- TOC entry 2827 (class 2606 OID 37072)
-- Name: reservation reservation_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reservation
    ADD CONSTRAINT reservation_id PRIMARY KEY (reservation_id);


--
-- TOC entry 2831 (class 2606 OID 37074)
-- Name: secteur secteur_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.secteur
    ADD CONSTRAINT secteur_id PRIMARY KEY (secteur_id);


--
-- TOC entry 2833 (class 2606 OID 37076)
-- Name: site site_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.site
    ADD CONSTRAINT site_id PRIMARY KEY (site_id);


--
-- TOC entry 2835 (class 2606 OID 37078)
-- Name: topo topo_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.topo
    ADD CONSTRAINT topo_id PRIMARY KEY (topo_id);


--
-- TOC entry 2837 (class 2606 OID 37080)
-- Name: url_photo url_photo_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.url_photo
    ADD CONSTRAINT url_photo_id PRIMARY KEY (id);


--
-- TOC entry 2839 (class 2606 OID 37082)
-- Name: voie voie_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.voie
    ADD CONSTRAINT voie_id PRIMARY KEY (voie_id);


--
-- TOC entry 2847 (class 2606 OID 37083)
-- Name: compte adresse_compte_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.compte
    ADD CONSTRAINT adresse_compte_fk FOREIGN KEY (adresse_id) REFERENCES public.adresse(adresse_id);


--
-- TOC entry 2855 (class 2606 OID 37088)
-- Name: site adresse_site_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.site
    ADD CONSTRAINT adresse_site_fk FOREIGN KEY (adresse_id) REFERENCES public.adresse(adresse_id);


--
-- TOC entry 2841 (class 2606 OID 37093)
-- Name: commentaire_secteur commentaire_commentaire_secteur_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.commentaire_secteur
    ADD CONSTRAINT commentaire_commentaire_secteur_fk FOREIGN KEY (commentaire_secteur_commentaire_id) REFERENCES public.commentaire(commentaire_id);


--
-- TOC entry 2843 (class 2606 OID 37098)
-- Name: commentaire_site commentaire_commentaire_site_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.commentaire_site
    ADD CONSTRAINT commentaire_commentaire_site_fk FOREIGN KEY (commentaire_site_commentaire_id) REFERENCES public.commentaire(commentaire_id);


--
-- TOC entry 2845 (class 2606 OID 37103)
-- Name: commentaire_voie commentaire_commentaire_voie_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.commentaire_voie
    ADD CONSTRAINT commentaire_commentaire_voie_fk FOREIGN KEY (commentaire_voie_commentaire_id) REFERENCES public.commentaire(commentaire_id);


--
-- TOC entry 2851 (class 2606 OID 37108)
-- Name: reservation compte_reservation_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reservation
    ADD CONSTRAINT compte_reservation_fk FOREIGN KEY (utilisateur_id) REFERENCES public.compte(compte_id);


--
-- TOC entry 2856 (class 2606 OID 37113)
-- Name: topo compte_topo_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.topo
    ADD CONSTRAINT compte_topo_fk FOREIGN KEY (proprietaire_id) REFERENCES public.compte(compte_id);


--
-- TOC entry 2840 (class 2606 OID 37118)
-- Name: adresse departement_adresse_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.adresse
    ADD CONSTRAINT departement_adresse_fk FOREIGN KEY (departement_id) REFERENCES public.departement(departement_id);


--
-- TOC entry 2850 (class 2606 OID 37123)
-- Name: region pays_region_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.region
    ADD CONSTRAINT pays_region_fk FOREIGN KEY (pays_pays_code) REFERENCES public.pays(pays_code);


--
-- TOC entry 2852 (class 2606 OID 37128)
-- Name: reservation periode_jour_reservation_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reservation
    ADD CONSTRAINT periode_jour_reservation_fk FOREIGN KEY (reservation_periode_jour_code) REFERENCES public.periode_jour(periode_jour_code);


--
-- TOC entry 2849 (class 2606 OID 37133)
-- Name: departement region_departement_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.departement
    ADD CONSTRAINT region_departement_fk FOREIGN KEY (region_id) REFERENCES public.region(id);


--
-- TOC entry 2848 (class 2606 OID 37138)
-- Name: compte role_compte_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.compte
    ADD CONSTRAINT role_compte_fk FOREIGN KEY (role_role_code) REFERENCES public.role(role_code);


--
-- TOC entry 2842 (class 2606 OID 37143)
-- Name: commentaire_secteur secteur_commentaire_secteur_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.commentaire_secteur
    ADD CONSTRAINT secteur_commentaire_secteur_fk FOREIGN KEY (commentaire_secteur_secteur_id) REFERENCES public.secteur(secteur_id);


--
-- TOC entry 2858 (class 2606 OID 37148)
-- Name: url_photo_secteur secteur_url_photo_secteur_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.url_photo_secteur
    ADD CONSTRAINT secteur_url_photo_secteur_fk FOREIGN KEY (secteur_secteur_id) REFERENCES public.secteur(secteur_id);


--
-- TOC entry 2864 (class 2606 OID 37153)
-- Name: voie secteur_voie_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.voie
    ADD CONSTRAINT secteur_voie_fk FOREIGN KEY (secteur_id) REFERENCES public.secteur(secteur_id);


--
-- TOC entry 2844 (class 2606 OID 37158)
-- Name: commentaire_site site_commentaire_site_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.commentaire_site
    ADD CONSTRAINT site_commentaire_site_fk FOREIGN KEY (commentaire_site_site_id) REFERENCES public.site(site_id);


--
-- TOC entry 2854 (class 2606 OID 37163)
-- Name: secteur site_secteur_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.secteur
    ADD CONSTRAINT site_secteur_fk FOREIGN KEY (site_site_id) REFERENCES public.site(site_id);


--
-- TOC entry 2857 (class 2606 OID 37168)
-- Name: topo site_topo_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.topo
    ADD CONSTRAINT site_topo_fk FOREIGN KEY (site_id) REFERENCES public.site(site_id);


--
-- TOC entry 2860 (class 2606 OID 37173)
-- Name: url_photo_site site_url_photo_site_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.url_photo_site
    ADD CONSTRAINT site_url_photo_site_fk FOREIGN KEY (site_site_id) REFERENCES public.site(site_id);


--
-- TOC entry 2853 (class 2606 OID 37178)
-- Name: reservation topo_reservation_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reservation
    ADD CONSTRAINT topo_reservation_fk FOREIGN KEY (topo_id) REFERENCES public.topo(topo_id);


--
-- TOC entry 2859 (class 2606 OID 37183)
-- Name: url_photo_secteur url_photo_url_photo_secteur_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.url_photo_secteur
    ADD CONSTRAINT url_photo_url_photo_secteur_fk FOREIGN KEY (url_photo_secteur_url_photo_id) REFERENCES public.url_photo(id);


--
-- TOC entry 2862 (class 2606 OID 37188)
-- Name: url_photo_voie url_photo_url_photo_voie_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.url_photo_voie
    ADD CONSTRAINT url_photo_url_photo_voie_fk FOREIGN KEY (url_photo_voie_url_photo_id) REFERENCES public.url_photo(id);


--
-- TOC entry 2861 (class 2606 OID 37193)
-- Name: url_photo_site url_photo_url_site_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.url_photo_site
    ADD CONSTRAINT url_photo_url_site_fk FOREIGN KEY (url_photo_site_url_photo_id) REFERENCES public.url_photo(id);


--
-- TOC entry 2846 (class 2606 OID 37198)
-- Name: commentaire_voie voie_commentaire_voie_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.commentaire_voie
    ADD CONSTRAINT voie_commentaire_voie_fk FOREIGN KEY (commentaire_voie_voie_id) REFERENCES public.voie(voie_id);


--
-- TOC entry 2863 (class 2606 OID 37203)
-- Name: url_photo_voie voie_url_photo_voie_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.url_photo_voie
    ADD CONSTRAINT voie_url_photo_voie_fk FOREIGN KEY (voie_voie_id) REFERENCES public.voie(voie_id);


-- Completed on 2020-06-16 14:39:29

--
-- PostgreSQL database dump complete
--

