package com.sitestudio.escalade.consumer.contract.dao;

import com.sitestudio.escalade.model.bean.compte.Adresse;
import com.sitestudio.escalade.model.bean.referentiel.Departement;
import com.sitestudio.escalade.model.exception.NotFoundException;

import java.util.List;

/**
 * Les méthodes CRUD nécessaires pour manipuler le bean "Departement" / La table "departement"
 * @author A.Pereira
 *
 */
public interface DepartementDao {

    //-- CRUD : Les méthodes nécessaires

    /**
     * Méthode de recherche des informations
     * @param id
     * @return
     */
    Departement read(Integer id) throws NotFoundException;

    /**
     * Méthode de recherche des informations
     * @return
     */
    List <Departement> read() throws NotFoundException;

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
