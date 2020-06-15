package com.sitestudio.escalade.consumer.impl.dao;

import com.sitestudio.escalade.consumer.contract.dao.SecteurDao;
import com.sitestudio.escalade.consumer.impl.rowmapper.SecteurRM;
import com.sitestudio.escalade.model.bean.site.Secteur;
import com.sitestudio.escalade.model.exception.NotFoundException;

import javax.inject.Inject;
import javax.inject.Named;
import java.util.List;

@Named
public class SecteurDaoImpl extends AbstractDao implements SecteurDao {

    @Inject
    SecteurRM secteurRM;

    @Override
    public Secteur read(Secteur secteur) throws NotFoundException {
        return null;
    }

    @Override
    public List<Secteur> readAll() {
        return null;
    }

    @Override
    public List<Secteur> readAll(int id) {
        return null;
    }

    @Override
    public Boolean create(Secteur secteur) {
        return null;
    }

    @Override
    public Boolean update(Secteur secteur) {
        return null;
    }

    @Override
    public Boolean delete(Secteur secteur) {
        return null;
    }
}
