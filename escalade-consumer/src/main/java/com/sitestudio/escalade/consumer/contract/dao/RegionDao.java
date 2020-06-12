package com.sitestudio.escalade.consumer.contract.dao;

import com.sitestudio.escalade.model.bean.referentiel.Region;
import com.sitestudio.escalade.model.exception.NotFoundException;

/**
 * Les méthodes CRUD nécessaires pour manipuler le bean "Region" / La table "adresse"
 * @author A.Pereira
 *
 */
public interface RegionDao {

    /**
     * Méthode de recherche des informations
     * @param id
     * @return
     */
    Region read(Integer id) throws NotFoundException;

    /**
     * Méthode de création
     * @param region
     * @return
     */
    Boolean create(Region region);

    /**
     * Méthode de modification
     * @param region
     * @return
     */
    Boolean update(Region region);

    /**
     * Méthode de suppression
     * @param region
     * @return
     */
    Boolean delete(Region region);

}
