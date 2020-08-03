package com.sitestudio.escalade.business.impl.manager;

import com.sitestudio.escalade.business.contract.manager.CotationManager;
import com.sitestudio.escalade.model.bean.referentiel.Cotation;
import com.sitestudio.escalade.model.exception.NotFoundException;

import javax.inject.Named;
import java.util.List;

/**
 * Implémentation de l'interface manager "CotationManager".
 *
 * @author Anthony Pereira
 */
@Named
public class CotationManagerImpl extends AbstractManager implements CotationManager {


    @Override
    public Cotation getCotation(Integer id) throws NotFoundException {
        return getDaoFactory().getCotationDao().read(id);
    }

    @Override
    public List<Cotation> getCotation() throws NotFoundException {
        return getDaoFactory().getCotationDao().readAll();
    }

    @Override
    public Boolean createCotation(Cotation cotation) throws NotFoundException {
        return getDaoFactory().getCotationDao().create(cotation);
    }

    @Override
    public Boolean updateCotation(Cotation cotation) throws NotFoundException {
        return getDaoFactory().getCotationDao().update(cotation);
    }

    @Override
    public Boolean deleteCotation(Cotation cotation) throws NotFoundException {
        return getDaoFactory().getCotationDao().delete(cotation);
    }
}
