package com.sitestudio.escalade.webapp.resource;

import com.sitestudio.escalade.model.bean.site.Secteur;
import com.sitestudio.escalade.model.exception.NotFoundException;

/**
 * Demande la liste des secteurs à la couche business.
 */
public class SecteurResource extends AbstractResource {

    public Secteur getSecteur(Secteur secteur) throws NotFoundException {
        return getManagerFactory().getSecteurManager().getSecteur(secteur);
    }

    public Boolean createSecteur(Secteur secteur) throws NotFoundException {
        return getManagerFactory().getSecteurManager().createSecteur(secteur);
    }

    public Boolean updateSecteur(Secteur secteur) throws NotFoundException {
        return getManagerFactory().getSecteurManager().updateSecteur(secteur);
    }

    public Boolean deleteSecteur(Secteur secteur) throws NotFoundException {
        return getManagerFactory().getSecteurManager().deleteSecteur(secteur);
    }

}
