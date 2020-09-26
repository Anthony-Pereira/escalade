package com.sitestudio.escalade.business.contract.manager;

import com.sitestudio.escalade.model.bean.compte.Adresse;
import com.sitestudio.escalade.model.bean.referentiel.Departement;
import com.sitestudio.escalade.model.exception.NotFoundException;

import java.util.List;

public interface DepartementManager {

    /**
     * Retourne le numéro de département ciblé.
     * @param id L'identifiant du numéro de département ciblé.
     * @return Un objet Département.
     * @throws NotFoundException
     */
    Departement getDepartement(Integer id) throws NotFoundException;

    /**
     * Retourne le numéro de département ciblé.
     * @return Un objet Département.
     * @throws NotFoundException
     */
    List <Departement> getDepartement() throws NotFoundException;

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
