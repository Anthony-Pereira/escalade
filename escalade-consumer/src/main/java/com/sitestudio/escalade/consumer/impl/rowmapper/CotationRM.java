package com.sitestudio.escalade.consumer.impl.rowmapper;

import com.sitestudio.escalade.model.bean.referentiel.Cotation;
import org.springframework.jdbc.core.RowMapper;

import javax.inject.Named;
import java.sql.ResultSet;
import java.sql.SQLException;

@Named
public class CotationRM implements RowMapper {

    @Override
    public Object mapRow(ResultSet resultSet, int i) throws SQLException {

        Cotation cotation = new Cotation(resultSet.getInt("id"));

        cotation.setDifficulte(resultSet.getString("cotation"));

        return cotation;
    }
}
