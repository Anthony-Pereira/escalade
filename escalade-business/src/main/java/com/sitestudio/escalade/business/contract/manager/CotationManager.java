package com.sitestudio.escalade.business.contract.manager;

import com.sitestudio.escalade.model.bean.referentiel.Cotation;
import com.sitestudio.escalade.model.exception.NotFoundException;

public interface CotationManager {

    /**
     * Retourne le niveau de cotation ciblé.
     * @param id L'identifiant du numéro de département ciblé.
     * @return Un objet Cotation.
     * @throws NotFoundException
     */
    Cotation getCotation(Integer id) throws NotFoundException;

    /** Créer un niveau de difficulté.
     * @param cotation L'identifiant d'une cotation ciblé.
     * @return boolean.
     * @throws NotFoundException
     */
    Boolean createCotation(Cotation cotation) throws NotFoundException;

    /**
     * Modifie un niveau de cotation.
     * @param cotation L'identifiant d'une cotation ciblé.
     * @return boolean
     * @throws NotFoundException
     */
    Boolean updateCotation(Cotation cotation) throws NotFoundException;

    /**
     * Supprime un niveau de cotation.
     * @param cotation L'identifiant d'une cotation ciblé.
     * @return boolean
     * @throws NotFoundException
     */
    Boolean deleteCotation(Cotation cotation) throws NotFoundException;

}
