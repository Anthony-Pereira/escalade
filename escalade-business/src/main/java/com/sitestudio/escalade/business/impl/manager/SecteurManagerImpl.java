package com.sitestudio.escalade.business.impl.manager;

import com.sitestudio.escalade.business.contract.manager.SecteurManager;
import com.sitestudio.escalade.consumer.impl.dao.AbstractDao;
import com.sitestudio.escalade.model.bean.site.Secteur;
import com.sitestudio.escalade.model.exception.NotFoundException;

import javax.inject.Named;

/**
 * Implémentation de l'interface manager "SecteurManager".
 *
 * @author Anthony Pereira
 */
@Named
public class SecteurManagerImpl extends AbstractManager implements SecteurManager {

    @Override
    public Secteur getSecteur(Integer id) throws NotFoundException {
        return getDaoFactory().getSecteurDao().read(id);
    }

    @Override
    public Boolean createSecteur(Secteur secteur) throws NotFoundException {
        return getDaoFactory().getSecteurDao().create(secteur);
    }

    @Override
    public Boolean updateSecteur(Secteur secteur) throws NotFoundException {
        return getDaoFactory().getSecteurDao().update(secteur);
    }

    @Override
    public Boolean deleteSecteur(Secteur secteur) throws NotFoundException {
        return getDaoFactory().getSecteurDao().delete(secteur);
    }
}
