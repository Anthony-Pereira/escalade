package com.sitestudio.escalade.business.impl.manager;

import com.sitestudio.escalade.business.contract.manager.VoieManager;
import com.sitestudio.escalade.consumer.impl.dao.AbstractDao;
import com.sitestudio.escalade.model.bean.site.Voie;
import com.sitestudio.escalade.model.exception.NotFoundException;

import javax.inject.Named;

/**
 * Implémentation de l'interface manager "VoieManager".
 *
 * @author Anthony Pereira
 */
@Named
public class VoieManagerImpl extends AbstractDao implements VoieManager {

    @Override
    public Voie getVoie(Integer id) throws NotFoundException {
        return null;
    }

    @Override
    public Boolean createVoie(Voie voie) throws NotFoundException {
        return null;
    }

    @Override
    public Boolean updateVoie(Voie voie) throws NotFoundException {
        return null;
    }

    @Override
    public Boolean deleteVoie(Voie voie) throws NotFoundException {
        return null;
    }
}
