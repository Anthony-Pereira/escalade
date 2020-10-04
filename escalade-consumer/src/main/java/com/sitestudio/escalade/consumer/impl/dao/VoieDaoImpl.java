package com.sitestudio.escalade.consumer.impl.dao;

import com.sitestudio.escalade.consumer.contract.dao.VoieDao;
import com.sitestudio.escalade.consumer.impl.rowmapper.VoieRM;
import com.sitestudio.escalade.model.bean.site.Secteur;
import com.sitestudio.escalade.model.bean.site.Voie;
import com.sitestudio.escalade.model.exception.NotFoundException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;

import javax.inject.Inject;
import javax.inject.Named;
import java.sql.Types;
import java.util.List;

@Named
public class VoieDaoImpl extends AbstractDao implements VoieDao {

    @Inject
    VoieRM voieRM;

    @Override
    public Voie read(Integer id) throws NotFoundException {

        String sql = "SELECT * FROM voie WHERE voie_id = " + id;

        JdbcTemplate jdbcTemplate = new JdbcTemplate(getDataSource());

        Voie voie;

        List<Voie> listVoie = jdbcTemplate.query(sql,voieRM);

        if (listVoie.size() == 0){
            throw new NotFoundException("La voie n'existe pas");
        } else {
            voie = listVoie.get(0);
        }

        return voie;
    }

    @Override
    public List<Voie> readAll() throws NotFoundException {

        String sql = "SELECT * FROM voie";

        JdbcTemplate jdbcTemplate = new JdbcTemplate(getDataSource());

        List<Voie> listVoie = jdbcTemplate.query(sql,voieRM);

        if (listVoie.size() == 0){
            throw new NotFoundException("Aucune voie trouvé");
        } else {
            return listVoie;
        }
    }

    @Override
    public List<Voie> readAll(Secteur secteur) throws NotFoundException {

        String sql = "SELECT * FROM voie WHERE secteur_id=" + secteur.getId();

        JdbcTemplate jdbcTemplate = new JdbcTemplate(getDataSource());

        List<Voie> listVoie = jdbcTemplate.query(sql,voieRM);

        if (listVoie.size() == 0){
            throw new NotFoundException("Aucune voie trouvé");
        } else {
            return listVoie;
        }

    }

    @Override
    public List<Voie> readAll(int id) {
        return null;
    }

    @Override
    public Boolean create(Voie voie) {

        String sql = "INSERT INTO voie " +
                "(numero,nom,description,longueur,difficulte,secteur_id,site_id) " +
                "VALUES (:numero,:nom,:description,:longueur,:difficulte,:secteur_id,:site_id)";

        MapSqlParameterSource mapSqlParameterSource = new MapSqlParameterSource();

        mapSqlParameterSource.addValue("voie_id",voie.getId(), Types.INTEGER);
        mapSqlParameterSource.addValue("numero",voie.getNumero(), Types.INTEGER);
        mapSqlParameterSource.addValue("nom",voie.getNom(), Types.VARCHAR);
        mapSqlParameterSource.addValue("description",voie.getDescription(), Types.VARCHAR);
        mapSqlParameterSource.addValue("longueur",voie.getLongueur(), Types.VARCHAR);
        mapSqlParameterSource.addValue("difficulte",voie.difficulte, Types.VARCHAR);
        mapSqlParameterSource.addValue("secteur_id",voie.getSecteur().getId(), Types.INTEGER);
        mapSqlParameterSource.addValue("site_id",voie.getSite().getId(), Types.INTEGER);


        NamedParameterJdbcTemplate jdbcTemplate = new NamedParameterJdbcTemplate(getDataSource());

        Integer nbCreate = jdbcTemplate.update(sql,mapSqlParameterSource);

        return nbCreate > 0;
    }

    @Override
    public Boolean update(Voie voie) {

        String sql = "UPDATE voie SET numero=:numero,nom=:nom,description=:description,longueur=:longueur,difficulte=:difficulte WHERE voie_id =" + voie.getId();

        MapSqlParameterSource mapSqlParameterSource = getMapSqlParameterSource(voie);

        NamedParameterJdbcTemplate jdbcTemplate = new NamedParameterJdbcTemplate(getDataSource());

        Integer nbUpdate = jdbcTemplate.update(sql,mapSqlParameterSource);

        return nbUpdate > 0;
    }

    @Override
    public Boolean delete(Voie voie) {

        String sql = "DELETE FROM voie WHERE voie_id =" + voie.getId();

        MapSqlParameterSource mapSqlParameterSource = new MapSqlParameterSource();

        mapSqlParameterSource.addValue("voie_id",voie.getId(),Types.INTEGER);

        NamedParameterJdbcTemplate jdbcTemplate = new NamedParameterJdbcTemplate(getDataSource());

        Integer nbDelete = jdbcTemplate.update(sql,mapSqlParameterSource);

        return nbDelete > 0;
    }

    private MapSqlParameterSource getMapSqlParameterSource(Voie voie) {

        MapSqlParameterSource mapSqlParameterSource = new MapSqlParameterSource();

        mapSqlParameterSource.addValue("numero",voie.getNumero(), Types.INTEGER);
        mapSqlParameterSource.addValue("nom",voie.getNom(), Types.VARCHAR);
        mapSqlParameterSource.addValue("description",voie.getDescription(), Types.VARCHAR);
        mapSqlParameterSource.addValue("longueur",voie.getLongueur(), Types.VARCHAR);
        mapSqlParameterSource.addValue("difficulte",voie.difficulte, Types.VARCHAR);

        return mapSqlParameterSource;
    }

}
