package com.sitestudio.escalade.consumer.impl.rowmapper;

import com.sitestudio.escalade.consumer.impl.dao.AdresseDaoImpl;
import com.sitestudio.escalade.model.bean.site.Site;
import com.sitestudio.escalade.model.exception.NotFoundException;
import org.springframework.jdbc.core.RowMapper;

import javax.inject.Inject;
import javax.inject.Named;
import java.sql.ResultSet;
import java.sql.SQLException;

@Named
public class SiteRM implements RowMapper<Site> {

    @Inject
    AdresseDaoImpl adresseDao;

    @Override
    public Site mapRow(ResultSet rs, int rowNum) throws SQLException {

        Site site = new Site(rs.getInt("site_id"));

        site.setNom(rs.getString("nom"));
        site.setDescription(rs.getString("description"));
        site.setOfficielLesAmisDeLescalade(rs.getBoolean("officielLesAmisDeLescalade"));

        try {
            Integer var = rs.getInt("adresse_id");
            site.setAdresse(adresseDao.read(var));
        } catch (NotFoundException e) {
            e.printStackTrace();
        }

        return site;
    }
}
