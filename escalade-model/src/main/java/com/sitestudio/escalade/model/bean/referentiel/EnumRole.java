package com.sitestudio.escalade.model.bean.referentiel;

public enum EnumRole {
    ADMINISTRATEUR(1, "Administrateur", "Administrateur du site de l'association."),
    MEMBRE(2, "Membre", "Membre de l'association."),
    UTILISATEUR(3, "Utilisateur", "Utilisateur du site ayant un compte.");

    private int id;
    private String designation;
    private String description;

    EnumRole(Integer id) {
        this.id = id;
    }

    EnumRole(Integer id, String designation, String description) {
        this.id = id;
        this.designation = designation;
        this.description = description;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getDesignation() {
        return designation;
    }

    public void setDesignation(String designation) {
        this.designation = designation;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    @Override
    public String toString() {
        return "EnumRole{" +
                "code=" + id +
                ", designation='" + designation + '\'' +
                ", description='" + description + '\'' +
                '}';
    }
}
