package com.sitestudio.escalade.consumer.contract.dao;

import com.sitestudio.escalade.model.bean.compte.Compte;
import com.sitestudio.escalade.model.exception.FunctionalException;
import com.sitestudio.escalade.model.exception.NotFoundException;

import java.util.List;

/**
 * Les méthodes CRUD nécessaires pour manipuler le bean "Compte" / La table "compte"
 * @author A.Pereira
 *
 */
public interface CompteDao {

    //-- CRUD : Les méthodes nécessaires

    /**
     * Méthode de recherche des informations
     * @param compte
     * @return T */
    Compte read (Compte compte) throws NotFoundException;

    Compte read(String code);
    List<Compte> readAll();
    List<Compte> readAll(int id);

    /**
     * Méthode de création
     * @param compte
     * @return boolean */
    Boolean create (Compte compte);

    /**
     * Méthode de modification
     * @param compte
     * @return boolean */
    Boolean update (Compte compte);

    /**
     * Méthode de suppression
     * @param compte
     * @return boolean */
    Boolean delete (Compte compte);

    /**
     * Méthode de suppression
     * @param compte
     * @return compte */
    Boolean checkEmail(Compte compte) throws FunctionalException;

}
