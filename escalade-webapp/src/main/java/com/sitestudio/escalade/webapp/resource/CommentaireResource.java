package com.sitestudio.escalade.webapp.resource;

import com.sitestudio.escalade.model.bean.site.Commentaire;
import com.sitestudio.escalade.model.bean.site.Secteur;
import com.sitestudio.escalade.model.bean.site.Site;
import com.sitestudio.escalade.model.exception.FunctionalException;
import com.sitestudio.escalade.model.exception.NotFoundException;

import java.util.List;

/**
 * Demande la liste de commentaires à la couche business.
 */
public class CommentaireResource extends AbstractResource {

    public Commentaire getCommentaire (Integer id) throws NotFoundException, FunctionalException {
        return getManagerFactory().getCommentaireManager().getCommentaire(id);
    }

    public Commentaire getCommentaire (Commentaire commentaire) throws NotFoundException, FunctionalException {
        return getManagerFactory().getCommentaireManager().getCommentaire(commentaire);
    }


    public List<Commentaire> getCommentaire () throws NotFoundException, FunctionalException {
        return getManagerFactory().getCommentaireManager().getCommentaire();
    }

    public List<Commentaire> getCommentaire(Site site) throws NotFoundException, FunctionalException {
        return getManagerFactory().getCommentaireManager().getCommentaire(site);
    }

    public Boolean createCommentaire (Commentaire commentaire) throws NotFoundException, FunctionalException {
        return getManagerFactory().getCommentaireManager().createCommentaire(commentaire);
    }

    public Boolean updateCommentaire (Commentaire commentaire) throws NotFoundException {
        return getManagerFactory().getCommentaireManager().updateCommentaire(commentaire);
    }

    public Boolean deleteCommentaire (Commentaire commentaire) throws NotFoundException {
        return getManagerFactory().getCommentaireManager().deleteCommentaire(commentaire);
    }


}
