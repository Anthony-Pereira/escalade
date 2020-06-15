package com.sitestudio.escalade.consumer.impl.rowmapper;

import com.sitestudio.escalade.model.bean.site.UrlPhoto;
import org.springframework.jdbc.core.RowMapper;

import javax.inject.Named;
import java.sql.ResultSet;
import java.sql.SQLException;

@Named
public class UrlPhotoRM implements RowMapper<UrlPhoto> {

    @Override
    public UrlPhoto mapRow(ResultSet rs, int rowNum) throws SQLException {
        return null;
    }
}
