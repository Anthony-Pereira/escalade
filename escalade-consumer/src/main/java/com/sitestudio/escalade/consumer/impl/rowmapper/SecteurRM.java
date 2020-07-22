package com.sitestudio.escalade.consumer.impl.rowmapper;

import com.sitestudio.escalade.consumer.impl.dao.SiteDaoImpl;
import com.sitestudio.escalade.model.bean.site.Secteur;
import com.sitestudio.escalade.model.exception.NotFoundException;
import org.springframework.jdbc.core.RowMapper;

import javax.inject.Inject;
import javax.inject.Named;
import java.sql.ResultSet;
import java.sql.SQLException;

@Named
public class SecteurRM implements RowMapper<Secteur> {

    @Inject
    SiteDaoImpl siteDao;

    @Override
    public Secteur mapRow(ResultSet rs, int rowNum) throws SQLException {

        Secteur secteur = new Secteur(rs.getInt("secteur_id"));

        secteur.setNom(rs.getString("nom"));
        secteur.setDescription(rs.getString("description"));

        try {
            secteur.setSite(siteDao.read(rs.getInt("site_id")));
        } catch (NotFoundException e) {
            e.printStackTrace();
        }


        return secteur;
    }
}
