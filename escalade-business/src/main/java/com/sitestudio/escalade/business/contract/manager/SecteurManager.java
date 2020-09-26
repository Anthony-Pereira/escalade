package com.sitestudio.escalade.business.contract.manager;

import com.sitestudio.escalade.model.bean.referentiel.Region;
import com.sitestudio.escalade.model.bean.site.Secteur;
import com.sitestudio.escalade.model.bean.site.Site;
import com.sitestudio.escalade.model.exception.NotFoundException;

import java.util.List;

public interface SecteurManager {

    /**
     * Retourne le secteur.
     * @param id L'identifiant d'un secteur ciblé.
     * @return Un objet secteur.
     * @throws NotFoundException
     */
    Secteur getSecteur(Integer id) throws NotFoundException;

    /**
     * Retourne le secteur.
     * @return Un objet site.
     * @throws NotFoundException
     */
    List<Secteur> getSecteur() throws NotFoundException;

    /**
     * Retourne le secteur.
     * @param site
     * @return Un objet site.
     * @throws NotFoundException
     */
    List<Secteur> getSecteur(Site site) throws NotFoundException;

    /**
     * Créer un secteur.
     * @param secteur L'identifiant d'un secteur ciblé.
     * @return boolean
     * @throws NotFoundException
     */
    Boolean createSecteur(Secteur secteur) throws NotFoundException;

    /**
     * Modifie un secteur.
     * @param secteur L'identifiant d'un secteur ciblé.
     * @return boolean
     * @throws NotFoundException
     */
    Boolean updateSecteur(Secteur secteur) throws NotFoundException;

    /**
     * Supprime un secteur
     * @param secteur L'identifiant d'un secteur ciblé.
     * @return boolean
     * @throws NotFoundException
     */
    Boolean deleteSecteur(Secteur secteur) throws NotFoundException;

}
