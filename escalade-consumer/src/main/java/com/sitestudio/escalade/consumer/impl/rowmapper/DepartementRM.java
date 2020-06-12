package com.sitestudio.escalade.consumer.impl.rowmapper;

import com.sitestudio.escalade.consumer.impl.dao.RegionDaoImpl;
import com.sitestudio.escalade.model.bean.referentiel.Departement;
import com.sitestudio.escalade.model.bean.referentiel.Region;
import com.sitestudio.escalade.model.exception.NotFoundException;
import org.springframework.jdbc.core.RowMapper;

import javax.inject.Inject;
import javax.inject.Named;
import java.sql.ResultSet;
import java.sql.SQLException;

@Named
public class DepartementRM implements RowMapper<Departement> {

    @Inject
    RegionDaoImpl regionDao;

    @Override
    public Departement mapRow(ResultSet rs, int rowNum) throws SQLException {

        Departement departement = new Departement(rs.getInt("departement_id"));

        departement.setNumero(rs.getString("numero"));
        departement.setNom(rs.getString("nom"));

        try {
            departement.setRegion(regionDao.read(rs.getInt("region_id")));
        } catch (NotFoundException e) {
            e.printStackTrace();
        }

        return departement;
    }
}
