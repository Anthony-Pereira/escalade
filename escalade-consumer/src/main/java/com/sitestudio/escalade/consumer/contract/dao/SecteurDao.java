package com.sitestudio.escalade.consumer.contract.dao;

import com.sitestudio.escalade.model.bean.compte.Compte;
import com.sitestudio.escalade.model.bean.site.Secteur;
import com.sitestudio.escalade.model.exception.NotFoundException;

import java.util.List;

/**
 * Les méthodes CRUD nécessaires pour manipuler le bean "Secteur" / La table "secteur"
 * @author A.Pereira
 *
 */
public interface SecteurDao {

    /**
     * Méthode de recherche des informations
     * @param secteur
     * @return T */
    Secteur read (Secteur secteur) throws NotFoundException;

    List<Secteur> readAll();
    List<Secteur> readAll(int id);

    /**
     * Méthode de création
     * @param secteur
     * @return boolean */
    Boolean create (Secteur secteur);

    /**
     * Méthode de modification
     * @param secteur
     * @return boolean */
    Boolean update (Secteur secteur);

    /**
     * Méthode de suppression
     * @param secteur
     * @return boolean */
    Boolean delete (Secteur secteur);

}
