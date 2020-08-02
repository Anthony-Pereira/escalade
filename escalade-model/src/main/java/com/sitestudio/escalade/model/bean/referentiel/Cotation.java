package com.sitestudio.escalade.model.bean.referentiel;

public class Cotation {

    public Cotation(){};

    public Cotation(Integer id){this.id = id;}

    private Integer id;

    private String difficulte;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getDifficulte() {
        return difficulte;
    }

    public void setDifficulte(String difficulte) {
        this.difficulte = difficulte;
    }
}
