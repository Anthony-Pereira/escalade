package com.sitestudio.escalade.business.contract.manager;

import com.sitestudio.escalade.model.bean.referentiel.Departement;
import com.sitestudio.escalade.model.bean.referentiel.Region;
import com.sitestudio.escalade.model.exception.NotFoundException;

public interface RegionManager {

    /**
     * Retourne la région.
     * @param id
     * @return
     * @throws NotFoundException
     */
    Region getRegion(Integer id) throws NotFoundException;

    /**
     * Creer une région.
     * @param region
     * @return
     * @throws NotFoundException
     */
    Boolean createRegion(Region region) throws NotFoundException;

    /**
     * Modifie une région.
     * @param region
     * @return
     * @throws NotFoundException
     */
    Boolean updateRegion(Region region) throws NotFoundException;

    /**
     * Supprime une région
     * @param region
     * @return
     * @throws NotFoundException
     */
    Boolean deleteRegion(Region region) throws NotFoundException;
}
