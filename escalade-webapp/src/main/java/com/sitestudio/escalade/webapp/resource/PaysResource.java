package com.sitestudio.escalade.webapp.resource;

import com.sitestudio.escalade.model.bean.referentiel.Pays;
import com.sitestudio.escalade.model.bean.referentiel.Region;
import com.sitestudio.escalade.model.exception.NotFoundException;

/**
 * Demande la liste des pays à la couche business.
 */
public class PaysResource extends AbstractResource {

    public Pays getPays(Integer code) throws NotFoundException {
        return getManagerFactory().getPaysManager().getPays(code);
    }

    public Boolean createPays(Pays pays) throws NotFoundException {
        return getManagerFactory().getPaysManager().createPays(pays);
    }

    public Boolean updatePays(Pays pays) throws NotFoundException {
        return getManagerFactory().getPaysManager().updatePays(pays);
    }

    public Boolean deletePays(Pays pays) throws NotFoundException {
        return getManagerFactory().getPaysManager().deletePays(pays);
    }

}
