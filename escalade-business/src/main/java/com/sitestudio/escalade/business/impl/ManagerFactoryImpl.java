package com.sitestudio.escalade.business.impl;

import com.sitestudio.escalade.business.contract.ManagerFactory;
import com.sitestudio.escalade.business.contract.manager.CompteManager;

import javax.inject.Inject;
import javax.inject.Named;

/**
 * Classe qui retourne des Managers pour toutes les tables de la base de données.
 *
 * @author Anthony Pereira
 *
 */
@Named("managerFactory")
public class ManagerFactoryImpl implements ManagerFactory {

    @Inject
    private CompteManager compteManager;

    @Override
    public CompteManager getCompteManager() {
        return compteManager;
    }

    @Override
    public void setCompteManager(CompteManager compteManager) {
        this.compteManager = compteManager;
    }

}
