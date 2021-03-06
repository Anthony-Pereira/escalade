package com.sitestudio.escalade.consumer.contract.dao;

import com.sitestudio.escalade.model.bean.compte.Compte;
import com.sitestudio.escalade.model.bean.site.Commentaire;
import com.sitestudio.escalade.model.bean.site.Site;
import com.sitestudio.escalade.model.exception.NotFoundException;

import java.util.List;

/**
 * Les méthodes CRUD nécessaires pour manipuler le bean "Commentaire" / La table "commentaire"
 * @author A.Pereira
 *
 */
public interface CommentaireDao {

    //-- CRUD : Les méthodes nécessaires

    /**
     * Méthode de recherche des informations
     * @param id
     * @return T */
    Commentaire read (Integer id) throws NotFoundException;

    /**
     * Méthode de recherche des informations
     * @param commentaire
     * @return T */
    Commentaire read (Commentaire commentaire) throws NotFoundException;

    /**
     * Méthode de recherche des informations
     * @return T */
    List<Commentaire> readAll() throws NotFoundException;

    /**
     * Méthode de recherche des informations
     * @param site
     * @return T */
    List<Commentaire> readAll(Site site) throws NotFoundException;

    /**
     * Méthode de recherche des informations
     * @param id
     * @return T */
    List<Commentaire> readAll(int id);

    /**
     * Méthode de création
     * @param commentaire
     * @return boolean */
    Boolean create (Commentaire commentaire);

    /**
     * Méthode de modification
     * @param commentaire
     * @return boolean */
    Boolean update (Commentaire commentaire);

    /**
     * Méthode de suppression
     * @param commentaire
     * @return boolean */
    Boolean delete (Commentaire commentaire);

}
