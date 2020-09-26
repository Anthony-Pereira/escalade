package com.sitestudio.escalade.consumer.impl.dao;

import com.sitestudio.escalade.consumer.contract.dao.RoleDao;
import com.sitestudio.escalade.consumer.impl.rowmapper.RoleRM;
import com.sitestudio.escalade.model.bean.referentiel.EnumRole;
import com.sitestudio.escalade.model.exception.NotFoundException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;

import javax.inject.Inject;
import javax.inject.Named;
import java.sql.Types;
import java.util.List;

@Named
public class RoleDaoImpl extends AbstractDao implements RoleDao {

    @Inject
    RoleRM roleRM;

    @Override
    public EnumRole read(Integer id) throws NotFoundException {

        String sql = "SELECT * FROM role WHERE id =" + id;

        JdbcTemplate jdbcTemplate = new JdbcTemplate(getDataSource());

        List<EnumRole> listRole = jdbcTemplate.query(sql,roleRM);

        EnumRole role;

        if (listRole.size() == 0) {
            throw new NotFoundException("Le rôle n'existe pas");
        } else {
            role = listRole.get(0);
        }

        return role;
    }

    @Override
    public List<EnumRole> readAll() {
        return null;
    }

    @Override
    public List<EnumRole> readAll(int id) {
        return null;
    }

    @Override
    public Boolean create(EnumRole enumRole) {

        String sql = "INSERT INTO role " +
                "(designation, description)" +
                " VALUES " +
                "(:designation, :description)";

        MapSqlParameterSource mapSqlParameterSource = getMapSqlParameterSource(enumRole);

        NamedParameterJdbcTemplate jdbcTemplate = new NamedParameterJdbcTemplate(getDataSource());

        jdbcTemplate.update(sql,mapSqlParameterSource);

        Integer nbCreate = jdbcTemplate.update(sql,mapSqlParameterSource);

        return nbCreate > 0;

    }

    @Override
    public Boolean update(EnumRole enumRole) {

        String sql = "UPDATE role SET designation=:designation,description=:description WHERE id=" + enumRole.getId() + "";

        MapSqlParameterSource mapSqlParameterSource = getMapSqlParameterSource(enumRole);

        NamedParameterJdbcTemplate jdbcTemplate = new NamedParameterJdbcTemplate(getDataSource());

        Integer nbUpdate = jdbcTemplate.update(sql,mapSqlParameterSource);

        return nbUpdate > 0;
    }

    @Override
    public Boolean delete(EnumRole enumRole) {

        String sql = "DELETE FROM role WHERE id ='" + enumRole.getId() + "'";

        MapSqlParameterSource mapSqlParameterSource = new MapSqlParameterSource();

        mapSqlParameterSource.addValue("id",enumRole.getId(), Types.INTEGER);

        NamedParameterJdbcTemplate jdbcTemplate = new NamedParameterJdbcTemplate(getDataSource());

        Integer nbDelete = jdbcTemplate.update(sql,mapSqlParameterSource);

        return nbDelete > 0;

    }

    private MapSqlParameterSource getMapSqlParameterSource(EnumRole enumRole) {
        MapSqlParameterSource mapSqlParameterSource = new MapSqlParameterSource();

        mapSqlParameterSource.addValue("id", enumRole.getId(), Types.INTEGER);
        mapSqlParameterSource.addValue("designation", enumRole.getDesignation(), Types.VARCHAR);
        mapSqlParameterSource.addValue("description", enumRole.getDescription(), Types.VARCHAR);
        return mapSqlParameterSource;
    }

}
