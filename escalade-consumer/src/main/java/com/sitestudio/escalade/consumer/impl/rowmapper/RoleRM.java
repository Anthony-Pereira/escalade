package com.sitestudio.escalade.consumer.impl.rowmapper;

import com.sitestudio.escalade.model.bean.referentiel.EnumRole;
import org.springframework.jdbc.core.RowMapper;

import javax.inject.Named;
import java.sql.ResultSet;
import java.sql.SQLException;

@Named
public class RoleRM implements RowMapper<EnumRole> {

    @Override
    public EnumRole mapRow(ResultSet rs, int rowNum) throws SQLException {

        EnumRole enumRole = EnumRole.valueOf(String.valueOf(rs.getInt("id")));

        EnumRole.valueOf(rs.getString("designation"));
        EnumRole.valueOf(rs.getString("description"));

        enumRole.setId(rs.getInt("id"));
        enumRole.setDesignation(rs.getString("designation"));
        enumRole.setDescription(rs.getString("description"));

        return enumRole;
    }
}
