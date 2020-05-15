package com.sitestudio.escalade.webapp.resource;

import com.sitestudio.escalade.model.bean.compte.Compte;
import com.sitestudio.escalade.model.exception.NotFoundException;

/**
 * Demande la liste d'artciles à la couche business.
 */
public class CompteResource extends AbstractResource {

    public Compte getCompte(Compte compte) throws NotFoundException {
        return getManagerFactory().getCompteManager().getCompte(compte);
    }

    public Boolean createCompte (Compte compte) throws NotFoundException {
        return getManagerFactory().getCompteManager().createCompte(compte);
    }

    public Boolean updateCompte(Compte compte) throws NotFoundException {
        return getManagerFactory().getCompteManager().updateCompte(compte);
    }

    public Boolean deleteCompte (Compte compte) throws NotFoundException {
        return getManagerFactory().getCompteManager().deleteCompte(compte);
    }

}
