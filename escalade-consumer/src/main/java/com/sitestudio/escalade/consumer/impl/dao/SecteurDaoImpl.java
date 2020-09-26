package com.sitestudio.escalade.consumer.impl.dao;

import com.sitestudio.escalade.consumer.contract.dao.SecteurDao;
import com.sitestudio.escalade.consumer.impl.rowmapper.SecteurRM;
import com.sitestudio.escalade.model.bean.site.Secteur;
import com.sitestudio.escalade.model.bean.site.Site;
import com.sitestudio.escalade.model.exception.NotFoundException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;

import javax.inject.Inject;
import javax.inject.Named;
import java.sql.Types;
import java.util.List;

@Named
public class SecteurDaoImpl extends AbstractDao implements SecteurDao {

    @Inject
    SecteurRM secteurRM;

    @Override
    public Secteur read(Integer id) throws NotFoundException {

        String sql = "SELECT * FROM secteur WHERE secteur_id =" + id;

        JdbcTemplate jdbcTemplate = new JdbcTemplate(getDataSource());

        Secteur secteur;

        List<Secteur> listSecteur = jdbcTemplate.query(sql,secteurRM);

        if (listSecteur.size() == 0) {
            throw new NotFoundException("Le site n'existe pas");
        } else {
            secteur = listSecteur.get(0);
        }

        return secteur;
    }

    @Override
    public List<Secteur> readAll() throws NotFoundException {

        String sql = "SELECT * FROM secteur";

        JdbcTemplate jdbcTemplate = new JdbcTemplate(getDataSource());

        List<Secteur> listSecteur = jdbcTemplate.query(sql,secteurRM);

        if (listSecteur.size() == 0){
            throw new NotFoundException("Aucun secteur de trouvé");
        } else {
            return listSecteur;
        }
    }

    @Override
    public List<Secteur> readAll(Site site) throws NotFoundException {

        String sql = "SELECT * FROM secteur WHERE site_site_id =" + site.getId();

        JdbcTemplate jdbcTemplate = new JdbcTemplate(getDataSource());

        List<Secteur> listSecteur = jdbcTemplate.query(sql,secteurRM);

        if (listSecteur.size() == 0){
            throw new NotFoundException("Aucun secteur de trouvé");
        } else {
            return listSecteur;
        }
    }

    @Override
    public Boolean create(Secteur secteur) {

        String sql = "INSERT INTO secteur " +
                "(nom,description,site_site_id) " +
                "VALUES (:nom,:description,:site_site_id)";

        MapSqlParameterSource mapSqlParameterSource = new MapSqlParameterSource();

        mapSqlParameterSource.addValue("secteur_id",secteur.getId(), Types.INTEGER);
        mapSqlParameterSource.addValue("nom",secteur.getNom(), Types.VARCHAR);
        mapSqlParameterSource.addValue("description",secteur.getDescription(), Types.VARCHAR);
        mapSqlParameterSource.addValue("site_site_id",secteur.getSite().getId(), Types.INTEGER);

        NamedParameterJdbcTemplate jdbcTemplate = new NamedParameterJdbcTemplate(getDataSource());

        Integer nbUpdate = jdbcTemplate.update(sql,mapSqlParameterSource);

        return nbUpdate > 0;
    }

    @Override
    public Boolean update(Secteur secteur) {

        String sql = "UPDATE secteur SET nom=:nom,description=:description WHERE secteur_id =" + secteur.getId();

        MapSqlParameterSource mapSqlParameterSource = new MapSqlParameterSource();

        mapSqlParameterSource.addValue("nom", secteur.getNom(),Types.VARCHAR);
        mapSqlParameterSource.addValue("description", secteur.getDescription(), Types.VARCHAR);

        NamedParameterJdbcTemplate jdbcTemplate = new NamedParameterJdbcTemplate(getDataSource());

        Integer nbUpdate = jdbcTemplate.update(sql,mapSqlParameterSource);

        return nbUpdate > 0;
    }

    @Override
    public Boolean delete(Secteur secteur) {

        String sql = "DELETE FROM secteur WHERE secteur_id =" + secteur.getId();

        MapSqlParameterSource mapSqlParameterSource = new MapSqlParameterSource();

        mapSqlParameterSource.addValue("secteur_id",mapSqlParameterSource);

        NamedParameterJdbcTemplate jdbcTemplate = new NamedParameterJdbcTemplate(getDataSource());

        Integer nbDelete = jdbcTemplate.update(sql,mapSqlParameterSource);

        return  nbDelete > 0;
    }
}
