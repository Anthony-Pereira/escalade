package com.sitestudio.escalade.business.impl.manager;

import com.sitestudio.escalade.business.contract.manager.CompteManager;
import com.sitestudio.escalade.model.bean.compte.Compte;
import com.sitestudio.escalade.model.exception.NotFoundException;

/**
 * Implémentation de l'interface manager "CompteManager".
 *
 * @author Anthony Pereira
 */
import javax.inject.Named;

@Named
public class CompteManagerImpl extends AbstractManager implements CompteManager {

    @Override
    public Compte getCompte(Compte compte) throws NotFoundException {
        return getDaoFactory().getCompteDao().read(compte);
    }

    @Override
    public Boolean createCompte(Compte compte) throws NotFoundException {
        return getDaoFactory().getCompteDao().create(compte);
    }

    @Override
    public Boolean updateCompte(Compte compte) throws NotFoundException {
        return getDaoFactory().getCompteDao().update(compte);
    }

    @Override
    public Boolean deleteCompte(Compte compte) throws NotFoundException {
        return getDaoFactory().getCompteDao().delete(compte);
    }
}
