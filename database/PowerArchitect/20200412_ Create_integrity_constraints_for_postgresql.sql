ALTER TABLE region ADD CONSTRAINT pays_region_fk
FOREIGN KEY (pays_pays_code)
REFERENCES pays (pays_code)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE departement ADD CONSTRAINT region_departement_fk
FOREIGN KEY (region_id)
REFERENCES region (id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE adresse ADD CONSTRAINT departement_adresse_fk
FOREIGN KEY (departement_id)
REFERENCES departement (departement_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;



ALTER TABLE compte ADD CONSTRAINT adresse_compte_fk
FOREIGN KEY (adresse_id)
REFERENCES adresse (adresse_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE compte ADD CONSTRAINT role_compte_fk
FOREIGN KEY (role_role_code)
REFERENCES role (id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;





ALTER TABLE site ADD CONSTRAINT adresse_site_fk
FOREIGN KEY (adresse_id)
REFERENCES adresse (adresse_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE secteur ADD CONSTRAINT site_secteur_fk
FOREIGN KEY (site_site_id)
REFERENCES site (site_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE voie ADD CONSTRAINT secteur_voie_fk
FOREIGN KEY (secteur_id)
REFERENCES secteur (secteur_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;




ALTER TABLE commentaire_site ADD CONSTRAINT site_commentaire_site_fk
FOREIGN KEY (commentaire_site_site_id)
REFERENCES site (site_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE commentaire_secteur ADD CONSTRAINT secteur_commentaire_secteur_fk
FOREIGN KEY (commentaire_secteur_secteur_id)
REFERENCES secteur (secteur_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE commentaire_voie ADD CONSTRAINT voie_commentaire_voie_fk
FOREIGN KEY (commentaire_voie_voie_id)
REFERENCES voie (voie_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE commentaire_site ADD CONSTRAINT commentaire_commentaire_site_fk
FOREIGN KEY (commentaire_site_commentaire_id)
REFERENCES commentaire (commentaire_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE commentaire_secteur ADD CONSTRAINT commentaire_commentaire_secteur_fk
FOREIGN KEY (commentaire_secteur_commentaire_id)
REFERENCES commentaire (commentaire_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE commentaire_voie ADD CONSTRAINT commentaire_commentaire_voie_fk
FOREIGN KEY (commentaire_voie_commentaire_id)
REFERENCES commentaire (commentaire_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;






ALTER TABLE url_photo_site ADD CONSTRAINT site_url_photo_site_fk
FOREIGN KEY (site_site_id)
REFERENCES site (site_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE url_photo_secteur ADD CONSTRAINT secteur_url_photo_secteur_fk
FOREIGN KEY (secteur_secteur_id)
REFERENCES secteur (secteur_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE url_photo_voie ADD CONSTRAINT voie_url_photo_voie_fk
FOREIGN KEY (voie_voie_id)
REFERENCES voie (voie_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE url_photo_site ADD CONSTRAINT url_photo_url_site_fk
FOREIGN KEY (url_photo_site_url_photo_id)
REFERENCES url_photo (id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE url_photo_secteur ADD CONSTRAINT url_photo_url_photo_secteur_fk
FOREIGN KEY (url_photo_secteur_url_photo_id)
REFERENCES url_photo (id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE url_photo_voie ADD CONSTRAINT url_photo_url_photo_voie_fk
FOREIGN KEY (url_photo_voie_url_photo_id)
REFERENCES url_photo (id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;



ALTER TABLE topo ADD CONSTRAINT compte_topo_fk
FOREIGN KEY (proprietaire_id)
REFERENCES compte (compte_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE topo ADD CONSTRAINT site_topo_fk
FOREIGN KEY (site_id)
REFERENCES site (site_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;




ALTER TABLE reservation ADD CONSTRAINT compte_reservation_fk
FOREIGN KEY (utilisateur_id)
REFERENCES compte (compte_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE reservation ADD CONSTRAINT topo_reservation_fk
FOREIGN KEY (topo_id)
REFERENCES topo (topo_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE reservation ADD CONSTRAINT periode_jour_reservation_fk
FOREIGN KEY (reservation_periode_jour_code)
REFERENCES periode_jour (periode_jour_code)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;


