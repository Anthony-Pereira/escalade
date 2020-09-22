package com.sitestudio.escalade.consumer.impl.rowmapper;

import com.sitestudio.escalade.consumer.impl.dao.CompteDaoImpl;
import com.sitestudio.escalade.model.bean.topo.Topo;
import com.sitestudio.escalade.model.exception.NotFoundException;
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
        topo.setReservation(rs.getInt("reservation"));

        try {
            topo.setCompte(compteDao.read(rs.getInt("compte_id")));
        } catch (NotFoundException e) {
            e.printStackTrace();
        }

        try {
            topo.setEmprunteur(compteDao.read(rs.getInt("emprunteur_id")));
        } catch (NotFoundException e) {
            e.printStackTrace();
        }

        return topo;
    }
}
