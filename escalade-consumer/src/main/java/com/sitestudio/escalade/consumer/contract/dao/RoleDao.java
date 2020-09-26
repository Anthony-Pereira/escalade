package com.sitestudio.escalade.consumer.contract.dao;

import com.sitestudio.escalade.model.bean.referentiel.EnumRole;
import com.sitestudio.escalade.model.exception.FunctionalException;
import com.sitestudio.escalade.model.exception.NotFoundException;

import java.util.List;

/**
 * Les méthodes CRUD nécessaires pour manipuler le bean "EnumRole" / La table "Role"
 * @author A.Pereira
 *
 */
public interface RoleDao {

    //-- CRUD : Les méthodes nécessaires

    /**
     * Méthode de recherche des informations
     * @param id
     * @return T */
    EnumRole read (Integer id) throws FunctionalException, NotFoundException;

    List<EnumRole> readAll();
    List<EnumRole> readAll(int id);

    /**
     * Méthode de création
     * @param enumRole
     * @return Integer */
    Boolean create (EnumRole enumRole) throws FunctionalException;

    /**
     * Méthode de modification
     * @param enumRole
     * @return boolean */
    Boolean update (EnumRole enumRole);

    /**
     * Méthode de suppression
     * @param enumRole
     * @return boolean */
    Boolean delete (EnumRole enumRole);

}
