package com.sitestudio.escalade.model.bean.topo;

import com.sitestudio.escalade.model.bean.compte.Compte;

public class Topo {

    private Integer id;
    private String nom;
    private String description;
    private String lieu;
    private Integer parution;
    private Integer reservation;
    private Compte compte;
    private Compte emprunteur;

    public Topo(){}

    public Topo(Integer id){this.id=id;}

    public Topo(Integer id, String nom, String description,String lieu, Integer parution,Integer reservation, Compte compte, Compte emprunteur) {
        this.id = id;
        this.nom = nom;
        this.description = description;
        this.lieu = lieu;
        this.parution = parution;
        this.compte = compte;
        this.emprunteur = emprunteur;
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

    public String getLieu() {
        return lieu;
    }

    public void setLieu(String lieu) {
        this.lieu = lieu;
    }

    public Integer getParution() {
        return parution;
    }

    public void setParution(Integer parution) {
        this.parution = parution;
    }

    public Integer getReservation() {
        return reservation;
    }

    public void setReservation(Integer reservation) {
        this.reservation = reservation;
    }

    public Compte getCompte() {
        return compte;
    }

    public void setCompte(Compte compte) {
        this.compte = compte;
    }

    public Compte getEmprunteur() {
        return emprunteur;
    }

    public void setEmprunteur(Compte emprunteur) {
        this.emprunteur = emprunteur;
    }

    @Override
    public String toString() {
        return "Topo{" +
                "id=" + id +
                ", nom='" + nom + '\'' +
                ", description='" + description + '\'' +
                ", lieu=" + lieu + '\'' +
                ", reservation=" + reservation + '\'' +
                ", parution=" + parution + '\'' +
                ", emprunteur=" + emprunteur +
                '}';
    }
}
