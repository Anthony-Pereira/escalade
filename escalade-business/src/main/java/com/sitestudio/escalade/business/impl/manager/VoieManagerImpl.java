package com.sitestudio.escalade.business.impl.manager;

import com.sitestudio.escalade.business.contract.manager.VoieManager;
import com.sitestudio.escalade.consumer.impl.dao.AbstractDao;
import com.sitestudio.escalade.model.bean.site.Secteur;
import com.sitestudio.escalade.model.bean.site.Voie;
import com.sitestudio.escalade.model.exception.NotFoundException;

import javax.inject.Named;
import java.util.List;

/**
 * Implémentation de l'interface manager "VoieManager".
 *
 * @author Anthony Pereira
 */
@Named
public class VoieManagerImpl extends AbstractManager implements VoieManager {

    @Override
    public Voie getVoie(Integer id) throws NotFoundException {
        return getDaoFactory().getVoieDao().read(id);
    }

    @Override
    public List<Voie> getVoie() throws NotFoundException {
        return getDaoFactory().getVoieDao().readAll();
    }

    @Override
    public List<Voie> getVoie(Secteur secteur) throws NotFoundException {
        return getDaoFactory().getVoieDao().readAll(secteur);
    }

    @Override
    public Boolean createVoie(Voie voie) throws NotFoundException {
        return getDaoFactory().getVoieDao().create(voie);
    }

    @Override
    public Boolean updateVoie(Voie voie) throws NotFoundException {
        return getDaoFactory().getVoieDao().update(voie);
    }

    @Override
    public Boolean deleteVoie(Voie voie) throws NotFoundException {
        return getDaoFactory().getVoieDao().delete(voie);
    }
}
