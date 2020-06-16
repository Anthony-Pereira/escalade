package com.sitestudio.escalade.consumer.impl.rowmapper;

import com.sitestudio.escalade.consumer.impl.dao.PaysDaoImpl;
import com.sitestudio.escalade.model.bean.referentiel.Region;
import com.sitestudio.escalade.model.exception.NotFoundException;
import org.springframework.jdbc.core.RowMapper;

import javax.inject.Inject;
import javax.inject.Named;
import java.sql.ResultSet;
import java.sql.SQLException;

@Named
public class RegionRM implements RowMapper<Region> {

    @Inject
    PaysDaoImpl paysDao;

    @Override
    public Region mapRow(ResultSet rs, int rowNum) throws SQLException {

        Region region = new Region(rs.getInt("id"));

        region.setNom(rs.getString("nom"));

        try {
            region.setPays(paysDao.read(region));
        } catch (NotFoundException e) {
            e.printStackTrace();
        }

        return region;
    }
}
