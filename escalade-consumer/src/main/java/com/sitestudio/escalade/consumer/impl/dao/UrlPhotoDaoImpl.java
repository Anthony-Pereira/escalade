package com.sitestudio.escalade.consumer.impl.dao;

import com.sitestudio.escalade.consumer.contract.dao.UrlPhotoDao;
import com.sitestudio.escalade.consumer.impl.rowmapper.UrlPhotoRM;
import com.sitestudio.escalade.model.bean.site.UrlPhoto;
import com.sitestudio.escalade.model.exception.NotFoundException;

import javax.inject.Inject;
import javax.inject.Named;
import java.util.List;

@Named
public class UrlPhotoDaoImpl extends AbstractDao implements UrlPhotoDao {

    @Inject
    UrlPhotoRM urlPhotoRM;

    @Override
    public UrlPhoto read(Integer id) throws NotFoundException {
        return null;
    }

    @Override
    public List<UrlPhoto> readAll() {
        return null;
    }

    @Override
    public List<UrlPhoto> readAll(int id) {
        return null;
    }

    @Override
    public Boolean create(UrlPhoto urlPhoto) {
        return null;
    }

    @Override
    public Boolean update(UrlPhoto urlPhoto) {
        return null;
    }

    @Override
    public Boolean delete(UrlPhoto urlPhoto) {
        return null;
    }
}
