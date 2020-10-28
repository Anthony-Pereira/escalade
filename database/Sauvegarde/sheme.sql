--
-- PostgreSQL database dump
--

-- Dumped from database version 11.5
-- Dumped by pg_dump version 11.5

-- Started on 2020-10-28 22:53:24

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
-- TOC entry 196 (class 1259 OID 39183)
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
-- TOC entry 197 (class 1259 OID 39189)
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
-- TOC entry 2935 (class 0 OID 0)
-- Dependencies: 197
-- Name: adresse_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.adresse_id_seq OWNED BY public.adresse.adresse_id;


--
-- TOC entry 198 (class 1259 OID 39191)
-- Name: commentaire; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.commentaire (
    commentaire_id integer NOT NULL,
    commentaire character varying NOT NULL,
    date date NOT NULL,
    compte_id integer NOT NULL,
    site_id integer NOT NULL
);


ALTER TABLE public.commentaire OWNER TO postgres;

--
-- TOC entry 199 (class 1259 OID 39197)
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
-- TOC entry 2936 (class 0 OID 0)
-- Dependencies: 199
-- Name: commentaire_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.commentaire_id_seq OWNED BY public.commentaire.commentaire_id;


--
-- TOC entry 200 (class 1259 OID 39217)
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
    role_role_id integer NOT NULL
);


ALTER TABLE public.compte OWNER TO postgres;

--
-- TOC entry 201 (class 1259 OID 39223)
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
-- TOC entry 2937 (class 0 OID 0)
-- Dependencies: 201
-- Name: compte_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.compte_id_seq OWNED BY public.compte.compte_id;


--
-- TOC entry 217 (class 1259 OID 47693)
-- Name: cotation; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cotation (
    id integer NOT NULL,
    difficulte character varying NOT NULL
);


ALTER TABLE public.cotation OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 47691)
-- Name: cotation_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.cotation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cotation_id_seq OWNER TO postgres;

--
-- TOC entry 2938 (class 0 OID 0)
-- Dependencies: 216
-- Name: cotation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.cotation_id_seq OWNED BY public.cotation.id;


--
-- TOC entry 202 (class 1259 OID 39225)
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
-- TOC entry 203 (class 1259 OID 39231)
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
-- TOC entry 2939 (class 0 OID 0)
-- Dependencies: 203
-- Name: departement_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.departement_id_seq OWNED BY public.departement.departement_id;


--
-- TOC entry 204 (class 1259 OID 39233)
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
-- TOC entry 205 (class 1259 OID 39245)
-- Name: region; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.region (
    id numeric NOT NULL,
    nom character varying NOT NULL,
    pays_pays_code numeric NOT NULL
);


ALTER TABLE public.region OWNER TO postgres;

--
-- TOC entry 206 (class 1259 OID 39251)
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
-- TOC entry 2940 (class 0 OID 0)
-- Dependencies: 206
-- Name: region_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.region_id_seq OWNED BY public.region.id;


--
-- TOC entry 207 (class 1259 OID 39261)
-- Name: role; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.role (
    id integer NOT NULL,
    designation character varying NOT NULL,
    description character varying NOT NULL
);


ALTER TABLE public.role OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 47792)
-- Name: role_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.role_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.role_id_seq OWNER TO postgres;

--
-- TOC entry 2941 (class 0 OID 0)
-- Dependencies: 218
-- Name: role_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.role_id_seq OWNED BY public.role.id;


--
-- TOC entry 208 (class 1259 OID 39267)
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
-- TOC entry 209 (class 1259 OID 39273)
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
-- TOC entry 2942 (class 0 OID 0)
-- Dependencies: 209
-- Name: secteur_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.secteur_id_seq OWNED BY public.secteur.secteur_id;


--
-- TOC entry 210 (class 1259 OID 39275)
-- Name: site; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.site (
    site_id numeric NOT NULL,
    nom character varying NOT NULL,
    description character varying,
    adresse_id numeric NOT NULL,
    officielescalade boolean NOT NULL
);


ALTER TABLE public.site OWNER TO postgres;

--
-- TOC entry 2943 (class 0 OID 0)
-- Dependencies: 210
-- Name: TABLE site; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.site IS 'L''adresse devra être saisie dans le même écran que le site et créé avant le site.';


--
-- TOC entry 211 (class 1259 OID 39281)
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
-- TOC entry 2944 (class 0 OID 0)
-- Dependencies: 211
-- Name: site_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.site_id_seq OWNED BY public.site.site_id;


--
-- TOC entry 212 (class 1259 OID 39283)
-- Name: topo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.topo (
    topo_id numeric NOT NULL,
    compte_id numeric NOT NULL,
    nom character varying NOT NULL,
    description character varying NOT NULL,
    parution integer NOT NULL,
    lieu character varying NOT NULL,
    emprunteur_id integer,
    reservation integer
);


ALTER TABLE public.topo OWNER TO postgres;

--
-- TOC entry 213 (class 1259 OID 39289)
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
-- TOC entry 2945 (class 0 OID 0)
-- Dependencies: 213
-- Name: topo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.topo_id_seq OWNED BY public.topo.topo_id;


--
-- TOC entry 214 (class 1259 OID 39317)
-- Name: voie; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.voie (
    voie_id numeric NOT NULL,
    numero character varying NOT NULL,
    nom character varying NOT NULL,
    description character varying NOT NULL,
    secteur_id numeric NOT NULL,
    longueur character varying,
    difficulte character varying,
    site_id integer NOT NULL
);


ALTER TABLE public.voie OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 39323)
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
-- TOC entry 2946 (class 0 OID 0)
-- Dependencies: 215
-- Name: voie_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.voie_id_seq OWNED BY public.voie.voie_id;


--
-- TOC entry 2761 (class 2604 OID 39325)
-- Name: adresse adresse_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.adresse ALTER COLUMN adresse_id SET DEFAULT nextval('public.adresse_id_seq'::regclass);


--
-- TOC entry 2762 (class 2604 OID 47769)
-- Name: commentaire commentaire_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.commentaire ALTER COLUMN commentaire_id SET DEFAULT nextval('public.commentaire_id_seq'::regclass);


--
-- TOC entry 2763 (class 2604 OID 39327)
-- Name: compte compte_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.compte ALTER COLUMN compte_id SET DEFAULT nextval('public.compte_id_seq'::regclass);


--
-- TOC entry 2771 (class 2604 OID 47696)
-- Name: cotation id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cotation ALTER COLUMN id SET DEFAULT nextval('public.cotation_id_seq'::regclass);


--
-- TOC entry 2764 (class 2604 OID 39328)
-- Name: departement departement_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.departement ALTER COLUMN departement_id SET DEFAULT nextval('public.departement_id_seq'::regclass);


--
-- TOC entry 2765 (class 2604 OID 39329)
-- Name: region id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.region ALTER COLUMN id SET DEFAULT nextval('public.region_id_seq'::regclass);


--
-- TOC entry 2766 (class 2604 OID 47794)
-- Name: role id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.role ALTER COLUMN id SET DEFAULT nextval('public.role_id_seq'::regclass);


--
-- TOC entry 2767 (class 2604 OID 39331)
-- Name: secteur secteur_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.secteur ALTER COLUMN secteur_id SET DEFAULT nextval('public.secteur_id_seq'::regclass);


--
-- TOC entry 2768 (class 2604 OID 39332)
-- Name: site site_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.site ALTER COLUMN site_id SET DEFAULT nextval('public.site_id_seq'::regclass);


--
-- TOC entry 2769 (class 2604 OID 39333)
-- Name: topo topo_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.topo ALTER COLUMN topo_id SET DEFAULT nextval('public.topo_id_seq'::regclass);


--
-- TOC entry 2770 (class 2604 OID 39335)
-- Name: voie voie_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.voie ALTER COLUMN voie_id SET DEFAULT nextval('public.voie_id_seq'::regclass);


--
-- TOC entry 2773 (class 2606 OID 39337)
-- Name: adresse adresse_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.adresse
    ADD CONSTRAINT adresse_id PRIMARY KEY (adresse_id);


--
-- TOC entry 2775 (class 2606 OID 47771)
-- Name: commentaire commentaire_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.commentaire
    ADD CONSTRAINT commentaire_id PRIMARY KEY (commentaire_id);


--
-- TOC entry 2777 (class 2606 OID 39343)
-- Name: compte compte_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.compte
    ADD CONSTRAINT compte_id PRIMARY KEY (compte_id);


--
-- TOC entry 2797 (class 2606 OID 47703)
-- Name: cotation cotation_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cotation
    ADD CONSTRAINT cotation_pk PRIMARY KEY (id);


--
-- TOC entry 2779 (class 2606 OID 39345)
-- Name: departement departement_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.departement
    ADD CONSTRAINT departement_id PRIMARY KEY (departement_id);


--
-- TOC entry 2785 (class 2606 OID 39339)
-- Name: role id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.role
    ADD CONSTRAINT id PRIMARY KEY (id);


--
-- TOC entry 2781 (class 2606 OID 39347)
-- Name: pays pays_code; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pays
    ADD CONSTRAINT pays_code PRIMARY KEY (pays_code);


--
-- TOC entry 2783 (class 2606 OID 39351)
-- Name: region region_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.region
    ADD CONSTRAINT region_id PRIMARY KEY (id);


--
-- TOC entry 2787 (class 2606 OID 39355)
-- Name: secteur secteur_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.secteur
    ADD CONSTRAINT secteur_id PRIMARY KEY (secteur_id);


--
-- TOC entry 2789 (class 2606 OID 39357)
-- Name: site site_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.site
    ADD CONSTRAINT site_id PRIMARY KEY (site_id);


--
-- TOC entry 2791 (class 2606 OID 39359)
-- Name: topo topo_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.topo
    ADD CONSTRAINT topo_id PRIMARY KEY (topo_id);


--
-- TOC entry 2793 (class 2606 OID 39363)
-- Name: voie voie_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.voie
    ADD CONSTRAINT voie_id PRIMARY KEY (voie_id);


--
-- TOC entry 2794 (class 1259 OID 47700)
-- Name: cotation_cotation_uindex; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX cotation_cotation_uindex ON public.cotation USING btree (difficulte);


--
-- TOC entry 2795 (class 1259 OID 47701)
-- Name: cotation_id_uindex; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX cotation_id_uindex ON public.cotation USING btree (id);


--
-- TOC entry 2801 (class 2606 OID 39364)
-- Name: compte adresse_compte_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.compte
    ADD CONSTRAINT adresse_compte_fk FOREIGN KEY (adresse_id) REFERENCES public.adresse(adresse_id);


--
-- TOC entry 2806 (class 2606 OID 39369)
-- Name: site adresse_site_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.site
    ADD CONSTRAINT adresse_site_fk FOREIGN KEY (adresse_id) REFERENCES public.adresse(adresse_id);


--
-- TOC entry 2799 (class 2606 OID 47750)
-- Name: commentaire compte_commentaire___fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.commentaire
    ADD CONSTRAINT compte_commentaire___fk FOREIGN KEY (compte_id) REFERENCES public.compte(compte_id);


--
-- TOC entry 2802 (class 2606 OID 47780)
-- Name: compte compte_role_role_code_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.compte
    ADD CONSTRAINT compte_role_role_code_fk FOREIGN KEY (role_role_id) REFERENCES public.role(id);


--
-- TOC entry 2798 (class 2606 OID 39399)
-- Name: adresse departement_adresse_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.adresse
    ADD CONSTRAINT departement_adresse_fk FOREIGN KEY (departement_id) REFERENCES public.departement(departement_id);


--
-- TOC entry 2804 (class 2606 OID 39404)
-- Name: region pays_region_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.region
    ADD CONSTRAINT pays_region_fk FOREIGN KEY (pays_pays_code) REFERENCES public.pays(pays_code);


--
-- TOC entry 2803 (class 2606 OID 39414)
-- Name: departement region_departement_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.departement
    ADD CONSTRAINT region_departement_fk FOREIGN KEY (region_id) REFERENCES public.region(id);


--
-- TOC entry 2807 (class 2606 OID 39434)
-- Name: voie secteur_voie_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.voie
    ADD CONSTRAINT secteur_voie_fk FOREIGN KEY (secteur_id) REFERENCES public.secteur(secteur_id);


--
-- TOC entry 2800 (class 2606 OID 47755)
-- Name: commentaire site_commentaire___fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.commentaire
    ADD CONSTRAINT site_commentaire___fk FOREIGN KEY (site_id) REFERENCES public.site(site_id);


--
-- TOC entry 2808 (class 2606 OID 47795)
-- Name: voie site_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.voie
    ADD CONSTRAINT site_id_fk FOREIGN KEY (site_id) REFERENCES public.site(site_id);


--
-- TOC entry 2805 (class 2606 OID 39444)
-- Name: secteur site_secteur_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.secteur
    ADD CONSTRAINT site_secteur_fk FOREIGN KEY (site_site_id) REFERENCES public.site(site_id);


-- Completed on 2020-10-28 22:53:24

--
-- PostgreSQL database dump complete
--

