
CREATE SEQUENCE public.url_photo_id_seq;

CREATE TABLE public.url_photo (
                                  id NUMERIC NOT NULL DEFAULT nextval('public.url_photo_id_seq'),
                                  url VARCHAR NOT NULL,
                                  description VARCHAR NOT NULL,
                                  CONSTRAINT url_photo_id PRIMARY KEY (id)
);


ALTER SEQUENCE public.url_photo_id_seq OWNED BY public.url_photo.id;

CREATE SEQUENCE public.commentaire_id_seq;

CREATE TABLE public.commentaire (
                                    commentaire_id VARCHAR NOT NULL DEFAULT nextval('public.commentaire_id_seq'),
                                    commentaire VARCHAR NOT NULL,
                                    date DATE NOT NULL,
                                    CONSTRAINT commentaire_id PRIMARY KEY (commentaire_id)
);


ALTER SEQUENCE public.commentaire_id_seq OWNED BY public.commentaire.commentaire_id;

CREATE TABLE public.role (
                             role_code INTEGER NOT NULL,
                             designation VARCHAR NOT NULL,
                             description VARCHAR NOT NULL,
                             CONSTRAINT code PRIMARY KEY (role_code)
);


CREATE TABLE public.periode_jour (
                                     periode_jour_code INTEGER NOT NULL,
                                     designation VARCHAR NOT NULL,
                                     description VARCHAR NOT NULL,
                                     CONSTRAINT code PRIMARY KEY (periode_jour_code)
);


CREATE TABLE public.pays (
                             pays_code NUMERIC NOT NULL,
                             nom VARCHAR NOT NULL,
                             code_alpha_2 VARCHAR NOT NULL,
                             code_alpha_3 VARCHAR NOT NULL,
                             CONSTRAINT pays_code PRIMARY KEY (pays_code)
);


CREATE SEQUENCE public.region_id_seq;

CREATE TABLE public.region (
                               id NUMERIC NOT NULL DEFAULT nextval('public.region_id_seq'),
                               nom VARCHAR NOT NULL,
                               pays_pays_code NUMERIC NOT NULL,
                               CONSTRAINT region_id PRIMARY KEY (id)
);


ALTER SEQUENCE public.region_id_seq OWNED BY public.region.id;

CREATE SEQUENCE public.departement_id_seq;

CREATE TABLE public.departement (
                                    departement_id NUMERIC NOT NULL DEFAULT nextval('public.departement_id_seq'),
                                    numero VARCHAR NOT NULL,
                                    nom VARCHAR NOT NULL,
                                    region_id NUMERIC NOT NULL,
                                    CONSTRAINT departement_id PRIMARY KEY (departement_id)
);


ALTER SEQUENCE public.departement_id_seq OWNED BY public.departement.departement_id;

CREATE SEQUENCE public.adresse_id_seq;

CREATE TABLE public.adresse (
                                adresse_id NUMERIC NOT NULL DEFAULT nextval('public.adresse_id_seq'),
                                numero VARCHAR NOT NULL,
                                rue VARCHAR NOT NULL,
                                code_postal VARCHAR NOT NULL,
                                ville VARCHAR NOT NULL,
                                departement_id NUMERIC NOT NULL,
                                CONSTRAINT adresse_id PRIMARY KEY (adresse_id)
);


ALTER SEQUENCE public.adresse_id_seq OWNED BY public.adresse.adresse_id;

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

CREATE SEQUENCE public.site_id_seq;

CREATE TABLE public.site (
                             site_id NUMERIC NOT NULL DEFAULT nextval('public.site_id_seq'),
                             nom VARCHAR NOT NULL,
                             description VARCHAR,
                             adresse_id NUMERIC NOT NULL,
                             CONSTRAINT site_id PRIMARY KEY (site_id)
);
COMMENT ON TABLE public.site IS 'L''adresse devra être saisie dans le même écran que le site et créé avant le site.';


ALTER SEQUENCE public.site_id_seq OWNED BY public.site.site_id;

CREATE TABLE public.url_photo_site (
                                       url_photo_site_url_photo_id NUMERIC NOT NULL,
                                       site_site_id NUMERIC NOT NULL
);


CREATE SEQUENCE public.secteur_id_seq;

CREATE TABLE public.secteur (
                                secteur_id NUMERIC NOT NULL DEFAULT nextval('public.secteur_id_seq'),
                                nom VARCHAR NOT NULL,
                                description VARCHAR NOT NULL,
                                site_site_id NUMERIC NOT NULL,
                                CONSTRAINT secteur_id PRIMARY KEY (secteur_id)
);


ALTER SEQUENCE public.secteur_id_seq OWNED BY public.secteur.secteur_id;

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

CREATE TABLE public.url_photo_voie (
                                       url_photo_voie_url_photo_id NUMERIC NOT NULL,
                                       voie_voie_id NUMERIC NOT NULL
);


CREATE TABLE public.commentaire_voie (
                                         commentaire_voie_commentaire_id VARCHAR NOT NULL,
                                         commentaire_voie_voie_id NUMERIC NOT NULL
);


CREATE TABLE public.url_photo_secteur (
                                          url_photo_secteur_url_photo_id NUMERIC NOT NULL,
                                          secteur_secteur_id NUMERIC NOT NULL
);


CREATE TABLE public.commentaire_secteur (
                                            commentaire_secteur_commentaire_id VARCHAR NOT NULL,
                                            commentaire_secteur_secteur_id NUMERIC NOT NULL
);


CREATE SEQUENCE public.topo_id_seq;

CREATE TABLE public.topo (
                             topo_id NUMERIC NOT NULL DEFAULT nextval('public.topo_id_seq'),
                             compte_id NUMERIC NOT NULL,
                             nom VARCHAR NOT NULL,
                             description VARCHAR NOT NULL,
                             site_id NUMERIC NOT NULL,
                             proprietaire_id NUMERIC NOT NULL,
                             CONSTRAINT topo_id PRIMARY KEY (topo_id)
);


ALTER SEQUENCE public.topo_id_seq OWNED BY public.topo.topo_id;

CREATE SEQUENCE public.reservation_id_seq;

CREATE TABLE public.reservation (
                                    reservation_id NUMERIC NOT NULL DEFAULT nextval('public.reservation_id_seq'),
                                    topo_id NUMERIC NOT NULL,
                                    date_reservation DATE NOT NULL,
                                    reservation_periode_jour_code INTEGER NOT NULL,
                                    utilisateur_id NUMERIC NOT NULL,
                                    CONSTRAINT reservation_id PRIMARY KEY (reservation_id)
);


ALTER SEQUENCE public.reservation_id_seq OWNED BY public.reservation.reservation_id;

CREATE TABLE public.commentaire_site (
                                         commentaire_site_commentaire_id VARCHAR NOT NULL,
                                         commentaire_site_site_id NUMERIC NOT NULL
);


ALTER TABLE public.url_photo_site ADD CONSTRAINT url_photo_url_site_fk
    FOREIGN KEY (url_photo_site_url_photo_id)
        REFERENCES public.url_photo (id)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION
        NOT DEFERRABLE;

ALTER TABLE public.url_photo_secteur ADD CONSTRAINT url_photo_url_photo_secteur_fk
    FOREIGN KEY (url_photo_secteur_url_photo_id)
        REFERENCES public.url_photo (id)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION
        NOT DEFERRABLE;

ALTER TABLE public.url_photo_voie ADD CONSTRAINT url_photo_url_photo_voie_fk
    FOREIGN KEY (url_photo_voie_url_photo_id)
        REFERENCES public.url_photo (id)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION
        NOT DEFERRABLE;

ALTER TABLE public.commentaire_site ADD CONSTRAINT commentaire_commentaire_site_fk
    FOREIGN KEY (commentaire_site_commentaire_id)
        REFERENCES public.commentaire (commentaire_id)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION
        NOT DEFERRABLE;

ALTER TABLE public.commentaire_secteur ADD CONSTRAINT commentaire_commentaire_secteur_fk
    FOREIGN KEY (commentaire_secteur_commentaire_id)
        REFERENCES public.commentaire (commentaire_id)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION
        NOT DEFERRABLE;

ALTER TABLE public.commentaire_voie ADD CONSTRAINT commentaire_commentaire_voie_fk
    FOREIGN KEY (commentaire_voie_commentaire_id)
        REFERENCES public.commentaire (commentaire_id)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION
        NOT DEFERRABLE;

ALTER TABLE public.compte ADD CONSTRAINT role_compte_fk
    FOREIGN KEY (role_role_code)
        REFERENCES public.role (id)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION
        NOT DEFERRABLE;

ALTER TABLE public.reservation ADD CONSTRAINT periode_jour_reservation_fk
    FOREIGN KEY (reservation_periode_jour_code)
        REFERENCES public.periode_jour (periode_jour_code)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION
        NOT DEFERRABLE;

ALTER TABLE public.region ADD CONSTRAINT pays_region_fk
    FOREIGN KEY (pays_pays_code)
        REFERENCES public.pays (pays_code)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION
        NOT DEFERRABLE;

ALTER TABLE public.departement ADD CONSTRAINT region_departement_fk
    FOREIGN KEY (region_id)
        REFERENCES public.region (id)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION
        NOT DEFERRABLE;

ALTER TABLE public.adresse ADD CONSTRAINT departement_adresse_fk
    FOREIGN KEY (departement_id)
        REFERENCES public.departement (departement_id)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION
        NOT DEFERRABLE;

ALTER TABLE public.site ADD CONSTRAINT adresse_site_fk
    FOREIGN KEY (adresse_id)
        REFERENCES public.adresse (adresse_id)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION
        NOT DEFERRABLE;

ALTER TABLE public.compte ADD CONSTRAINT adresse_compte_fk
    FOREIGN KEY (adresse_id)
        REFERENCES public.adresse (adresse_id)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION
        NOT DEFERRABLE;

ALTER TABLE public.topo ADD CONSTRAINT compte_topo_fk
    FOREIGN KEY (proprietaire_id)
        REFERENCES public.compte (compte_id)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION
        NOT DEFERRABLE;

ALTER TABLE public.reservation ADD CONSTRAINT compte_reservation_fk
    FOREIGN KEY (utilisateur_id)
        REFERENCES public.compte (compte_id)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION
        NOT DEFERRABLE;

ALTER TABLE public.commentaire_site ADD CONSTRAINT site_commentaire_site_fk
    FOREIGN KEY (commentaire_site_site_id)
        REFERENCES public.site (site_id)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION
        NOT DEFERRABLE;

ALTER TABLE public.topo ADD CONSTRAINT site_topo_fk
    FOREIGN KEY (site_id)
        REFERENCES public.site (site_id)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION
        NOT DEFERRABLE;

ALTER TABLE public.secteur ADD CONSTRAINT site_secteur_fk
    FOREIGN KEY (site_site_id)
        REFERENCES public.site (site_id)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION
        NOT DEFERRABLE;

ALTER TABLE public.url_photo_site ADD CONSTRAINT site_url_photo_site_fk
    FOREIGN KEY (site_site_id)
        REFERENCES public.site (site_id)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION
        NOT DEFERRABLE;

ALTER TABLE public.commentaire_secteur ADD CONSTRAINT secteur_commentaire_secteur_fk
    FOREIGN KEY (commentaire_secteur_secteur_id)
        REFERENCES public.secteur (secteur_id)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION
        NOT DEFERRABLE;

ALTER TABLE public.url_photo_secteur ADD CONSTRAINT secteur_url_photo_secteur_fk
    FOREIGN KEY (secteur_secteur_id)
        REFERENCES public.secteur (secteur_id)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION
        NOT DEFERRABLE;

ALTER TABLE public.voie ADD CONSTRAINT secteur_voie_fk
    FOREIGN KEY (secteur_id)
        REFERENCES public.secteur (secteur_id)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION
        NOT DEFERRABLE;

ALTER TABLE public.commentaire_voie ADD CONSTRAINT voie_commentaire_voie_fk
    FOREIGN KEY (commentaire_voie_voie_id)
        REFERENCES public.voie (voie_id)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION
        NOT DEFERRABLE;

ALTER TABLE public.url_photo_voie ADD CONSTRAINT voie_url_photo_voie_fk
    FOREIGN KEY (voie_voie_id)
        REFERENCES public.voie (voie_id)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION
        NOT DEFERRABLE;

ALTER TABLE public.reservation ADD CONSTRAINT topo_reservation_fk
    FOREIGN KEY (topo_id)
        REFERENCES public.topo (topo_id)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION
        NOT DEFERRABLE;