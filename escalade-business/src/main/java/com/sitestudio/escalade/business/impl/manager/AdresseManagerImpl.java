package com.sitestudio.escalade.business.impl.manager;

import com.sitestudio.escalade.business.contract.manager.AdresseManager;
import com.sitestudio.escalade.model.bean.compte.Adresse;
import com.sitestudio.escalade.model.exception.FunctionalException;
import com.sitestudio.escalade.model.exception.NotFoundException;

import javax.inject.Named;

/**
 * Implémentation de l'interface manager "AdresseManager".
 *
 * @author Anthony Pereira
 */
@Named
public class AdresseManagerImpl extends AbstractManager implements AdresseManager {

    @Override
    public Adresse getAdresse(Integer id) throws FunctionalException, NotFoundException {
        return getDaoFactory().getAdresseDao().read(id);
    }

    @Override
    public Boolean createAdresse(Adresse adresse) throws FunctionalException {
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
