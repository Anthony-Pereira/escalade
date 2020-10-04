package com.sitestudio.escalade.consumer.impl.rowmapper;

import com.sitestudio.escalade.model.bean.site.Site;
import org.springframework.jdbc.core.RowMapper;

import javax.inject.Named;
import java.sql.ResultSet;
import java.sql.SQLException;

@Named
public class MoreCriteriaRM implements RowMapper<Site> {

    @Override
    public Site mapRow(ResultSet rs, int rowNum) throws SQLException {

        Site site = new Site(rs.getInt("site_id"));

        site.setNom(rs.getString("nom"));
        site.setDescription(rs.getString("description"));

        return site;


    }
}
