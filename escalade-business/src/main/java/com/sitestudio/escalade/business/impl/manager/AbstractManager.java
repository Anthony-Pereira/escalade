package com.sitestudio.escalade.business.impl.manager;

import com.sitestudio.escalade.consumer.contract.DaoFactory;
import com.sitestudio.escalade.model.bean.site.Commentaire;
import com.sitestudio.escalade.model.bean.site.Site;
import com.sitestudio.escalade.model.exception.FunctionalException;
import com.sitestudio.escalade.model.exception.NotFoundException;

import java.util.List;

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

    public List<Commentaire> getCommentaire(Site site) throws NotFoundException, FunctionalException {
        return getDaoFactory().getCommentaireDao().readAll(site);
    }
}
