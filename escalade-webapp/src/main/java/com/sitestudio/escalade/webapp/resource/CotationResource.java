package com.sitestudio.escalade.webapp.resource;

import com.sitestudio.escalade.model.bean.referentiel.Cotation;
import com.sitestudio.escalade.model.exception.NotFoundException;

import java.util.List;

/**
 * Demande la liste de cotation à la couche business.
 */
public class CotationResource extends AbstractResource {

    public Cotation getCotation(Integer id) throws NotFoundException {
        return getManagerFactory().getCotationManager().getCotation(id);
    }

    public List<Cotation> getCotation() throws NotFoundException {
        return getManagerFactory().getCotationManager().getCotation();
    }

    public Boolean createCotation(Cotation cotation) throws NotFoundException {
        return getManagerFactory().getCotationManager().createCotation(cotation);
    }

    public Boolean updateCotation(Cotation cotation) throws NotFoundException {
        return getManagerFactory().getCotationManager().updateCotation(cotation);
    }

    public Boolean deleteCotation(Cotation cotation) throws NotFoundException {
        return getManagerFactory().getCotationManager().deleteCotation(cotation);
    }

}
