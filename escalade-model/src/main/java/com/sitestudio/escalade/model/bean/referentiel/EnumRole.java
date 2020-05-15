package com.sitestudio.escalade.model.bean.referentiel;

public enum EnumRole {
    ADMINISTRATEUR(1, "Administrateur", "Administrateur du site de l'association."),
    MEMBRE(2, "Membre", "Membre de l'association."),
    UTILISATEUR(3, "Utilisateur", "Utilisateur du site ayant un compte.");

    private int code;
    private String designation;
    private String description;

    EnumRole(Integer code, String designation, String description) {
    }

    public Integer getCode() {
        return code;
    }

    public void setCode(Integer code) {
        this.code = code;
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
                "code=" + code +
                ", designation='" + designation + '\'' +
                ", description='" + description + '\'' +
                '}';
    }
}
