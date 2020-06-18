package com.sitestudio.escalade.webapp.resource;

import com.sitestudio.escalade.model.bean.site.Site;
import com.sitestudio.escalade.model.exception.NotFoundException;

/**
 * Demande la liste des sites à la couche business.
 */
public class SiteResource extends AbstractResource {

    public Site getSite(Integer id) throws NotFoundException {
        return getManagerFactory().getSiteManager().getSite(id);
    }

    public Boolean createSite(Site site) throws NotFoundException {
        return getManagerFactory().getSiteManager().createSite(site);
    }

    public Boolean updateSite(Site site) throws NotFoundException {
        return getManagerFactory().getSiteManager().updateSite(site);
    }

    public Boolean deleteSite(Site site) throws NotFoundException {
        return getManagerFactory().getSiteManager().deleteSite(site);
    }

}
