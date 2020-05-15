package com.sitestudio.escalade.model.bean.referentiel;

public enum EnumPeriodeJour {
    MATIN(1, "Matin", "Période de la journée : Matinée"),
    APRESMIDI(2, "Après-midi", "Période de la journée : Après-midi.");

    private int code;
    private String designation;
    private String description;

    EnumPeriodeJour(Integer code, String designation, String description) {
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
