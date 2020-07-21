package com.sitestudio.escalade.model.bean.site;

import java.util.List;

public class Secteur {

    private Integer id;
    private String nom;
    private String description;
    private Site site;
    private List<UrlPhoto> url;

    public Secteur(){}

    public Secteur(Integer id){this.id = id;}

    public Secteur(Integer id, String nom, String description, List<UrlPhoto> url) {
        this.id = id;
        this.nom = nom;
        this.description = description;
        this.url = url;
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

    public Site getSite() {
        return site;
    }

    public void setSite(Site site) {
        this.site = site;
    }

    public List<UrlPhoto> getUrl() {
        return url;
    }

    public void setUrl(List<UrlPhoto> url) {
        this.url = url;
    }

    @Override
    public String toString() {
        return "Secteur{" +
                "id=" + id +
                ", nom='" + nom + '\'' +
                ", description='" + description + '\'' +
                ", site=" + site +
                ", url=" + url +
                '}';
    }
}
