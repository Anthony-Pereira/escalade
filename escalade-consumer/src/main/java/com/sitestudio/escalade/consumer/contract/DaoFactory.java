package com.sitestudio.escalade.consumer.contract;

import com.sitestudio.escalade.consumer.contract.dao.AdresseDao;
import com.sitestudio.escalade.consumer.contract.dao.CompteDao;

public interface DaoFactory {

    CompteDao getCompteDao();

    void setCompteDao(CompteDao compteDao);

    AdresseDao getAdresseDao();

    void setAdresseDao(AdresseDao adresseDao);
}
