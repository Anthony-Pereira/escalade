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

        Integer roleId = new Integer(rs.getInt("id"));
        
        EnumRole enumRole;
        
        switch (roleId){
            case 1 : enumRole = EnumRole.ADMINISTRATEUR;
                break;
            case 2 : enumRole = EnumRole.MEMBRE;
                break;
            case 3 :enumRole = EnumRole.UTILISATEUR;
                break;
            default:
                throw new IllegalStateException("Unexpected value: " + roleId);
        }
        
        return enumRole;
    }
}
