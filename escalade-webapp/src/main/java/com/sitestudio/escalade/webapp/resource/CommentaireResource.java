package com.sitestudio.escalade.webapp.resource;

import com.sitestudio.escalade.model.bean.site.Commentaire;
import com.sitestudio.escalade.model.exception.FunctionalException;
import com.sitestudio.escalade.model.exception.NotFoundException;

/**
 * Demande la liste de commentaires à la couche business.
 */
public class CommentaireResource extends AbstractResource {

    public Commentaire getCommentaire (Integer id) throws NotFoundException, FunctionalException {
        return getManagerFactory().getCommentaireManager().getCommentaire(id);
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
