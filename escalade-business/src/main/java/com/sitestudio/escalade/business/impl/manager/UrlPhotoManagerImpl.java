package com.sitestudio.escalade.business.impl.manager;

import com.sitestudio.escalade.business.contract.manager.UrlPhotoManager;
import com.sitestudio.escalade.consumer.impl.dao.AbstractDao;
import com.sitestudio.escalade.model.bean.site.UrlPhoto;
import com.sitestudio.escalade.model.exception.NotFoundException;

import javax.inject.Named;

/**
 * Implémentation de l'interface manager "UrlPhotoManager".
 *
 * @author Anthony Pereira
 */
@Named
public class UrlPhotoManagerImpl extends AbstractDao implements UrlPhotoManager {

    @Override
    public UrlPhoto getUrlPhoto(Integer id) throws NotFoundException {
        return null;
    }

    @Override
    public Boolean createUrlPhoto(UrlPhoto urlPhoto) throws NotFoundException {
        return null;
    }

    @Override
    public Boolean updateUrlPhoto(UrlPhoto urlPhoto) throws NotFoundException {
        return null;
    }

    @Override
    public Boolean deleteUrlPhoto(UrlPhoto urlPhoto) throws NotFoundException {
        return null;
    }
}
