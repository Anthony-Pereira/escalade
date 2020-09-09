package com.sitestudio.escalade.consumer.impl.rowmapper;

import com.sitestudio.escalade.consumer.impl.dao.CompteDaoImpl;
import com.sitestudio.escalade.model.bean.topo.Topo;
import org.springframework.jdbc.core.RowMapper;

import javax.inject.Inject;
import javax.inject.Named;
import java.sql.ResultSet;
import java.sql.SQLException;

@Named
public class TopoRM implements RowMapper {

    @Inject
    CompteDaoImpl compteDao;

    @Override
    public Object mapRow(ResultSet rs, int rowNum) throws SQLException {

        Topo topo = new Topo(rs.getInt("topo_id"));

        topo.setNom(rs.getString("nom"));
        topo.setDescription(rs.getString("description"));
        topo.setLieu(rs.getString("lieu"));
        topo.setParution(rs.getInt("parution"));
        topo.setReservation(Boolean.parseBoolean("reservation"));

        topo.setCompte(compteDao.read(rs.getString("compte_id")));
        topo.setEmprunteur(compteDao.read(rs.getString("compte_id")));

        return topo;
    }
}
