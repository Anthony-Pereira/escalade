package com.sitestudio.escalade.model.bean.site;

public class UrlPhoto {

    private Integer id;
    private String url;
    private String description;

    public UrlPhoto(){}

    public UrlPhoto(Integer id, String url, String description) {
        this.id = id;
        this.url = url;
        this.description = description;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    @Override
    public String toString() {
        return "UrlPhoto{" +
                "id=" + id +
                ", url='" + url + '\'' +
                ", description='" + description + '\'' +
                '}';
    }
}
