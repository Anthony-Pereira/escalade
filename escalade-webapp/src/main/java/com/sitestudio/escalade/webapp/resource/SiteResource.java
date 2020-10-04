package com.sitestudio.escalade.webapp.resource;

import com.sitestudio.escalade.model.bean.compte.Adresse;
import com.sitestudio.escalade.model.bean.referentiel.Cotation;
import com.sitestudio.escalade.model.bean.referentiel.Departement;
import com.sitestudio.escalade.model.bean.site.Secteur;
import com.sitestudio.escalade.model.bean.site.Site;
import com.sitestudio.escalade.model.bean.site.Voie;
import com.sitestudio.escalade.model.exception.NotFoundException;

import java.util.List;

/**
 * Demande la liste des sites à la couche business.
 */
public class SiteResource extends AbstractResource {

    public Site getSite(Integer id) throws NotFoundException {
        return getManagerFactory().getSiteManager().getSite(id);
    }

    public List<Site> getSite() throws NotFoundException {
        return getManagerFactory().getSiteManager().getSite();
    }

    public List<Site> getSite(Integer departement, Voie voie) throws NotFoundException {
        return getManagerFactory().getSiteManager().getSite(departement,voie);
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
