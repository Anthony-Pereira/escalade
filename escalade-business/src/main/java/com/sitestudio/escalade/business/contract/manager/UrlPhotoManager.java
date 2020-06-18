package com.sitestudio.escalade.business.contract.manager;

import com.sitestudio.escalade.model.bean.site.Site;
import com.sitestudio.escalade.model.bean.site.UrlPhoto;
import com.sitestudio.escalade.model.exception.NotFoundException;

public interface UrlPhotoManager {

    /**
     * Retourne la photo.
     * @param id L'identifiant d'une photo ciblé.
     * @return Un objet photo.
     * @throws NotFoundException
     */
    UrlPhoto getUrlPhoto(Integer id) throws NotFoundException;

    /**
     * Ajoute l'url d'une photo.
     * @param urlPhoto L'identifiant d'une url photo ciblé.
     * @return boolean
     * @throws NotFoundException
     */
    Boolean createUrlPhoto(UrlPhoto urlPhoto) throws NotFoundException;

    /**
     * Modifie l'url d'une photo.
     * @param urlPhoto L'identifiant d'une url photo ciblé.
     * @return boolean
     * @throws NotFoundException
     */
    Boolean updateUrlPhoto(UrlPhoto urlPhoto) throws NotFoundException;

    /**
     * Supprime l'url d'une photo.
     * @param urlPhoto L'identifiant d'une url photo ciblé.
     * @return boolean
     * @throws NotFoundException
     */
    Boolean deleteUrlPhoto(UrlPhoto urlPhoto) throws NotFoundException;

}
