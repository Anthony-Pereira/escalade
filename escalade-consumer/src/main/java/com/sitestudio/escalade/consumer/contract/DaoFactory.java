package com.sitestudio.escalade.consumer.contract;

import com.sitestudio.escalade.consumer.contract.dao.*;
import com.sitestudio.escalade.model.bean.referentiel.Cotation;

public interface DaoFactory {

    CompteDao getCompteDao();

    void setCompteDao(CompteDao compteDao);

    AdresseDao getAdresseDao();

    void setAdresseDao(AdresseDao adresseDao);

    DepartementDao getDepartementDao();

    void setDepartementDao(DepartementDao departementDao);

    RegionDao getRegionDao();

    void setRegionDao(RegionDao regionDao);

    PaysDao getPaysDao();

    void setPaysDao(PaysDao paysDao);

    SiteDao getSiteDao();

    void setSiteDao(SiteDao siteDao);

    SecteurDao getSecteurDao();

    void setSecteurDao(SecteurDao secteurDao);

    VoieDao getVoieDao();

    void setVoieDao(VoieDao voieDao);

    CommentaireDao getCommentaireDao();

    void setCommentaireDao(CommentaireDao commentaireDao);

    UrlPhotoDao getUrlPhotoDao();

    void setUrlPhotoDao(UrlPhotoDao urlPhotoDao);

    CotationDao getCotationDao();

    void setCotationDao(CotationDao cotationDao);
}
