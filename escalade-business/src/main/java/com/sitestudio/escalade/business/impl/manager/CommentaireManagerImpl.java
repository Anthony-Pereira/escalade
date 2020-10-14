package com.sitestudio.escalade.business.impl.manager;

import com.sitestudio.escalade.business.contract.manager.CommentaireManager;
import com.sitestudio.escalade.model.bean.site.Commentaire;
import com.sitestudio.escalade.model.bean.site.Site;
import com.sitestudio.escalade.model.exception.FunctionalException;
import com.sitestudio.escalade.model.exception.NotFoundException;

import javax.inject.Named;
import java.util.List;

/**
 * Implémentation de l'interface manager "CommentaireManager".
 *
 * @author Anthony Pereira
 */
@Named
public class CommentaireManagerImpl extends AbstractManager implements CommentaireManager {

    @Override
    public Commentaire getCommentaire(Integer id) throws NotFoundException, FunctionalException {
        return getDaoFactory().getCommentaireDao().read(id);
    }

    @Override
    public List<Commentaire> getCommentaire() throws NotFoundException, FunctionalException {
        return getDaoFactory().getCommentaireDao().readAll();
    }

    @Override
    public List<Commentaire> getCommentaire(Site site) throws NotFoundException, FunctionalException {
        return getDaoFactory().getCommentaireDao().readAll(site);
    }

    @Override
    public Boolean createCommentaire(Commentaire commentaire) throws NotFoundException, FunctionalException {
        return getDaoFactory().getCommentaireDao().create(commentaire);
    }

    @Override
    public Boolean updateCommentaire(Commentaire commentaire) throws NotFoundException {
        return getDaoFactory().getCommentaireDao().update(commentaire);
    }

    @Override
    public Boolean deleteCommentaire(Commentaire commentaire) throws NotFoundException {
        return getDaoFactory().getCommentaireDao().delete(commentaire);
    }
}
