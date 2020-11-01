package com.sitestudio.escalade.webapp.resource;

import com.sitestudio.escalade.model.bean.compte.Compte;
import com.sitestudio.escalade.model.exception.FunctionalException;
import com.sitestudio.escalade.model.exception.NotFoundException;

/**
 * Demande la liste des comptes à la couche business.
 */
public class CompteResource extends AbstractResource {

    public Compte getCompte(Compte compte) throws NotFoundException {
        return getManagerFactory().getCompteManager().getCompte(compte);
    }

    public Compte getCompte(Integer id) throws NotFoundException {
        return getManagerFactory().getCompteManager().getCompte(id);
    }

    public Boolean createCompte (Compte compte) throws NotFoundException {
        return getManagerFactory().getCompteManager().createCompte(compte);
    }

    public Boolean updateCompte(Compte compte) throws NotFoundException {
        return getManagerFactory().getCompteManager().updateCompte(compte);
    }

    public Boolean updateEmailAndPassword(Compte compte) throws NotFoundException {
        return getManagerFactory().getCompteManager().updateEmailAndPassword(compte);
    }

    public Boolean deleteCompte (Compte compte) throws NotFoundException {
        return getManagerFactory().getCompteManager().deleteCompte(compte);
    }

    public  Boolean getEmailChecked (Compte compte) throws FunctionalException {
        return getManagerFactory().getCompteManager().getEmailChecked(compte);
    }

}
