package com.sitestudio.escalade.consumer.impl;

import com.sitestudio.escalade.consumer.contract.DaoFactory;
import com.sitestudio.escalade.consumer.contract.dao.AdresseDao;
import com.sitestudio.escalade.consumer.contract.dao.CompteDao;

import javax.inject.Inject;
import javax.inject.Named;

@Named("daoFactory")
public class DaoFactoryImpl implements DaoFactory {

    @Inject
    CompteDao compteDao;

    @Inject
    AdresseDao adresseDao;

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
}
