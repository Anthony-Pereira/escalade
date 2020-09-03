package com.sitestudio.escalade.model.bean.site;

import com.sitestudio.escalade.model.bean.compte.Compte;
import com.sitestudio.escalade.model.bean.referentiel.EnumTypeObjet;

import java.time.LocalDateTime;

public class Commentaire {

    private Integer id;
    private String commentaire;
    private LocalDateTime date;
    private Integer compte;
    private Integer site;


    public Commentaire(){}

    public Commentaire(Integer id){
        this.id = id;
    }

    public Commentaire(Integer id, String commentaire, LocalDateTime date, Integer compte, Integer site) {
        this.id = id;
        this.commentaire = commentaire;
        this.date = date;
        this.site = site;
        this.compte = compte;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getCommentaire() {
        return commentaire;
    }

    public void setCommentaire(String commentaire) {
        this.commentaire = commentaire;
    }

    public LocalDateTime getDate() {
        return date;
    }

    public void setDate(LocalDateTime date) {
        this.date = date;
    }

    public Integer getCompte() {
        return compte;
    }

    public void setCompte(Integer compte) {
        this.compte = compte;
    }

    public Integer getSite() {
        return site;
    }

    public void setSite(Integer site) {
        this.site = site;
    }

    @Override
    public String toString() {
        return "Commentaire{" +
                "id = " + id +
                ", commentaire = '" + commentaire + '\'' +
                ", date = " + date +
                ", compte = " + compte +
                ", site = " + site +
                '}';
    }
}
