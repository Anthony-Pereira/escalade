package com.sitestudio.escalade.consumer.contract.dao;

import com.sitestudio.escalade.model.bean.site.Secteur;
import com.sitestudio.escalade.model.bean.site.UrlPhoto;
import com.sitestudio.escalade.model.bean.site.Voie;
import com.sitestudio.escalade.model.exception.NotFoundException;

import java.util.List;

/**
 * Les méthodes CRUD nécessaires pour manipuler le bean "Voie" / La table "voie"
 * @author A.Pereira
 *
 */
public interface VoieDao {

    //-- CRUD : Les méthodes nécessaires

    /**
     * Méthode de recherche des informations
     * @param id
     * @return T */
    Voie read (Integer id) throws NotFoundException;

    /**
     * Méthode de recherche des informations
     * @return T */
    List<Voie> readAll() throws NotFoundException;

    /**
     * Méthode de recherche des informations
     * @return T */
    List<Voie> readAll(Secteur secteur) throws NotFoundException;

    List<Voie> readAll(int id);

    /**
     * Méthode de création
     * @param voie
     * @return boolean */
    Boolean create (Voie voie);

    /**
     * Méthode de modification
     * @param voie
     * @return boolean */
    Boolean update (Voie voie);

    /**
     * Méthode de suppression
     * @param voie
     * @return boolean */
    Boolean delete (Voie voie);

}
