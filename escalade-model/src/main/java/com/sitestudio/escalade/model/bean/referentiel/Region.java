package com.sitestudio.escalade.model.bean.referentiel;

public class Region {

    private Integer id;
    private String nom;
    private Pays pays;

    public Region(Integer id, String nom, Pays pays) {
        this.id = id;
        this.nom = nom;
        this.pays = pays;
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

    public Pays getPays() {
        return pays;
    }

    public void setPays(Pays pays) {
        this.pays = pays;
    }

    @Override
    public String toString() {
        return "Region{" +
                "id=" + id +
                ", nom='" + nom + '\'' +
                ", pays=" + pays +
                '}';
    }
}
