package com.sitestudio.escalade.model.bean.referentiel;

public class Departement {

    private Integer id;
    private String numero;
    private String nom;
    private Region region;

    public Departement(){}

    public Departement(Integer id){ this.id = id; }

    public Departement(Integer id, String numero, String nom, Region region) {
        this.id = id;
        this.numero = numero;
        this.nom = nom;
        this.region = region;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getNumero() {
        return numero;
    }

    public void setNumero(String numero) {
        this.numero = numero;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public Region getRegion() {
        return region;
    }

    public void setRegion(Region region) {
        this.region = region;
    }

    @Override
    public String toString() {
        return "Departement{" +
                "id=" + id +
                ", numero='" + numero + '\'' +
                ", nom='" + nom + '\'' +
                ", region=" + region +
                '}';
    }
}
