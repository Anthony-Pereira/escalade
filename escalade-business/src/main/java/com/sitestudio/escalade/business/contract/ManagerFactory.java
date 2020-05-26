package com.sitestudio.escalade.business.contract;

import com.sitestudio.escalade.business.contract.manager.AdresseManager;
import com.sitestudio.escalade.business.contract.manager.CompteManager;
import com.sitestudio.escalade.model.bean.compte.Compte;

public interface ManagerFactory {

    CompteManager getCompteManager();

    void setCompteManager(CompteManager compteManager);

    AdresseManager getAdresseManager();

    void setAdresseManager(AdresseManager adresseManager);
}
