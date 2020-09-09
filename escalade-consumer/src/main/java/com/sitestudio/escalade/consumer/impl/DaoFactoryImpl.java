package com.sitestudio.escalade.consumer.impl;

import com.sitestudio.escalade.consumer.contract.DaoFactory;
import com.sitestudio.escalade.consumer.contract.dao.*;
import com.sitestudio.escalade.consumer.impl.dao.AbstractDao;
import com.sitestudio.escalade.model.bean.referentiel.Cotation;
import com.sitestudio.escalade.model.bean.site.Site;
import com.sitestudio.escalade.model.bean.site.Voie;

import javax.inject.Inject;
import javax.inject.Named;

@Named("daoFactory")
public class DaoFactoryImpl extends AbstractDao implements DaoFactory {

    @Inject
    CompteDao compteDao;

    @Inject
    AdresseDao adresseDao;

    @Inject
    DepartementDao departementDao;

    @Inject
    RegionDao regionDao;

    @Inject
    PaysDao paysDao;

    @Inject
    SiteDao siteDao;

    @Inject
    SecteurDao secteurDao;

    @Inject
    VoieDao voieDao;

    @Inject
    TopoDao topoDao;

    @Inject
    CommentaireDao commentaireDao;

    @Inject
    UrlPhotoDao urlPhotoDao;

    @Inject
    CotationDao cotationDao;

    @Override
    public CompteDao getCompteDao() {
        return compteDao;
    }

    @Override
    public void setCompteDao(CompteDao compteDao) {
        this.compteDao = compteDao;
    }

    @Override
    public AdresseDao getAdresseDao() {
        return adresseDao;
    }

    @Override
    public void setAdresseDao(AdresseDao adresseDao) {
        this.adresseDao = adresseDao;
    }

    @Override
    public DepartementDao getDepartementDao() {
        return departementDao;
    }

    @Override
    public void setDepartementDao(DepartementDao departementDao) {
        this.departementDao = departementDao;
    }

    @Override
    public RegionDao getRegionDao() {
        return regionDao;
    }

    @Override
    public void setRegionDao(RegionDao regionDao) {
        this.regionDao = regionDao;
    }

    @Override
    public PaysDao getPaysDao() {
        return paysDao;
    }

    @Override
    public void setPaysDao(PaysDao paysDao) {
        this.paysDao = paysDao;
    }

    @Override
    public SiteDao getSiteDao() {
        return siteDao;
    }

    @Override
    public void setSiteDao(SiteDao siteDao) {
        this.siteDao = siteDao;
    }

    @Override
    public SecteurDao getSecteurDao() {
        return secteurDao;
    }

    @Override
    public void setSecteurDao(SecteurDao secteurDao) {
        this.secteurDao = secteurDao;
    }

    @Override
    public VoieDao getVoieDao() {
        return voieDao;
    }

    @Override
    public void setVoieDao(VoieDao voieDao) {
        this.voieDao = voieDao;
    }

    @Override
    public TopoDao getTopoDao() {
        return topoDao;
    }

    @Override
    public void setTopoDao(TopoDao topoDao) {
        this.topoDao = topoDao;
    }

    @Override
    public CommentaireDao getCommentaireDao() {
        return commentaireDao;
    }

    @Override
    public void setCommentaireDao(CommentaireDao commentaireDao) {
        this.commentaireDao = commentaireDao;
    }

    @Override
    public UrlPhotoDao getUrlPhotoDao() {
        return urlPhotoDao;
    }

    @Override
    public void setUrlPhotoDao(UrlPhotoDao urlPhotoDao) {
        this.urlPhotoDao = urlPhotoDao;
    }

    @Override
    public CotationDao getCotationDao() {
        return cotationDao;
    }

    @Override
    public void setCotationDao(CotationDao cotationDao) {
        this.cotationDao = cotationDao;
    }
}
