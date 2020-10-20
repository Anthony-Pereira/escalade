package com.sitestudio.escalade.model.bean.site;

import com.sitestudio.escalade.model.bean.compte.Adresse;

import java.util.List;

public class Site {

    private Integer id;
    private String nom;
    private String description;
    private List<UrlPhoto> url;
    private Adresse adresse;
    private Boolean officielEscalade;

    public Site(){}

    public Site(Integer id) {this.id = id;}

    public Site(Integer id, String nom, String description, Adresse adresse, Boolean officielEscalade) {
        this.id = id;
        this.nom = nom;
        this.description = description;
        this.adresse = adresse;
        this.officielEscalade = officielEscalade;
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

    public Adresse getAdresse() {
        return adresse;
    }

    public void setAdresse(Adresse adresse) {
        this.adresse = adresse;
    }

    public Boolean getOfficielEscalade() {
        return officielEscalade;
    }

    public void setOfficielEscalade(Boolean officielEscalade) {
        this.officielEscalade = officielEscalade;
    }

    @Override
    public String toString() {
        return "Site{" +
                "id=" + id +
                ", nom='" + nom + '\'' +
                ", description='" + description + '\'' +
                ", url=" + url +
                ", adresse=" + adresse +
                ", officielEscalade=" + officielEscalade +
                '}';
    }
}
