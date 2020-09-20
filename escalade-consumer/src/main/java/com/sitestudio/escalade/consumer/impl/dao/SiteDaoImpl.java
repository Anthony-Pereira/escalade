package com.sitestudio.escalade.consumer.impl.dao;

import com.sitestudio.escalade.consumer.contract.dao.SiteDao;
import com.sitestudio.escalade.consumer.impl.rowmapper.SiteRM;
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
public class SiteDaoImpl extends AbstractDao implements SiteDao {

    @Inject
    SiteRM siteRM;

    @Override
    public Site read(Integer id) throws NotFoundException {

        String sql = "SELECT * FROM site WHERE site_id =" + id;

        JdbcTemplate jdbcTemplate = new JdbcTemplate(getDataSource());

        Site site;

        List<Site> listSite = jdbcTemplate.query(sql,siteRM);

        if (listSite.size() == 0) {
            throw new NotFoundException("Le site n'existe pas");
        } else {
            site = listSite.get(0);
        }

        return site;
    }

    @Override
    public List<Site> readAll() throws NotFoundException {

        String sql = "SELECT * FROM site";

        JdbcTemplate jdbcTemplate = new JdbcTemplate(getDataSource());

        List<Site> listSite = jdbcTemplate.query(sql,siteRM);

        if (listSite.size() == 0){
            throw new NotFoundException("Aucun site de trouvé");
        } else {
            return listSite;
        }
    }

    @Override
    public List<Site> readAll(int id) {
        return null;
    }

    @Override
    public Boolean create(Site site) {

        String sql = "INSERT INTO site " +
                "(nom,description,adresse_id) " +
                "VALUES (:nom,:description,:adresse_id)";

        MapSqlParameterSource mapSqlParameterSource = new MapSqlParameterSource();

        mapSqlParameterSource.addValue("site_id",site.getId(), Types.INTEGER);
        mapSqlParameterSource.addValue("nom",site.getNom(), Types.VARCHAR);
        mapSqlParameterSource.addValue("description",site.getDescription(), Types.VARCHAR);
        mapSqlParameterSource.addValue("officielLesAmisDeLescalade",site.getOfficielLesAmisDeLescalade(),Types.BOOLEAN);
        mapSqlParameterSource.addValue("adresse_id",site.getAdresse().getId(), Types.INTEGER);

        NamedParameterJdbcTemplate jdbcTemplate = new NamedParameterJdbcTemplate(getDataSource());

        Integer nbUpdate = jdbcTemplate.update(sql,mapSqlParameterSource);

        return nbUpdate > 0;
    }

    @Override
    public Boolean update(Site site) {

        String sql = "UPDATE site SET nom=:nom,description=:description WHERE site_id =" + site.getId();

        MapSqlParameterSource mapSqlParameterSource = new MapSqlParameterSource();

        mapSqlParameterSource.addValue("nom", site.getNom(),Types.VARCHAR);
        mapSqlParameterSource.addValue("description", site.getDescription(), Types.VARCHAR);

        mapSqlParameterSource.addValue("adresse_id",site.getAdresse().getId(),Types.INTEGER);

        NamedParameterJdbcTemplate jdbcTemplate = new NamedParameterJdbcTemplate(getDataSource());

        Integer nbUpdate = jdbcTemplate.update(sql,mapSqlParameterSource);

        return nbUpdate > 0;
    }

    @Override
    public Boolean delete(Site site) {

        String sql = "DELETE FROM site WHERE site_id =" + site.getId();

        MapSqlParameterSource mapSqlParameterSource = new MapSqlParameterSource();

        mapSqlParameterSource.addValue("site_id",mapSqlParameterSource);

        NamedParameterJdbcTemplate jdbcTemplate = new NamedParameterJdbcTemplate(getDataSource());

        Integer nbDelete = jdbcTemplate.update(sql,mapSqlParameterSource);

        return nbDelete > 0;
    }

}
