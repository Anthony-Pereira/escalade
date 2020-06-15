package com.sitestudio.escalade.business.contract.manager;

import com.sitestudio.escalade.model.bean.site.Site;
import com.sitestudio.escalade.model.bean.site.UrlPhoto;
import com.sitestudio.escalade.model.bean.site.Voie;
import com.sitestudio.escalade.model.exception.NotFoundException;

public interface VoieManager {

    /**
     * Retourne la voie.
     * @param voie L'identifiant d'une voie ciblé.
     * @return Un objet voie.
     * @throws NotFoundException
     */
    Voie getVoie(Voie voie) throws NotFoundException;

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
