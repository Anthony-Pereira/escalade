package com.sitestudio.escalade.business.contract.manager;

import com.sitestudio.escalade.model.bean.compte.Adresse;
import com.sitestudio.escalade.model.bean.referentiel.Departement;
import com.sitestudio.escalade.model.exception.NotFoundException;

public interface DepartementManager {

    /**
     * Retourne le département.
     * @param numeroDepartement
     * @return
     * @throws NotFoundException
     */
    Departement getDepartement(String numeroDepartement) throws NotFoundException;

    /**
     * Creer un département.
     * @param departement
     * @return
     * @throws NotFoundException
     */
    Boolean createDepartement(Departement departement) throws NotFoundException;

    /**
     * Modifie un département.
     * @param departement
     * @return
     * @throws NotFoundException
     */
    Boolean updateDepartement(Departement departement) throws NotFoundException;

    /**
     * Supprime un département
     * @param departement
     * @return
     * @throws NotFoundException
     */
    Boolean deleteDepartement(Departement departement) throws NotFoundException;

}
