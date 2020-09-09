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

    SiteManager getSiteManager();

    void setSiteManager(SiteManager siteManager);

    SecteurManager getSecteurManager();

    void setSecteurManager(SecteurManager secteurManager);

    VoieManager getVoieManager();

    void setVoieManager(VoieManager voieManager);

    TopoManager getTopoManager();

    void setTopoManager(TopoManager topoManager);

    CommentaireManager getCommentaireManager();

    void setCommentaireManager(CommentaireManager commentaireManager);

    UrlPhotoManager getUrlPhotoManager();

    void setUrlPhotoManager(UrlPhotoManager urlPhotoManager);

    CotationManager getCotationManager();

    void setCotationManager(CotationManager cotationManager);
}
