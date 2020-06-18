package com.sitestudio.escalade.business.impl.manager;

import com.sitestudio.escalade.business.contract.manager.SiteManager;
import com.sitestudio.escalade.model.bean.site.Site;
import com.sitestudio.escalade.model.exception.NotFoundException;

import javax.inject.Named;

/**
 * Implémentation de l'interface manager "SiteManager".
 *
 * @author Anthony Pereira
 */
@Named
public class SiteManagerImpl extends AbstractManager implements SiteManager {

    @Override
    public Site getSite(Integer id) throws NotFoundException {
        return null;
    }

    @Override
    public Boolean createSite(Site site) throws NotFoundException {
        return null;
    }

    @Override
    public Boolean updateSite(Site site) throws NotFoundException {
        return null;
    }

    @Override
    public Boolean deleteSite(Site site) throws NotFoundException {
        return null;
    }
}
