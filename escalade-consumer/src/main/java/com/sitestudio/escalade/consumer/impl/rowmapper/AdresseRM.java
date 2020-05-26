package com.sitestudio.escalade.consumer.impl.rowmapper;

import com.sitestudio.escalade.model.bean.compte.Adresse;
import org.springframework.jdbc.core.RowMapper;

import javax.inject.Named;
import java.sql.ResultSet;
import java.sql.SQLException;

@Named
public class AdresseRM implements RowMapper<Adresse> {

    @Override
    public Adresse mapRow(ResultSet rs, int rowNum) throws SQLException {
        return null;
    }
}
