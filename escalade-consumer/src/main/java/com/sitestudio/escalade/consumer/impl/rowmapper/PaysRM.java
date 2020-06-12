package com.sitestudio.escalade.consumer.impl.rowmapper;

import com.sitestudio.escalade.model.bean.referentiel.Pays;
import org.springframework.jdbc.core.RowMapper;

import javax.inject.Named;
import java.sql.ResultSet;
import java.sql.SQLException;

@Named
public class PaysRM implements RowMapper<Pays> {

    @Override
    public Pays mapRow(ResultSet rs, int rowNum) throws SQLException {

        Pays pays = new Pays(rs.getInt("pays_code"));

        pays.setNom(rs.getString("nom"));
        pays.setCodeAlpha2("code_alpha_2");
        pays.setCodeAlpha3("code_alpha_3");

        return pays;
    }
}
