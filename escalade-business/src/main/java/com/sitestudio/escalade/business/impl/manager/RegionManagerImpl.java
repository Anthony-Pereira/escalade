package com.sitestudio.escalade.business.impl.manager;

import com.sitestudio.escalade.business.contract.manager.RegionManager;
import com.sitestudio.escalade.model.bean.referentiel.Departement;
import com.sitestudio.escalade.model.bean.referentiel.Region;
import com.sitestudio.escalade.model.exception.NotFoundException;

import javax.inject.Named;

/**
 * Implémentation de l'interface manager "RegionManager".
 *
 * @author Anthony Pereira
 */
@Named
public class RegionManagerImpl extends AbstractManager implements RegionManager {

    @Override
    public Region getRegion(Departement departement) throws NotFoundException {
        return getDaoFactory().getRegionDao().read(departement);
    }

    @Override
    public Boolean createRegion(Region region) throws NotFoundException {
        return getDaoFactory().getRegionDao().create(region);
    }

    @Override
    public Boolean updateRegion(Region region) throws NotFoundException {
        return getDaoFactory().getRegionDao().update(region);
    }

    @Override
    public Boolean deleteRegion(Region region) throws NotFoundException {
        return getDaoFactory().getRegionDao().delete(region);
    }

}
