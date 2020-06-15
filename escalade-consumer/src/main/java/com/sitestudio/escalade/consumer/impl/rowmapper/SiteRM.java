package com.sitestudio.escalade.consumer.impl.rowmapper;

import com.sitestudio.escalade.model.bean.site.Site;
import org.springframework.jdbc.core.RowMapper;

import javax.inject.Named;
import java.sql.ResultSet;
import java.sql.SQLException;

@Named
public class SiteRM implements RowMapper<Site> {

    @Override
    public Site mapRow(ResultSet rs, int rowNum) throws SQLException {
        return null;
    }
}
