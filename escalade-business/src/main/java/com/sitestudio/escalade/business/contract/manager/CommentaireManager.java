package com.sitestudio.escalade.business.contract.manager;

import com.sitestudio.escalade.model.bean.site.Commentaire;
import com.sitestudio.escalade.model.exception.FunctionalException;
import com.sitestudio.escalade.model.exception.NotFoundException;

public interface CommentaireManager {

    /**
     * Retourne l'objet Commentaire ciblé.
     * @param id L'identifiant d'un commentaire ciblé.
     * @return Un objet Commentaire.
     * @throws NotFoundException */
    Commentaire getCommentaire (Integer id) throws NotFoundException, FunctionalException;

    /**Créer un commentaire.
     * @param commentaire L'identifiant d'un commentaire ciblé.
     * @return Un objet Commentaire.
     * @throws NotFoundException */
    Boolean createCommentaire (Commentaire commentaire) throws NotFoundException, FunctionalException;

    /**Modifier un commentaire.
     * @param commentaire L'identifiant d'un commentaire ciblé.
     * @return Un objet Commentaire.
     * @throws NotFoundException */
    Boolean updateCommentaire (Commentaire commentaire) throws  NotFoundException;

    /**Supprimer un commentaire.
     * @param commentaire L'identifiant d'un commentaire ciblé.
     * @return Un objet Commentaire.
     * @throws NotFoundException */
    Boolean deleteCommentaire (Commentaire commentaire) throws NotFoundException;

}
