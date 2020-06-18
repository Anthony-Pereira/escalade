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
public class SecteurManagerImpl extends AbstractDao implements SecteurManager {

    @Override
    public Secteur getSecteur(Integer id) throws NotFoundException {
        return null;
    }

    @Override
    public Boolean createSecteur(Secteur secteur) throws NotFoundException {
        return null;
    }

    @Override
    public Boolean updateSecteur(Secteur secteur) throws NotFoundException {
        return null;
    }

    @Override
    public Boolean deleteSecteur(Secteur secteur) throws NotFoundException {
        return null;
    }
}
