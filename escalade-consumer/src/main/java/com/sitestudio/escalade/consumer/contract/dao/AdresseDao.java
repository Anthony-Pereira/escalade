package com.sitestudio.escalade.consumer.contract.dao;

import com.sitestudio.escalade.model.bean.compte.Adresse;
import com.sitestudio.escalade.model.exception.FunctionalException;
import com.sitestudio.escalade.model.exception.NotFoundException;

import java.util.List;

/**
 * Les méthodes CRUD nécessaires pour manipuler le bean "Adresse" / La table "adresse"
 * @author A.Pereira
 *
 */
public interface AdresseDao {

    //-- CRUD : Les méthodes nécessaires

    /**
     * Méthode de recherche des informations
     * @param id
     * @return T */
    Adresse read (Integer id) throws FunctionalException, NotFoundException;

    List<Adresse> readAll();
    List<Adresse> readAll(int id);

    /**
     * Méthode de création
     * @param adresse
     * @return Integer */
    Integer create (Adresse adresse) throws FunctionalException;

    /**
     * Méthode de modification
     * @param adresse
     * @return boolean */
    Boolean update (Adresse adresse);

    /**
     * Méthode de suppression
     * @param adresse
     * @return boolean */
    Boolean delete (Adresse adresse);

}
