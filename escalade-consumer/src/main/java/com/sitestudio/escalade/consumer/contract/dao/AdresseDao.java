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
     * @param adresse
     * @return T */
    Adresse read (Adresse adresse) throws FunctionalException, NotFoundException;

    List<Adresse> readAll();
    List<Adresse> readAll(int id);

    /**
     * Méthode de création
     * @param adresse
     * @return T */
    Boolean create (Adresse adresse) throws FunctionalException;

    /**
     * Méthode de modification
     * @param adresse
     * @return T */
    Boolean update (Adresse adresse);

    /**
     * Méthode de suppression
     * @param adresse
     * @return T */
    Boolean delete (Adresse adresse);

}
