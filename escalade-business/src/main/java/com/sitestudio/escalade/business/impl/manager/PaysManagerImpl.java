package com.sitestudio.escalade.business.impl.manager;

import com.sitestudio.escalade.business.contract.manager.PaysManager;
import com.sitestudio.escalade.model.bean.referentiel.Pays;
import com.sitestudio.escalade.model.bean.referentiel.Region;
import com.sitestudio.escalade.model.exception.NotFoundException;

import javax.inject.Named;

/**
 * Implémentation de l'interface manager "PaysManager".
 *
 * @author Anthony Pereira
 */
@Named
public class PaysManagerImpl extends AbstractManager implements PaysManager {


    @Override
    public Pays getPays(Region region) throws NotFoundException {
        return getDaoFactory().getPaysDao().read(region);
    }

    @Override
    public Boolean createPays(Pays pays) throws NotFoundException {
        return getDaoFactory().getPaysDao().create(pays);
    }

    @Override
    public Boolean updatePays(Pays pays) throws NotFoundException {
        return getDaoFactory().getPaysDao().update(pays);
    }

    @Override
    public Boolean deletePays(Pays pays) throws NotFoundException {
        return getDaoFactory().getPaysDao().delete(pays);
    }
}
