package com.sitestudio.escalade.consumer.impl.dao;

import javax.inject.Inject;
import javax.inject.Named;
import javax.sql.DataSource;

public abstract class AbstractDao {

    @Inject
    @Named("dataSource")
    private DataSource dataSource;

    @Inject
    public DataSource getDataSource() {
        return dataSource;
    }
}
