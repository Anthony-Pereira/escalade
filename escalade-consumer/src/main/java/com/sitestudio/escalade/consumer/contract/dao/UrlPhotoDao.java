package com.sitestudio.escalade.consumer.contract.dao;

import com.sitestudio.escalade.model.bean.site.Site;
import com.sitestudio.escalade.model.bean.site.UrlPhoto;
import com.sitestudio.escalade.model.exception.NotFoundException;

import java.util.List;

/**
 * Les méthodes CRUD nécessaires pour manipuler le bean "UrlPhoto" / La table "url_photo"
 * @author A.Pereira
 *
 */
public interface UrlPhotoDao {

    //-- CRUD : Les méthodes nécessaires

    /**
     * Méthode de recherche des informations
     * @param id
     * @return T */
    UrlPhoto read (Integer id) throws NotFoundException;

    List<UrlPhoto> readAll();
    List<UrlPhoto> readAll(int id);

    /**
     * Méthode de création
     * @param urlPhoto
     * @return boolean */
    Boolean create (UrlPhoto urlPhoto);

    /**
     * Méthode de modification
     * @param urlPhoto
     * @return boolean */
    Boolean update (UrlPhoto urlPhoto);

    /**
     * Méthode de suppression
     * @param urlPhoto
     * @return boolean */
    Boolean delete (UrlPhoto urlPhoto);

}
