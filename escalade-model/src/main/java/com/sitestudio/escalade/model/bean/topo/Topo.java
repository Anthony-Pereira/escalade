package com.sitestudio.escalade.model.bean.topo;

import com.sitestudio.escalade.model.bean.compte.Compte;
import com.sitestudio.escalade.model.bean.site.Site;

public class Topo {

    private Integer id;
    private String nom;
    private String description;
    private Site site;
    private Compte propriétaire;

    public Topo(){}

    public Topo(Integer id, String nom, String description, Compte propriétaire) {
        this.id = id;
        this.nom = nom;
        this.description = description;
        this.propriétaire = propriétaire;
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

    public Compte getPropriétaire() {
        return propriétaire;
    }

    public void setPropriétaire(Compte propriétaire) {
        this.propriétaire = propriétaire;
    }

    @Override
    public String toString() {
        return "Topo{" +
                "id=" + id +
                ", nom='" + nom + '\'' +
                ", description='" + description + '\'' +
                ", site=" + site +
                ", propriétaire=" + propriétaire +
                '}';
    }
}
