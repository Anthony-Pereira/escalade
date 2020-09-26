package com.sitestudio.escalade.webapp.resource;

import com.sitestudio.escalade.model.bean.compte.Adresse;
import com.sitestudio.escalade.model.bean.referentiel.Departement;
import com.sitestudio.escalade.model.exception.NotFoundException;

import java.util.List;

/**
 * Demande la liste des départements à la couche business.
 */
public class DepartementResource extends AbstractResource {

    public Departement getDepartement(Integer id) throws NotFoundException {
        return getManagerFactory().getDepartementManager().getDepartement(id);
    }

    public List<Departement> getDepartement() throws NotFoundException {
        return getManagerFactory().getDepartementManager().getDepartement();
    }

    public Boolean createDepartement(Departement departement) throws NotFoundException {
        return getManagerFactory().getDepartementManager().createDepartement(departement);
    }

    public Boolean updateDepartement(Departement departement) throws NotFoundException {
        return getManagerFactory().getDepartementManager().updateDepartement(departement);
    }

    public Boolean deleteDepartement(Departement departement) throws NotFoundException {
        return getManagerFactory().getDepartementManager().deleteDepartement(departement);
    }

}
