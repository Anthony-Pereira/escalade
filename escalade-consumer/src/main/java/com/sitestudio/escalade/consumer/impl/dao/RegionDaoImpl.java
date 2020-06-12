package com.sitestudio.escalade.consumer.impl.dao;

import com.sitestudio.escalade.consumer.contract.dao.RegionDao;
import com.sitestudio.escalade.consumer.impl.rowmapper.RegionRM;
import com.sitestudio.escalade.model.bean.referentiel.Region;
import com.sitestudio.escalade.model.exception.NotFoundException;
import org.springframework.jdbc.core.JdbcTemplate;

import javax.inject.Inject;
import javax.inject.Named;
import java.util.List;

@Named
public class RegionDaoImpl extends AbstractDao implements RegionDao {

    @Inject
    RegionRM regionRM;

    @Override
    public Region read(Integer id) throws NotFoundException {

        String sql = "SELECT * FROM region WHERE id = '" + id + "'";

        JdbcTemplate jdbcTemplate = new JdbcTemplate(getDataSource());

        List<Region> listRegion = jdbcTemplate.query(sql,regionRM);

        Region utilisateur;

        if (listRegion.size() == 0) {
            throw new  NotFoundException("La région n'existe pas");
        } else {
            utilisateur = listRegion.get(0);
        }

        return utilisateur;
    }

    @Override
    public Boolean create(Region region) {
        return null;
    }

    @Override
    public Boolean update(Region region) {
        return null;
    }

    @Override
    public Boolean delete(Region region) {
        return null;
    }
}
