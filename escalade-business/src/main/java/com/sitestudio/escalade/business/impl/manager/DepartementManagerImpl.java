package com.sitestudio.escalade.business.impl.manager;

import com.sitestudio.escalade.business.contract.manager.DepartementManager;
import com.sitestudio.escalade.model.bean.compte.Adresse;
import com.sitestudio.escalade.model.bean.referentiel.Departement;
import com.sitestudio.escalade.model.exception.NotFoundException;

import javax.inject.Named;
import java.util.List;

/**
 * Implémentation de l'interface manager "DepartementManager".
 *
 * @author Anthony Pereira
 */
@Named
public class DepartementManagerImpl extends AbstractManager implements DepartementManager {

    @Override
    public Departement getDepartement(Integer id) throws NotFoundException {
        return getDaoFactory().getDepartementDao().read(id);
    }

    @Override
    public List <Departement> getDepartement() throws NotFoundException {
        return getDaoFactory().getDepartementDao().read();
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
