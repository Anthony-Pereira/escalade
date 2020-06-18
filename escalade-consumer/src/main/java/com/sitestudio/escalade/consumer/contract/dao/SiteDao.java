package com.sitestudio.escalade.consumer.contract.dao;

import com.sitestudio.escalade.model.bean.site.Site;
import com.sitestudio.escalade.model.exception.NotFoundException;

import java.util.List;

/**
 * Les méthodes CRUD nécessaires pour manipuler le bean "Site" / La table "site"
 * @author A.Pereira
 *
 */
public interface SiteDao {

    //-- CRUD : Les méthodes nécessaires

    /**
     * Méthode de recherche des informations
     * @param id
     * @return T */
    Site read (Integer id) throws NotFoundException;

    List<Site> readAll();
    List<Site> readAll(int id);

    /**
     * Méthode de création
     * @param site
     * @return boolean */
    Boolean create (Site site);

    /**
     * Méthode de modification
     * @param site
     * @return boolean */
    Boolean update (Site site);

    /**
     * Méthode de suppression
     * @param site
     * @return boolean */
    Boolean delete (Site site);

}
