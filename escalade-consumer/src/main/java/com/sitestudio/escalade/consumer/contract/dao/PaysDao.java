package com.sitestudio.escalade.consumer.contract.dao;

import com.sitestudio.escalade.model.bean.referentiel.Pays;
import com.sitestudio.escalade.model.bean.referentiel.Region;
import com.sitestudio.escalade.model.exception.NotFoundException;

/**
 * Les méthodes CRUD nécessaires pour manipuler le bean "Pays" / La table "pays"
 * @author A.Pereira
 *
 */
public interface PaysDao {

    //-- CRUD : Les méthodes nécessaires

    /**
     * Méthode de recherche des informations
     * @param region
     * @return
     */
    Pays read(Region region) throws NotFoundException;

    /**
     * Méthode de création
     * @param pays
     * @return
     */
    Boolean create(Pays pays);

    /**
     * Méthode de modification
     * @param pays
     * @return
     */
    Boolean update(Pays pays);

    /**
     * Méthode de suppression
     * @param pays
     * @return
     */
    Boolean delete(Pays pays);

}
