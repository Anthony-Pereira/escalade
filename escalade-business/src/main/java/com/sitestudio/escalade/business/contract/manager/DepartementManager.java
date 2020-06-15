package com.sitestudio.escalade.business.contract.manager;

import com.sitestudio.escalade.model.bean.compte.Adresse;
import com.sitestudio.escalade.model.bean.referentiel.Departement;
import com.sitestudio.escalade.model.exception.NotFoundException;

public interface DepartementManager {

    /**Retourne le numéro de département ciblé.
     * @param adresse L'identifiant du numéro de département ciblé.
     * @return Un objet Département.
     * @throws NotFoundException
     */
    Departement getDepartement(Adresse adresse) throws NotFoundException;

    /**Créer un département.
     * @param departement L'identifiant d'un département ciblé.
     * @return boolean.
     * @throws NotFoundException
     */
    Boolean createDepartement(Departement departement) throws NotFoundException;

    /**
     * Modifie un département.
     * @param departement L'identifiant d'un département ciblé.
     * @return boolean
     * @throws NotFoundException
     */
    Boolean updateDepartement(Departement departement) throws NotFoundException;

    /**
     * Supprime un département.
     * @param departement L'identifiant d'un département ciblé.
     * @return boolean
     * @throws NotFoundException
     */
    Boolean deleteDepartement(Departement departement) throws NotFoundException;

}
