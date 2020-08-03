package com.sitestudio.escalade.business.contract.manager;

import com.sitestudio.escalade.model.bean.site.Voie;
import com.sitestudio.escalade.model.exception.NotFoundException;

import java.util.List;

public interface VoieManager {

    /**
     * Retourne la voie.
     * @param id L'identifiant d'une voie ciblé.
     * @return Un objet voie.
     * @throws NotFoundException
     */
    Voie getVoie(Integer id) throws NotFoundException;

    /**
     * Retourne la voie.
     * @return Un objet voie.
     * @throws NotFoundException
     */
    List<Voie> getVoie() throws NotFoundException;

    /**
     * Créer une voie.
     * @param voie L'identifiant d'une voie ciblé.
     * @return boolean
     * @throws NotFoundException
     */
    Boolean createVoie(Voie voie) throws NotFoundException;

    /**
     * Modifie une voie.
     * @param voie L'identifiant d'une voie ciblé.
     * @return boolean
     * @throws NotFoundException
     */
    Boolean updateVoie(Voie voie) throws NotFoundException;

    /**
     * Supprime une voie.
     * @param voie L'identifiant d'une voie ciblé.
     * @return boolean
     * @throws NotFoundException
     */
    Boolean deleteVoie(Voie voie) throws NotFoundException;

}
