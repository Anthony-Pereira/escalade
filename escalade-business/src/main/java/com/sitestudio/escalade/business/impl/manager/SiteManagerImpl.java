package com.sitestudio.escalade.business.impl.manager;

import com.sitestudio.escalade.business.contract.manager.SiteManager;
import com.sitestudio.escalade.model.bean.compte.Adresse;
import com.sitestudio.escalade.model.bean.referentiel.Cotation;
import com.sitestudio.escalade.model.bean.referentiel.Departement;
import com.sitestudio.escalade.model.bean.site.Secteur;
import com.sitestudio.escalade.model.bean.site.Site;
import com.sitestudio.escalade.model.bean.site.Voie;
import com.sitestudio.escalade.model.exception.NotFoundException;

import javax.inject.Named;
import java.util.List;

/**
 * Implémentation de l'interface manager "SiteManager".
 *
 * @author Anthony Pereira
 */
@Named
public class SiteManagerImpl extends AbstractManager implements SiteManager {

    @Override
    public Site getSite(Integer id) throws NotFoundException {
        return getDaoFactory().getSiteDao().read(id);
    }

    @Override
    public List<Site> getSite() throws NotFoundException {
        return getDaoFactory().getSiteDao().readAll();
    }

    @Override
    public List<Site> getSite(Integer departement, Voie voie) throws NotFoundException {
        return getDaoFactory().getSiteDao().readAll(departement,voie);
    }

    @Override
    public Boolean createSite(Site site) throws NotFoundException {
        return getDaoFactory().getSiteDao().create(site);
    }

    @Override
    public Boolean updateSite(Site site) throws NotFoundException {
        return getDaoFactory().getSiteDao().update(site);
    }

    @Override
    public Boolean deleteSite(Site site) throws NotFoundException {
        return getDaoFactory().getSiteDao().delete(site);
    }
}
