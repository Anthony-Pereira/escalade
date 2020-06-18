package com.sitestudio.escalade.business.impl.manager;

import com.sitestudio.escalade.business.contract.manager.CommentaireManager;
import com.sitestudio.escalade.model.bean.site.Commentaire;
import com.sitestudio.escalade.model.exception.FunctionalException;
import com.sitestudio.escalade.model.exception.NotFoundException;

import javax.inject.Named;

/**
 * Implémentation de l'interface manager "CommentaireManager".
 *
 * @author Anthony Pereira
 */
@Named
public class CommentaireManagerImpl extends AbstractManager implements CommentaireManager {

    @Override
    public Commentaire getCommentaire(Integer id) throws NotFoundException, FunctionalException {
        return null;
    }

    @Override
    public Boolean createCommentaire(Commentaire commentaire) throws NotFoundException, FunctionalException {
        return null;
    }

    @Override
    public Boolean updateCommentaire(Commentaire commentaire) throws NotFoundException {
        return null;
    }

    @Override
    public Boolean deleteCommentaire(Commentaire commentaire) throws NotFoundException {
        return null;
    }
}
