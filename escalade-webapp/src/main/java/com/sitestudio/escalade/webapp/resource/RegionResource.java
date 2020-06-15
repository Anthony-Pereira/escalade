package com.sitestudio.escalade.webapp.resource;

import com.sitestudio.escalade.model.bean.referentiel.Departement;
import com.sitestudio.escalade.model.bean.referentiel.Region;
import com.sitestudio.escalade.model.exception.NotFoundException;

/**
 * Demande la liste des régions à la couche business.
 */
public class RegionResource extends AbstractResource  {

    public Region getRegion(Departement departement) throws NotFoundException {
        return getManagerFactory().getRegionManager().getRegion(departement);
    }

    public Boolean createRegion(Region region) throws NotFoundException {
        return getManagerFactory().getRegionManager().createRegion(region);
    }

    public Boolean updateRegion(Region region) throws NotFoundException {
        return getManagerFactory().getRegionManager().updateRegion(region);
    }

    public Boolean deleteRegion(Region region) throws NotFoundException {
        return getManagerFactory().getRegionManager().deleteRegion(region);
    }

}
