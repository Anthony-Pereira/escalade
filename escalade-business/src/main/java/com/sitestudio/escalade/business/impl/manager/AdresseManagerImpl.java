package com.sitestudio.escalade.business.impl.manager;

import com.sitestudio.escalade.business.contract.manager.AdresseManager;
import com.sitestudio.escalade.model.bean.compte.Adresse;

import javax.inject.Named;

@Named
public class AdresseManagerImpl extends AbstractManager implements AdresseManager {

    @Override
    public Adresse getAdresse(Adresse adresse) {
        return getDaoFactory().getAdresseDao().read(adresse);
    }

    @Override
    public Boolean createAdresse(Adresse adresse) {
        return getDaoFactory().getAdresseDao().create(adresse);
    }

    @Override
    public Boolean updateAdresse(Adresse adresse) {
        return getDaoFactory().getAdresseDao().update(adresse);
    }

    @Override
    public Boolean deleteAdresse(Adresse adresse) {
        return getDaoFactory().getAdresseDao().delete(adresse);
    }
}
