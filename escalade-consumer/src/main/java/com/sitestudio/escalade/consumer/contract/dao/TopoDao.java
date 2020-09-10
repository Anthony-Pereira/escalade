package com.sitestudio.escalade.consumer.contract.dao;

import com.sitestudio.escalade.model.bean.compte.Compte;
import com.sitestudio.escalade.model.bean.topo.Topo;
import com.sitestudio.escalade.model.exception.NotFoundException;

import java.util.List;

/**
 * Les méthodes CRUD nécessaires pour manipuler le bean "Compte" / La table "compte"
 * @author A.Pereira
 *
 */
public interface TopoDao {

    //-- CRUD : Les méthodes nécessaires

    /**
     * Méthode de recherche des informations
     * @param id
     * @return T */
    Topo read (Integer id) throws NotFoundException;

    /**
     * Méthode de recherche des informations
     * @return T */
    List<Topo> readAll() throws NotFoundException;

    /**
     * Méthode de recherche des informations
     * @param compte
     * @return T */
    List<Topo> readAll(Compte compte) throws NotFoundException;

    /**
     * Méthode de création
     * @param topo
     * @return boolean */
    Boolean create (Topo topo);

    /**
     * Méthode de modification
     * @param topo
     * @return boolean */
    Boolean update (Topo topo);

    /**
     * Méthode de suppression
     * @param topo
     * @return boolean */
    Boolean delete (Topo topo);

}
