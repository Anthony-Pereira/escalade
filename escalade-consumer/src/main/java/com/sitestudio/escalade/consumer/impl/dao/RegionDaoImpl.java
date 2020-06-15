package com.sitestudio.escalade.consumer.impl.dao;

import com.sitestudio.escalade.consumer.contract.dao.RegionDao;
import com.sitestudio.escalade.consumer.impl.rowmapper.RegionRM;
import com.sitestudio.escalade.model.bean.referentiel.Departement;
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
    public Region read(Departement departement) throws NotFoundException {

        String sql = "SELECT * FROM region WHERE id = '" + departement.getRegion().getId() + "'";

        JdbcTemplate jdbcTemplate = new JdbcTemplate(getDataSource());

        List<Region> listRegion = jdbcTemplate.query(sql,regionRM);

        Region region;

        if (listRegion.size() == 0) {
            throw new  NotFoundException("La région n'existe pas");
        } else {
            region = listRegion.get(0);
        }

        return region;
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
