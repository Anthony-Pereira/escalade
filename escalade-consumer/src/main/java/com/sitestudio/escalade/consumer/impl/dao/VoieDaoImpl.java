package com.sitestudio.escalade.consumer.impl.dao;

import com.sitestudio.escalade.consumer.contract.dao.VoieDao;
import com.sitestudio.escalade.consumer.impl.rowmapper.VoieRM;
import com.sitestudio.escalade.model.bean.site.Voie;
import com.sitestudio.escalade.model.exception.NotFoundException;

import javax.inject.Inject;
import javax.inject.Named;
import java.util.List;

@Named
public class VoieDaoImpl implements VoieDao {

    @Inject
    VoieRM voieRM;

    @Override
    public Voie read(Voie voie) throws NotFoundException {
        return null;
    }

    @Override
    public List<Voie> readAll() {
        return null;
    }

    @Override
    public List<Voie> readAll(int id) {
        return null;
    }

    @Override
    public Boolean create(Voie voie) {
        return null;
    }

    @Override
    public Boolean update(Voie voie) {
        return null;
    }

    @Override
    public Boolean delete(Voie voie) {
        return null;
    }
}
