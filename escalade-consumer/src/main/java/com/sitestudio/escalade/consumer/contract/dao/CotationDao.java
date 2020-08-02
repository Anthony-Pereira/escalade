package com.sitestudio.escalade.consumer.contract.dao;

import com.sitestudio.escalade.model.bean.referentiel.Cotation;
import com.sitestudio.escalade.model.bean.referentiel.Departement;
import com.sitestudio.escalade.model.exception.NotFoundException;

/**
 * Les méthodes CRUD nécessaires pour manipuler le bean "Cotation" / La table "cotation"
 * @author A.Pereira
 *
 */
public interface CotationDao {

    //-- CRUD : Les méthodes nécessaires

    /**
     * Méthode de recherche des informations
     * @param id
     * @return
     */
    Cotation read(Integer id) throws NotFoundException;

    /**
     * Méthode de création
     * @param cotation
     * @return
     */
    Boolean create(Cotation cotation);

    /**
     * Méthode de modification
     * @param cotation
     * @return
     */
    Boolean update(Cotation cotation);

    /**
     * Méthode de suppression
     * @param cotation
     * @return
     */
    Boolean delete(Cotation cotation);

}
