package com.sitestudio.escalade.webapp.resource;

import com.sitestudio.escalade.model.bean.site.Secteur;
import com.sitestudio.escalade.model.bean.site.Site;
import com.sitestudio.escalade.model.exception.NotFoundException;

import java.util.List;

/**
 * Demande la liste des secteurs à la couche business.
 */
public class SecteurResource extends AbstractResource {

    public Secteur getSecteur(Integer id) throws NotFoundException {
        return getManagerFactory().getSecteurManager().getSecteur(id);
    }

    public List<Secteur> getSecteur() throws NotFoundException {
        return getManagerFactory().getSecteurManager().getSecteur();
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
