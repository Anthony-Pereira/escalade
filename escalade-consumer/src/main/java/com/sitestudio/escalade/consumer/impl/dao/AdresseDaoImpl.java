package com.sitestudio.escalade.consumer.impl.dao;

import com.sitestudio.escalade.consumer.contract.dao.AdresseDao;
import com.sitestudio.escalade.consumer.impl.rowmapper.AdresseRM;
import com.sitestudio.escalade.model.bean.compte.Adresse;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;

import javax.inject.Inject;
import javax.inject.Named;
import java.sql.Types;
import java.util.List;

@Named
public class AdresseDaoImpl extends AbstractDao implements AdresseDao {

    @Inject
    AdresseRM adresseRM;

    @Override
    public Adresse read(Adresse adresse) {

        String sql = "SELECT * FROM adresse WHERE adresse_id ='" + adresse.getId() + "'";

        JdbcTemplate jdbcTemplate = new JdbcTemplate(getDataSource());

        List<Adresse> listAdresse = jdbcTemplate.query(sql,adresseRM);

        Adresse utilisateur = listAdresse.get(0);

        return utilisateur;
    }

    @Override
    public Adresse read(String code) {
        return null;
    }

    @Override
    public List<Adresse> readAll() {
        return null;
    }

    @Override
    public List<Adresse> readAll(int id) {
        return null;
    }

    @Override
    public Boolean create(Adresse adresse) {

        String sql = "INSERT INTO adresse " +
                "(numero,rue,code_postal,ville,departement_id)" +
                " VALUES " +
                "(:numero,:rue,:code_postal,:ville,:departement_id)";

        MapSqlParameterSource mapSqlParameterSource = getMapSqlParameterSource(adresse);

        NamedParameterJdbcTemplate jdbcTemplate = new NamedParameterJdbcTemplate(getDataSource());

        Integer nbCreate = jdbcTemplate.update(sql,mapSqlParameterSource);

        return nbCreate > 0;
    }

    @Override
    public Boolean update(Adresse adresse) {

        String sql = "UPDATE adresse SET numero = :numero, rue = :rue, code_postal = :code_postal, ville = :ville, departement_id = :departement_id " +
                "WHERE adresse_id = '" + adresse.getId() + "'";

        MapSqlParameterSource mapSqlParameterSource = getMapSqlParameterSource(adresse);

        NamedParameterJdbcTemplate jdbcTemplate = new NamedParameterJdbcTemplate(getDataSource());

        Integer nbUpdate = jdbcTemplate.update(sql,mapSqlParameterSource);

        return nbUpdate > 0;
    }

    @Override
    public Boolean delete(Adresse adresse) {

        String sql = "DELETE FROM adresse WHERE adresse_id ='" + adresse.getId() + "'";

        MapSqlParameterSource mapSqlParameterSource = new MapSqlParameterSource();

        mapSqlParameterSource.addValue("adresse_id",adresse.getId(),Types.INTEGER);

        NamedParameterJdbcTemplate jdbcTemplate = new NamedParameterJdbcTemplate(getDataSource());

        Integer nbDelete = jdbcTemplate.update(sql,mapSqlParameterSource);

        return nbDelete > 0;
    }

    private MapSqlParameterSource getMapSqlParameterSource(Adresse adresse) {
        MapSqlParameterSource mapSqlParameterSource = new MapSqlParameterSource();

        mapSqlParameterSource.addValue("adresse_id", adresse.getId(), Types.INTEGER);
        mapSqlParameterSource.addValue("numero", adresse.getNumero(), Types.VARCHAR);
        mapSqlParameterSource.addValue("rue", adresse.getRue(), Types.VARCHAR);
        mapSqlParameterSource.addValue("code_postal", adresse.getCodePostal(), Types.VARCHAR);
        mapSqlParameterSource.addValue("ville", adresse.getVille(), Types.VARCHAR);
        mapSqlParameterSource.addValue("departement_id",adresse.getDepartement(),Types.INTEGER);
        return mapSqlParameterSource;
    }

}