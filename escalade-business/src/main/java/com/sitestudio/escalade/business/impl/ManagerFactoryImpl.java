package com.sitestudio.escalade.business.impl;

import com.sitestudio.escalade.business.contract.ManagerFactory;
import com.sitestudio.escalade.business.contract.manager.*;
import com.sitestudio.escalade.model.bean.site.Site;

import javax.inject.Inject;
import javax.inject.Named;

/**
 * Classe qui retourne des Managers pour toutes les tables de la base de données.
 *
 * @author Anthony Pereira
 *
 */
@Named("managerFactory")
public class ManagerFactoryImpl implements ManagerFactory {

    @Inject
    private CompteManager compteManager;

    @Inject
    private AdresseManager adresseManager;

    @Inject
    private DepartementManager departementManager;

    @Inject
    private RegionManager regionManager;

    @Inject
    private PaysManager paysManager;

    @Inject
    private SiteManager siteManager;

    @Inject
    private SecteurManager secteurManager;

    @Inject
    private VoieManager voieManager;

    @Inject
    private CommentaireManager commentaireManager;

    @Inject
    private UrlPhotoManager urlPhotoManager;

    @Override
    public CompteManager getCompteManager() {
        return compteManager;
    }

    @Override
    public void setCompteManager(CompteManager compteManager) {
        this.compteManager = compteManager;
    }

    @Override
    public AdresseManager getAdresseManager() {
        return adresseManager;
    }

    @Override
    public void setAdresseManager(AdresseManager adresseManager) {
        this.adresseManager = adresseManager;
    }

    @Override
    public DepartementManager getDepartementManager() {
        return this.departementManager;
    }

    @Override
    public void setDepartementManager(DepartementManager departementManager) {

    }

    @Override
    public RegionManager getRegionManager() {
        return this.regionManager;
    }

    @Override
    public void setRegionManager(RegionManager regionManager) {

    }

    @Override
    public PaysManager getPaysManager() {
        return this.paysManager;
    }

    @Override
    public void setPaysManager(PaysManager paysManager) {

    }

    @Override
    public SiteManager getSiteManager() {
        return siteManager;
    }

    @Override
    public void setSiteManager(SiteManager siteManager) {
        this.siteManager = siteManager;
    }

    @Override
    public SecteurManager getSecteurManager() {
        return secteurManager;
    }

    @Override
    public void setSecteurManager(SecteurManager secteurManager) {
        this.secteurManager = secteurManager;
    }

    @Override
    public VoieManager getVoieManager() {
        return voieManager;
    }

    @Override
    public void setVoieManager(VoieManager voieManager) {
        this.voieManager = voieManager;
    }

    @Override
    public CommentaireManager getCommentaireManager() {
        return commentaireManager;
    }

    @Override
    public void setCommentaireManager(CommentaireManager commentaireManager) {
        this.commentaireManager = commentaireManager;
    }

    @Override
    public UrlPhotoManager getUrlPhotoManager() {
        return urlPhotoManager;
    }

    @Override
    public void setUrlPhotoManager(UrlPhotoManager urlPhotoManager) {
        this.urlPhotoManager = urlPhotoManager;
    }
}
