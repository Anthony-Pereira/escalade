package com.sitestudio.escalade.consumer.impl.rowmapper;

import com.sitestudio.escalade.consumer.impl.dao.DepartementDaoImpl;
import com.sitestudio.escalade.model.bean.compte.Adresse;
import com.sitestudio.escalade.model.exception.NotFoundException;
import org.springframework.jdbc.core.RowMapper;

import javax.inject.Inject;
import javax.inject.Named;
import java.sql.ResultSet;
import java.sql.SQLException;

@Named
public class AdresseRM implements RowMapper<Adresse> {

    @Inject
    DepartementDaoImpl departementDao;

    @Override
    public Adresse mapRow(ResultSet rs, int rowNum) throws SQLException {

        Adresse adresse = new Adresse(rs.getInt("adresse_id"));

        adresse.setNumero(rs.getString("numero"));
        adresse.setRue(rs.getString("rue"));
        adresse.setCodePostal(rs.getString("code_postal"));
        adresse.setVille(rs.getString("ville"));

        /*try {
            adresse.setDepartement(departementDao.read(rs.getInt("departement_id")));
        } catch (NotFoundException e) {
            e.printStackTrace();
        }*/

        return adresse;
    }
}
