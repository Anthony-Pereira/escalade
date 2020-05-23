package com.sitestudio.escalade.consumer.impl.dao;

import com.sitestudio.escalade.consumer.contract.dao.CompteDao;
import com.sitestudio.escalade.consumer.impl.rowmapper.CompteRM;
import com.sitestudio.escalade.model.bean.compte.Compte;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;

import javax.inject.Inject;
import javax.inject.Named;
import java.sql.Types;
import java.util.List;

@Named
public class CompteDaoImpl extends AbstractDao implements CompteDao {

    @Inject
    CompteRM compteRM;

    @Override
    public Compte read(Compte compte) {

        String sql = "SELECT * FROM compte WHERE email='" + compte.getEmail() + "' AND  mot_de_passe='" + compte.getMotDePasse() + "'";
        // String sql = String.format("SELECT * FROM compte WHERE email='%s' AND  mot_de_passe='%s'", compte.getEmail(), compte.getMotDePasse());

        JdbcTemplate jdbcTemplate = new JdbcTemplate(getDataSource());

        List<Compte> listCompte = jdbcTemplate.query(sql, compteRM);

        Compte utilisateur = listCompte.get(0);

        if (utilisateur == null) { utilisateur = new Compte();}

        return utilisateur;
    }

    @Override
    public Compte read(String code) {

        return null;
    }

    @Override
    public List<Compte> readAll() {

        return null;
    }

    @Override
    public List<Compte> readAll(int id) {

        return null;
    }

    @Override
    public Boolean create(Compte compte) {

        String sql = "INSERT INTO compte " +
                "(nom,prenom,email,mot_de_passe)" +
                "VALUES" +
                "(:nom,:prenom,:email,:mot_de_passe)";

        MapSqlParameterSource mapSqlParameterSource = getMapSqlParameterSource(compte);

        NamedParameterJdbcTemplate jdbcTemplate = new NamedParameterJdbcTemplate(getDataSource());

        Integer nbCreate = jdbcTemplate.update(sql,mapSqlParameterSource);

        return nbCreate > 0;
    }

    @Override
    public Boolean update(Compte compte) {

        String sql = "UPDATE compte SET nom=:nom,prenom=:prenom,pseudo=:pseudo," +
                "email=:email,mot_de_passe=:mot_de_passe,num_telephone=:num_telephone " +
                "WHERE compte_id=" + compte.getId();

        MapSqlParameterSource mapSqlParameterSource = getMapSqlParameterSource(compte);

        mapSqlParameterSource.addValue("pseudo", compte.getPseudo(),Types.VARCHAR);
        mapSqlParameterSource.addValue("num_telephone", compte.getNumTelephone(), Types.VARCHAR);

        NamedParameterJdbcTemplate jdbcTemplate = new NamedParameterJdbcTemplate(getDataSource());

        Integer nbUpdate = jdbcTemplate.update(sql,mapSqlParameterSource);

        return nbUpdate > 0;
    }

    @Override
    public Boolean delete(Compte compte) {

        String sql = "DELETE FROM compte WHERE compte_id=" + compte.getId();

        MapSqlParameterSource mapSqlParameterSource = new MapSqlParameterSource();

        mapSqlParameterSource.addValue("compte_id",compte.getId(),Types.INTEGER);

        NamedParameterJdbcTemplate jdbcTemplate = new NamedParameterJdbcTemplate(getDataSource());

        Integer nbDelete = jdbcTemplate.update(sql,mapSqlParameterSource);

        return nbDelete > 0;
    }

    private MapSqlParameterSource getMapSqlParameterSource(Compte compte) {

        MapSqlParameterSource mapSqlParameterSource = new MapSqlParameterSource();

        mapSqlParameterSource.addValue("compte_id",compte.getId(),Types.INTEGER);
        mapSqlParameterSource.addValue("nom", compte.getNom(), Types.VARCHAR);
        mapSqlParameterSource.addValue("prenom", compte.getPrenom(), Types.VARCHAR);
        mapSqlParameterSource.addValue("email", compte.getEmail(), Types.VARCHAR);
        mapSqlParameterSource.addValue("mot_de_passe", compte.getMotDePasse(), Types.VARCHAR);

        return mapSqlParameterSource;

    }

}
