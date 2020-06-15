package com.sitestudio.escalade.business.impl.manager;

import com.sitestudio.escalade.business.contract.manager.DepartementManager;
import com.sitestudio.escalade.model.bean.compte.Adresse;
import com.sitestudio.escalade.model.bean.referentiel.Departement;
import com.sitestudio.escalade.model.exception.NotFoundException;

import javax.inject.Named;

/**
 * Implémentation de l'interface manager "DepartementManager".
 *
 * @author Anthony Pereira
 */
@Named
public class DepartementManagerImpl extends AbstractManager implements DepartementManager {

    @Override
    public Departement getDepartement(Adresse adresse) throws NotFoundException {
        return getDaoFactory().getDepartementDao().read(adresse) ;
    }

    @Override
    public Boolean createDepartement(Departement departement) throws NotFoundException {
        return getDaoFactory().getDepartementDao().create(departement);
    }

    @Override
    public Boolean updateDepartement(Departement departement) throws NotFoundException {
        return getDaoFactory().getDepartementDao().update(departement);
    }

    @Override
    public Boolean deleteDepartement(Departement departement) throws NotFoundException {
        return getDaoFactory().getDepartementDao().delete(departement);
    }
}
