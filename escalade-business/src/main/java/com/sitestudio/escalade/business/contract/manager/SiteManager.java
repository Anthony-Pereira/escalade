package com.sitestudio.escalade.business.contract.manager;

import com.sitestudio.escalade.model.bean.site.Secteur;
import com.sitestudio.escalade.model.bean.site.Site;
import com.sitestudio.escalade.model.exception.NotFoundException;

public interface SiteManager {

    /**
     * Retourne le site.
     * @param site L'identifiant d'un site ciblé.
     * @return Un objet site.
     * @throws NotFoundException
     */
    Site getSite(Site site) throws NotFoundException;

    /**
     * Créer un site.
     * @param site L'identifiant d'un site ciblé.
     * @return boolean
     * @throws NotFoundException
     */
    Boolean createSite(Site site) throws NotFoundException;

    /**
     * Modifie un site.
     * @param site L'identifiant d'un site ciblé.
     * @return boolean
     * @throws NotFoundException
     */
    Boolean updateSite(Site site) throws NotFoundException;

    /**
     * Supprime un site
     * @param site L'identifiant d'un site ciblé.
     * @return boolean
     * @throws NotFoundException
     */
    Boolean deleteSite(Site site) throws NotFoundException;

}
