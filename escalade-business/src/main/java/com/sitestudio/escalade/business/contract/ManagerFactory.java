package com.sitestudio.escalade.business.contract;

import com.sitestudio.escalade.business.contract.manager.*;

public interface ManagerFactory {

    CompteManager getCompteManager();

    void setCompteManager(CompteManager compteManager);

    AdresseManager getAdresseManager();

    void setAdresseManager(AdresseManager adresseManager);

    DepartementManager getDepartementManager();

    void setDepartementManager(DepartementManager departementManager);

    RegionManager getRegionManager();

    void setRegionManager(RegionManager regionManager);

    PaysManager getPaysManager();

    void setPaysManager(PaysManager paysManager);

}
