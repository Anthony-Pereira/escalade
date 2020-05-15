package com.sitestudio.escalade.consumer.impl;

import com.sitestudio.escalade.consumer.contract.DaoFactory;
import com.sitestudio.escalade.consumer.contract.dao.CompteDao;

import javax.inject.Inject;
import javax.inject.Named;

@Named("daoFactory")
public class DaoFactoryImpl implements DaoFactory {

    @Inject
    CompteDao compteDao;

    @Override
    public CompteDao getCompteDao() {
        return compteDao;
    }

    @Override
    public void setCompteDao(CompteDao compteDao) {
        this.compteDao = compteDao;
    }

}
