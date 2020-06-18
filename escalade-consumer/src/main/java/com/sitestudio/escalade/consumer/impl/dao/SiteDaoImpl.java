package com.sitestudio.escalade.consumer.impl.dao;

import com.sitestudio.escalade.consumer.contract.dao.SiteDao;
import com.sitestudio.escalade.consumer.impl.rowmapper.SiteRM;
import com.sitestudio.escalade.model.bean.site.Site;
import com.sitestudio.escalade.model.exception.NotFoundException;

import javax.inject.Inject;
import javax.inject.Named;
import java.util.List;

@Named
public class SiteDaoImpl extends AbstractDao implements SiteDao {

    @Inject
    SiteRM siteRM;

    @Override
    public Site read(Integer id) throws NotFoundException {
        return null;
    }

    @Override
    public List<Site> readAll() {
        return null;
    }

    @Override
    public List<Site> readAll(int id) {
        return null;
    }

    @Override
    public Boolean create(Site site) {
        return null;
    }

    @Override
    public Boolean update(Site site) {
        return null;
    }

    @Override
    public Boolean delete(Site site) {
        return null;
    }
}
