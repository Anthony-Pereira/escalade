package com.sitestudio.escalade.consumer.contract.dao;

import com.sitestudio.escalade.model.bean.compte.Compte;
import com.sitestudio.escalade.model.bean.site.Secteur;
import com.sitestudio.escalade.model.bean.site.Site;
import com.sitestudio.escalade.model.exception.NotFoundException;

import java.util.List;

/**
 * Les méthodes CRUD nécessaires pour manipuler le bean "Secteur" / La table "secteur"
 * @author A.Pereira
 *
 */
public interface SecteurDao {

    //-- CRUD : Les méthodes nécessaires

    /**
     * Méthode de recherche des informations
     * @param id
     * @return T */
    Secteur read (Integer id) throws NotFoundException;

    /**
     * Méthode de recherche des informations
     * @return T */
    List<Secteur> readAll() throws NotFoundException;

    /**
     * Méthode de recherche des informations
     * @param site
     * @return T */
    List<Secteur> readAll(Site site) throws NotFoundException;

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
