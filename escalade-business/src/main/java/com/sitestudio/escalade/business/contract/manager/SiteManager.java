package com.sitestudio.escalade.business.contract.manager;

import com.sitestudio.escalade.model.bean.referentiel.Cotation;
import com.sitestudio.escalade.model.bean.referentiel.Departement;
import com.sitestudio.escalade.model.bean.site.Secteur;
import com.sitestudio.escalade.model.bean.site.Site;
import com.sitestudio.escalade.model.bean.site.Voie;
import com.sitestudio.escalade.model.exception.NotFoundException;

import java.util.List;

public interface SiteManager {

    /**
     * Retourne le site.
     * @param id L'identifiant d'un site ciblé.
     * @return Un objet site.
     * @throws NotFoundException
     */
    Site getSite(Integer id) throws NotFoundException;

    /**
     * Retourne le site.
     * @return Un objet site.
     * @throws NotFoundException
     */
    List<Site> getSite() throws NotFoundException;

    /**
     * Retourne le site.
     * @param departement,cotation
     * @return Un objet site.
     * @throws NotFoundException
     */
    List<Site> getSite(Departement departement, Cotation cotation) throws NotFoundException;

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
