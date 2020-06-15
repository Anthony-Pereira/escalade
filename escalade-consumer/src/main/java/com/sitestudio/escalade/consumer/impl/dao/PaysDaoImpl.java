package com.sitestudio.escalade.consumer.impl.dao;

import com.sitestudio.escalade.consumer.contract.dao.PaysDao;
import com.sitestudio.escalade.consumer.impl.rowmapper.PaysRM;
import com.sitestudio.escalade.model.bean.referentiel.Pays;
import com.sitestudio.escalade.model.bean.referentiel.Region;
import com.sitestudio.escalade.model.exception.NotFoundException;
import org.springframework.jdbc.core.JdbcTemplate;

import javax.inject.Inject;
import javax.inject.Named;
import java.util.List;

@Named
public class PaysDaoImpl extends AbstractDao implements PaysDao {

    @Inject
    PaysRM paysRM;

    @Override
    public Pays read(Region region) throws NotFoundException {

        String sql = "SELECT * FROM pays WHERE pays_code ='" + region.getPays().getCode() + "'";

        JdbcTemplate jdbcTemplate = new JdbcTemplate(getDataSource());

        List<Pays> listPays = jdbcTemplate.query(sql,paysRM);

        Pays pays;

        if (listPays.size() == 0) {
            throw new NotFoundException("Le pays n'existe pas");
        } else {
            pays = listPays.get(0);
        }

        return pays;
    }

    @Override
    public Boolean create(Pays pays) {
        return null;
    }

    @Override
    public Boolean update(Pays pays) {
        return null;
    }

    @Override
    public Boolean delete(Pays pays) {
        return null;
    }
}
