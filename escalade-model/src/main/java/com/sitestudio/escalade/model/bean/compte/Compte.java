package com.sitestudio.escalade.model.bean.compte;

import com.sitestudio.escalade.model.bean.referentiel.EnumRole;

public class Compte {

    private Integer id;
    private String email;
    private String pseudo;
    private String motDePasse;

    private String nom;
    private String prenom;
    private String numTelephone;
    private Adresse adresse;

    private EnumRole role;

    public Compte() {
    }

    public Compte(Integer id) {
        this.id = id;
    }

    public Compte(Integer id, String email, String pseudo, String motDePasse, String nom, String prenom, String numTelephone, Adresse adresse, EnumRole role) {
        this.id = id;
        this.email = email;
        this.pseudo = pseudo;
        this.motDePasse = motDePasse;
        this.nom = nom;
        this.prenom = prenom;
        this.numTelephone = numTelephone;
        this.adresse = adresse;
        this.role = role;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPseudo() {
        return pseudo;
    }

    public void setPseudo(String pseudo) {
        this.pseudo = pseudo;
    }

    public String getMotDePasse() {
        return motDePasse;
    }

    public void setMotDePasse(String motDePasse) {
        this.motDePasse = motDePasse;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getPrenom() {
        return prenom;
    }

    public void setPrenom(String prenom) {
        this.prenom = prenom;
    }

    public String getNumTelephone() {
        return numTelephone;
    }

    public void setNumTelephone(String numTelephone) {
        this.numTelephone = numTelephone;
    }

    public Adresse getAdresse() {
        return adresse;
    }

    public void setAdresse(Adresse adresse) {
        this.adresse = adresse;
    }

    public EnumRole getRole() {
        return role;
    }

    public void setRole(EnumRole role) {
        this.role = role;
    }

    @Override
    public String toString() {
        return "Compte{" +
                "id=" + id +
                ", email='" + email + '\'' +
                ", pseudo='" + pseudo + '\'' +
                ", motDePasse='" + motDePasse + '\'' +
                ", nom='" + nom + '\'' +
                ", prenom='" + prenom + '\'' +
                ", numTelephone='" + numTelephone + '\'' +
                ", adresse=" + adresse +
                ", role=" + role +
                '}';
    }
}
