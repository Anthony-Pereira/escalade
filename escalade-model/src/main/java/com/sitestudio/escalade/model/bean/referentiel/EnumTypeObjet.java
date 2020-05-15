package com.sitestudio.escalade.model.bean.referentiel;

public enum EnumTypeObjet {
    SITE(1, "Site/spot", "Site ou spot."),
    SECTEUR(2, "Secteur", "Secteur appartenant à un site."),
    VOIE(3, "voir", "Voie appartenant à un secteur.");

    private int code;
    private String designation;
    private String description;

    EnumTypeObjet(Integer code, String designation, String description) {
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
