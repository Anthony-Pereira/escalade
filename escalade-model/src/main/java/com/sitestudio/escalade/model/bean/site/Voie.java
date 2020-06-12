package com.sitestudio.escalade.model.bean.site;

import java.util.List;

public class Voie {

    private Integer id;
    private Integer numero;
    private String nom;
    private String description;
    private Secteur secteur;
    private List<UrlPhoto> url;
    private Integer longueur;
    /**
     * Les difficultés vont de 3a à 3c, 4a à 4c, ..., 9a à 9c
     * cf :L'URL du billet de blog dans le README.md.
     */
    public String difficulte;

    public Voie(){}

    public Voie(Integer id, Integer numero, String nom, String description, Secteur secteur, List<UrlPhoto> url, Integer longueur, String difficulte) {
        this.id = id;
        this.numero = numero;
        this.nom = nom;
        this.description = description;
        this.secteur = secteur;
        this.url = url;
        this.longueur = longueur;
        this.difficulte = difficulte;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getNumero() {
        return numero;
    }

    public void setNumero(Integer numero) {
        this.numero = numero;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getDescription() {
        return description;
    }

    public Secteur getSecteur() {
        return secteur;
    }

    public void setSecteur(Secteur secteur) {
        this.secteur = secteur;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public List<UrlPhoto> getUrl() {
        return url;
    }

    public void setUrl(List<UrlPhoto> url) {
        this.url = url;
    }

    public Integer getLongueur() {
        return longueur;
    }

    public void setLongueur(Integer longueur) {
        this.longueur = longueur;
    }

    public String getDifficulte() {
        return difficulte;
    }

    public void setDifficulte(String difficulte) {
        this.difficulte = difficulte;
    }

    @Override
    public String toString() {
        return "Voie{" +
                "id=" + id +
                ", numero=" + numero +
                ", nom='" + nom + '\'' +
                ", description='" + description + '\'' +
                ", secteur=" + secteur +
                ", url=" + url +
                ", longueur=" + longueur +
                ", difficulte='" + difficulte + '\'' +
                '}';
    }
}
