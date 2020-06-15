package com.sitestudio.escalade.business.contract.manager;

import com.sitestudio.escalade.model.bean.referentiel.Departement;
import com.sitestudio.escalade.model.bean.referentiel.Region;
import com.sitestudio.escalade.model.exception.NotFoundException;

public interface RegionManager {

    /**
     * Retourne la région.
     * @param departement L'identifiant de la région ciblé.
     * @return Un objet région
     * @throws NotFoundException
     */
    Region getRegion(Departement departement) throws NotFoundException;

    /**
     * Créer une région.
     * @param region L'identifiant de la région ciblé.
     * @return boolean
     * @throws NotFoundException
     */
    Boolean createRegion(Region region) throws NotFoundException;

    /**
     * Modifie une région.
     * @param region L'identifiant de la région ciblé.
     * @return boolean
     * @throws NotFoundException
     */
    Boolean updateRegion(Region region) throws NotFoundException;

    /**
     * Supprime une région
     * @param region L'identifiant de la région ciblé.
     * @return boolean
     * @throws NotFoundException
     */
    Boolean deleteRegion(Region region) throws NotFoundException;
}
