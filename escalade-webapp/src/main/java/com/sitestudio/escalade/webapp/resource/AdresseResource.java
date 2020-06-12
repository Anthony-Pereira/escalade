package com.sitestudio.escalade.webapp.resource;

import com.sitestudio.escalade.model.bean.compte.Adresse;
import com.sitestudio.escalade.model.exception.FunctionalException;
import com.sitestudio.escalade.model.exception.NotFoundException;

/**
 * Demande la liste d'adresses à la couche business.
 */
public class AdresseResource extends AbstractResource {

    public Adresse getAdresse (Adresse adresse) throws NotFoundException, FunctionalException {
        return getManagerFactory().getAdresseManager().getAdresse(adresse);
    }

    public Boolean createAdresse (Adresse adresse) throws NotFoundException, FunctionalException {
        return getManagerFactory().getAdresseManager().createAdresse(adresse) ;
    }

    public Boolean updateAdresse (Adresse adresse) throws NotFoundException {
        return getManagerFactory().getAdresseManager().updateAdresse(adresse);
    }

    public Boolean deleteAdresse (Adresse adresse) throws NotFoundException {
        return getManagerFactory().getAdresseManager().deleteAdresse(adresse);
    }

}
