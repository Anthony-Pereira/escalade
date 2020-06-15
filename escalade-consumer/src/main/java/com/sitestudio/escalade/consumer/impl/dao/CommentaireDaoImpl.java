package com.sitestudio.escalade.consumer.impl.dao;

import com.sitestudio.escalade.consumer.contract.dao.CommentaireDao;
import com.sitestudio.escalade.consumer.impl.rowmapper.CommentaireRM;
import com.sitestudio.escalade.model.bean.site.Commentaire;
import com.sitestudio.escalade.model.exception.NotFoundException;

import javax.inject.Inject;
import javax.inject.Named;
import java.util.List;

@Named
public class CommentaireDaoImpl extends AbstractDao implements CommentaireDao {

    @Inject
    CommentaireRM commentaireRM;

    @Override
    public Commentaire read(Commentaire commentaire) throws NotFoundException {
        return null;
    }

    @Override
    public List<Commentaire> readAll() {
        return null;
    }

    @Override
    public List<Commentaire> readAll(int id) {
        return null;
    }

    @Override
    public Boolean create(Commentaire commentaire) {
        return null;
    }

    @Override
    public Boolean update(Commentaire commentaire) {
        return null;
    }

    @Override
    public Boolean delete(Commentaire commentaire) {
        return null;
    }
}
