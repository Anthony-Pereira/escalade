package com.sitestudio.escalade.consumer.contract;

import com.sitestudio.escalade.consumer.contract.dao.*;

public interface DaoFactory {

    CompteDao getCompteDao();

    void setCompteDao(CompteDao compteDao);

    AdresseDao getAdresseDao();

    void setAdresseDao(AdresseDao adresseDao);

    DepartementDao getDepartementDao();

    void setDepartementDao(AdresseDao adresseDao);

    RegionDao getRegionDao();

    void setRegionDao(RegionDao regionDao);

    PaysDao getPaysDao();

    void setPaysDao(PaysDao paysDao);

}
