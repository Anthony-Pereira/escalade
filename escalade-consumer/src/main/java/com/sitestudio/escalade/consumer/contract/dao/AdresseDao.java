package com.sitestudio.escalade.consumer.contract.dao;

import com.sitestudio.escalade.model.bean.compte.Adresse;
import com.sitestudio.escalade.model.bean.compte.Compte;

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
    Adresse read (Adresse adresse);

    Adresse read(String code);
    List<Adresse> readAll();
    List<Adresse> readAll(int id);

    /**
     * Méthode de création
     * @param adresse
     * @return T */
    Boolean create (Adresse adresse);

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
