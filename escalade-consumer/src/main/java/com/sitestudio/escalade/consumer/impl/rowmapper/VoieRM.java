package com.sitestudio.escalade.consumer.impl.rowmapper;

import com.sitestudio.escalade.model.bean.site.Voie;
import org.springframework.jdbc.core.RowMapper;

import javax.inject.Named;
import java.sql.ResultSet;
import java.sql.SQLException;

@Named
public class VoieRM implements RowMapper<Voie> {

    @Override
    public Voie mapRow(ResultSet rs, int rowNum) throws SQLException {
        return null;
    }
}
