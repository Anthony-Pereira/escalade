package com.sitestudio.escalade.consumer.impl;

import com.sitestudio.escalade.consumer.contract.DaoFactory;
import com.sitestudio.escalade.consumer.contract.dao.*;

import javax.inject.Inject;
import javax.inject.Named;

@Named("daoFactory")
public class DaoFactoryImpl implements DaoFactory {

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
    public void setDepartementDao(AdresseDao adresseDao) {
        this.adresseDao = adresseDao;
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
}
