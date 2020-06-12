package com.sitestudio.escalade.consumer.contract.dao;

import com.sitestudio.escalade.model.bean.compte.Adresse;
import com.sitestudio.escalade.model.bean.referentiel.Departement;
import com.sitestudio.escalade.model.exception.NotFoundException;

/**
 * Les méthodes CRUD nécessaires pour manipuler le bean "Departement" / La table "departement"
 * @author A.Pereira
 *
 */
public interface DepartementDao {

    /**
     * Méthode de recherche des informations
     * @param numeroDepartement
     * @return
     */
    Departement read(String numeroDepartement) throws NotFoundException;

    /**
     * Méthode de recherche des informations
     * @param departement
     * @return
     */
    Departement read(Departement departement) throws NotFoundException;

    /**
     * Méthode de recherche des informations
     * @param id
     * @return
     */
    Departement read(Integer id) throws NotFoundException;

    /**
     * Méthode de création
     * @param departement
     * @return
     */
    Boolean create(Departement departement);

    /**
     * Méthode de modification
     * @param departement
     * @return
     */
    Boolean update(Departement departement);

    /**
     * Méthode de suppression
     * @param departement
     * @return
     */
    Boolean delete(Departement departement);

}
