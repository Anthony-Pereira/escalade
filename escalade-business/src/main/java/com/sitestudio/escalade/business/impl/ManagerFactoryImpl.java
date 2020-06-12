package com.sitestudio.escalade.business.impl;

import com.sitestudio.escalade.business.contract.ManagerFactory;
import com.sitestudio.escalade.business.contract.manager.*;

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

    @Inject
    private AdresseManager adresseManager;

    @Inject
    private DepartementManager departementManager;

    @Inject
    private RegionManager regionManager;

    @Inject
    private PaysManager paysManager;

    @Override
    public CompteManager getCompteManager() {
        return compteManager;
    }

    @Override
    public void setCompteManager(CompteManager compteManager) {
        this.compteManager = compteManager;
    }

    @Override
    public AdresseManager getAdresseManager() {
        return adresseManager;
    }

    @Override
    public void setAdresseManager(AdresseManager adresseManager) {
        this.adresseManager = adresseManager;
    }

    @Override
    public DepartementManager getDepartementManager() {
        return this.departementManager;
    }

    @Override
    public void setDepartementManager(DepartementManager departementManager) {

    }

    @Override
    public RegionManager getRegionManager() {
        return this.regionManager;
    }

    @Override
    public void setRegionManager(RegionManager regionManager) {

    }

    @Override
    public PaysManager getPaysManager() {
        return this.paysManager;
    }

    @Override
    public void setPaysManager(PaysManager paysManager) {

    }
}
