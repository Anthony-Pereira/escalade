package com.sitestudio.escalade.consumer.impl.rowmapper;

import com.sitestudio.escalade.model.bean.site.Secteur;
import org.springframework.jdbc.core.RowMapper;

import javax.inject.Named;
import java.sql.ResultSet;
import java.sql.SQLException;

@Named
public class SecteurRM implements RowMapper<Secteur> {

    @Override
    public Secteur mapRow(ResultSet rs, int rowNum) throws SQLException {
        return null;
    }
}
