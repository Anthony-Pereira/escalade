
CREATE SEQUENCE url_photo_id_seq;

CREATE TABLE url_photo (
                id NUMERIC NOT NULL DEFAULT nextval('url_photo_id_seq'),
                url VARCHAR NOT NULL,
                description VARCHAR NOT NULL,
                CONSTRAINT url_photo_id PRIMARY KEY (id)
);


ALTER SEQUENCE url_photo_id_seq OWNED BY url_photo.id;

CREATE SEQUENCE commentaire_id_seq;

CREATE TABLE commentaire (
                commentaire_id VARCHAR NOT NULL DEFAULT nextval('commentaire_id_seq'),
                commentaire VARCHAR NOT NULL,
                date DATE NOT NULL,
                CONSTRAINT commentaire_id PRIMARY KEY (commentaire_id)
);


ALTER SEQUENCE commentaire_id_seq OWNED BY commentaire.commentaire_id;

CREATE TABLE role (
                role_code INTEGER NOT NULL,
                designation VARCHAR NOT NULL,
                description VARCHAR NOT NULL,
                CONSTRAINT role_code PRIMARY KEY (role_code)
);


CREATE TABLE periode_jour (
                periode_jour_code INTEGER NOT NULL,
                designation VARCHAR NOT NULL,
                description VARCHAR NOT NULL,
                CONSTRAINT periode_jour_code PRIMARY KEY (periode_jour_code)
);


CREATE TABLE pays (
                pays_code NUMERIC NOT NULL,
                nom VARCHAR NOT NULL,
                code_alpha_2 VARCHAR NOT NULL,
                code_alpha_3 VARCHAR NOT NULL,
                CONSTRAINT pays_code PRIMARY KEY (pays_code)
);


CREATE SEQUENCE region_id_seq;
CREATE TABLE region (
                id NUMERIC NOT NULL DEFAULT nextval('region_id_seq'),
                nom VARCHAR NOT NULL,
                pays_pays_code NUMERIC NOT NULL,
                CONSTRAINT region_id PRIMARY KEY (id)
);
ALTER SEQUENCE region_id_seq OWNED BY region.id;


CREATE SEQUENCE departement_id_seq;

CREATE TABLE departement (
                departement_id NUMERIC NOT NULL DEFAULT nextval('departement_id_seq'),
                numero VARCHAR NOT NULL,
                nom VARCHAR NOT NULL,
                region_id NUMERIC NOT NULL,
                CONSTRAINT departement_id PRIMARY KEY (departement_id)
);
ALTER SEQUENCE departement_id_seq OWNED BY departement.departement_id;



CREATE SEQUENCE adresse_id_seq;
CREATE TABLE adresse (
                adresse_id NUMERIC NOT NULL DEFAULT nextval('adresse_id_seq'),
                numero VARCHAR NOT NULL,
                rue VARCHAR NOT NULL,
                code_postal VARCHAR NOT NULL,
                ville VARCHAR NOT NULL,
                departement_id NUMERIC NOT NULL,
                CONSTRAINT adresse_id PRIMARY KEY (adresse_id)
);
ALTER SEQUENCE adresse_id_seq OWNED BY adresse.adresse_id;


CREATE SEQUENCE public.compte_id_seq;
CREATE TABLE public.compte (
                               compte_id NUMERIC NOT NULL DEFAULT nextval('public.compte_id_seq'),
                               email VARCHAR NOT NULL,
                               pseudo VARCHAR,
                               mot_de_passe VARCHAR NOT NULL,
                               nom VARCHAR,
                               prenom VARCHAR,
                               num_telephone VARCHAR,
                               adresse_id NUMERIC,
                               role_role_code INTEGER NOT NULL,
                               CONSTRAINT compte_id PRIMARY KEY (compte_id)
);
ALTER SEQUENCE public.compte_id_seq OWNED BY public.compte.compte_id;


CREATE SEQUENCE site_id_seq;

CREATE TABLE site (
                site_id NUMERIC NOT NULL DEFAULT nextval('site_id_seq'),
                nom VARCHAR NOT NULL,
                description VARCHAR,
                adresse_id NUMERIC NOT NULL,
                CONSTRAINT site_id PRIMARY KEY (site_id)
);
COMMENT ON TABLE site IS 'L''adresse devra être saisie dans le même écran que le site et créé avant le site.';


ALTER SEQUENCE site_id_seq OWNED BY site.site_id;


CREATE SEQUENCE secteur_id_seq;

CREATE TABLE secteur (
                secteur_id NUMERIC NOT NULL DEFAULT nextval('secteur_id_seq'),
                nom VARCHAR NOT NULL,
                description VARCHAR NOT NULL,
                site_site_id NUMERIC NOT NULL,
                CONSTRAINT secteur_id PRIMARY KEY (secteur_id)
);


ALTER SEQUENCE secteur_id_seq OWNED BY secteur.secteur_id;


CREATE SEQUENCE public.voie_id_seq;

CREATE TABLE public.voie (
                             voie_id NUMERIC NOT NULL DEFAULT nextval('public.voie_id_seq'),
                             numero VARCHAR NOT NULL,
                             nom VARCHAR NOT NULL,
                             description VARCHAR NOT NULL,
                             secteur_id NUMERIC NOT NULL,
                             url_photo_id VARCHAR NOT NULL,
                             CONSTRAINT voie_id PRIMARY KEY (voie_id)
);

ALTER SEQUENCE public.voie_id_seq OWNED BY public.voie.voie_id;




CREATE TABLE url_photo_site (
                url_photo_site_url_photo_id NUMERIC NOT NULL,
                site_site_id NUMERIC NOT NULL
);

CREATE TABLE url_photo_secteur (
                url_photo_secteur_url_photo_id NUMERIC NOT NULL,
                secteur_secteur_id NUMERIC NOT NULL
);

CREATE TABLE url_photo_voie (
                url_photo_voie_url_photo_id NUMERIC NOT NULL,
                voie_voie_id NUMERIC NOT NULL
);



CREATE TABLE commentaire_site (
                commentaire_site_commentaire_id VARCHAR NOT NULL,
                commentaire_site_site_id NUMERIC NOT NULL
);
CREATE TABLE commentaire_secteur (
                commentaire_secteur_commentaire_id VARCHAR NOT NULL,
                commentaire_secteur_secteur_id NUMERIC NOT NULL
);
CREATE TABLE commentaire_voie (
                commentaire_voie_commentaire_id VARCHAR NOT NULL,
                commentaire_voie_voie_id NUMERIC NOT NULL
);








CREATE SEQUENCE topo_id_seq;
CREATE TABLE topo (
                topo_id NUMERIC NOT NULL DEFAULT nextval('topo_id_seq'),
                compte_id NUMERIC NOT NULL,
                nom VARCHAR NOT NULL,
                description VARCHAR NOT NULL,
                site_id NUMERIC NOT NULL,
                proprietaire_id NUMERIC NOT NULL,
                CONSTRAINT topo_id PRIMARY KEY (topo_id)
);
ALTER SEQUENCE topo_id_seq OWNED BY topo.topo_id;



CREATE SEQUENCE reservation_id_seq;
CREATE TABLE reservation (
                reservation_id NUMERIC NOT NULL DEFAULT nextval('reservation_id_seq'),
                topo_id NUMERIC NOT NULL,
                date_reservation DATE NOT NULL,
                reservation_periode_jour_code INTEGER NOT NULL,
                utilisateur_id NUMERIC NOT NULL,
                CONSTRAINT reservation_id PRIMARY KEY (reservation_id)
);
ALTER SEQUENCE reservation_id_seq OWNED BY reservation.reservation_id;




