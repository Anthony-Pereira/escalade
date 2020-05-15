package com.sitestudio.escalade.business.impl.manager;

import com.sitestudio.escalade.consumer.contract.DaoFactory;

/**
 * Classe abstraite en charge de récupérer L'objet DaoFactoryImpl.
 *
 * @author Anthony Pereira
 *
 */
public abstract class AbstractManager {

    private static DaoFactory daoFactory;

    public static DaoFactory getDaoFactory() {
        return daoFactory;
    }

    public static void setDaoFactory(DaoFactory daoFactory) {
        AbstractManager.daoFactory = daoFactory;
    }
}
