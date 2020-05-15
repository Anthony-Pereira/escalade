package com.sitestudio.escalade.model.bean.site;

import com.sitestudio.escalade.model.bean.compte.Adresse;

import java.util.List;

public class Site {

    private Integer id;
    private String nom;
    private String description;
    private List<UrlPhoto> url;
    private Adresse adresse;

    public Site(Integer id, String nom, String description, List<UrlPhoto> url, Adresse adresse) {
        this.id = id;
        this.nom = nom;
        this.description = description;
        this.url = url;
        this.adresse = adresse;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
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

    public void setDescription(String description) {
        this.description = description;
    }

    public List<UrlPhoto> getUrl() {
        return url;
    }

    public void setUrl(List<UrlPhoto> url) {
        this.url = url;
    }

    public Adresse getAdresse() {
        return adresse;
    }

    public void setAdresse(Adresse adresse) {
        this.adresse = adresse;
    }

    @Override
    public String toString() {
        return "Site{" +
                "id=" + id +
                ", nom='" + nom + '\'' +
                ", description='" + description + '\'' +
                ", url=" + url +
                ", adresse=" + adresse +
                '}';
    }
}
