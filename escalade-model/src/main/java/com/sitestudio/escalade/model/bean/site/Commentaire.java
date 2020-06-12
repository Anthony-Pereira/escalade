package com.sitestudio.escalade.model.bean.site;

import com.sitestudio.escalade.model.bean.compte.Compte;
import com.sitestudio.escalade.model.bean.referentiel.EnumTypeObjet;

import java.time.LocalDateTime;

public class Commentaire {

    private Integer id;
    private String commentaire;
    private LocalDateTime date;
    private EnumTypeObjet typeObjet;
    private Integer idTypeObjet;
    private Compte utilisateur;

    public Commentaire(){}

    public Commentaire(Integer id, String commentaire, LocalDateTime date, EnumTypeObjet typeObjet, Integer idTypeObjet, Compte utilisateur) {
        this.id = id;
        this.commentaire = commentaire;
        this.date = date;
        this.typeObjet = typeObjet;
        this.idTypeObjet = idTypeObjet;
        this.utilisateur = utilisateur;
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

    public EnumTypeObjet getTypeObjet() {
        return typeObjet;
    }

    public void setTypeObjet(EnumTypeObjet typeObjet) {
        this.typeObjet = typeObjet;
    }

    public Integer getIdTypeObjet() {
        return idTypeObjet;
    }

    public void setIdTypeObjet(Integer idTypeObjet) {
        this.idTypeObjet = idTypeObjet;
    }

    public Compte getUtilisateur() {
        return utilisateur;
    }

    public void setUtilisateur(Compte utilisateur) {
        this.utilisateur = utilisateur;
    }

    @Override
    public String toString() {
        return "Commentaire{" +
                "id=" + id +
                ", commentaire='" + commentaire + '\'' +
                ", date=" + date +
                ", typeObjet=" + typeObjet +
                ", idTypeObjet=" + idTypeObjet +
                ", utilisateur=" + utilisateur +
                '}';
    }
}
