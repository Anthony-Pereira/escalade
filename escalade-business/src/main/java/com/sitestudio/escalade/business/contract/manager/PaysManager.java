package com.sitestudio.escalade.business.contract.manager;

import com.sitestudio.escalade.model.bean.referentiel.Pays;
import com.sitestudio.escalade.model.bean.referentiel.Region;
import com.sitestudio.escalade.model.exception.NotFoundException;

public interface PaysManager {

    /**
     * Retourne le pays.
     * @param region L'identifiant d'un pays ciblé.
     * @return Un objet pays.
     * @throws NotFoundException
     */
    Pays getPays(Region region) throws NotFoundException;

    /**
     * Créer un pays.
     * @param pays L'identifiant d'un pays ciblé.
     * @return boolean
     * @throws NotFoundException
     */
    Boolean createPays(Pays pays) throws NotFoundException;

    /**
     * Modifie un pays.
     * @param pays L'identifiant d'un pays ciblé.
     * @return boolean
     * @throws NotFoundException
     */
    Boolean updatePays(Pays pays) throws NotFoundException;

    /**
     * Supprime un pays
     * @param pays L'identifiant d'un pays ciblé.
     * @return boolean
     * @throws NotFoundException
     */
    Boolean deletePays(Pays pays) throws NotFoundException;

}
