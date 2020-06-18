package com.sitestudio.escalade.webapp.resource;

import com.sitestudio.escalade.model.bean.site.UrlPhoto;
import com.sitestudio.escalade.model.exception.NotFoundException;

/**
 * Demande la liste des url photos à la couche business.
 */
public class UrlPhotoResource extends AbstractResource {

    public UrlPhoto getUrlPhoto(Integer id) throws NotFoundException {
        return getManagerFactory().getUrlPhotoManager().getUrlPhoto(id);
    }

    public Boolean createUrlPhoto(UrlPhoto urlPhoto) throws NotFoundException {
        return getManagerFactory().getUrlPhotoManager().createUrlPhoto(urlPhoto);
    }

    public Boolean updateUrlPhoto(UrlPhoto urlPhoto) throws NotFoundException {
        return getManagerFactory().getUrlPhotoManager().updateUrlPhoto(urlPhoto);
    }

    public Boolean deleteUrlPhoto(UrlPhoto urlPhoto) throws NotFoundException {
        return getManagerFactory().getUrlPhotoManager().deleteUrlPhoto(urlPhoto);
    }

}
