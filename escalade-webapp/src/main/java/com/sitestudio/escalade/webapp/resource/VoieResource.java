package com.sitestudio.escalade.webapp.resource;

import com.sitestudio.escalade.model.bean.site.Voie;
import com.sitestudio.escalade.model.exception.NotFoundException;

import java.util.List;

public class VoieResource extends AbstractResource {

    public Voie getVoie(Integer id) throws NotFoundException {
        return getManagerFactory().getVoieManager().getVoie(id);
    }

    public List<Voie> getVoie() throws NotFoundException {
        return  getManagerFactory().getVoieManager().getVoie();
    }

    public Boolean createVoie(Voie voie) throws NotFoundException {
        return getManagerFactory().getVoieManager().createVoie(voie);
    }

    public Boolean updateVoie(Voie voie) throws NotFoundException {
        return getManagerFactory().getVoieManager().updateVoie(voie);
    }

    public Boolean deleteVoie(Voie voie) throws NotFoundException {
        return getManagerFactory().getVoieManager().deleteVoie(voie);
    }

}
