package com.sitestudio.escalade.consumer.impl.dao;

import com.sitestudio.escalade.consumer.contract.dao.DepartementDao;
import com.sitestudio.escalade.consumer.impl.rowmapper.DepartementRM;
import com.sitestudio.escalade.model.bean.compte.Adresse;
import com.sitestudio.escalade.model.bean.referentiel.Departement;
import com.sitestudio.escalade.model.exception.NotFoundException;
import org.springframework.jdbc.core.JdbcTemplate;

import javax.inject.Inject;
import javax.inject.Named;
import java.util.List;

@Named
public class DepartementDaoImpl extends AbstractDao implements DepartementDao {

    @Inject
    DepartementRM departementRM;

    @Override
    public Departement read(Integer id) throws NotFoundException {

        String sql = "SELECT * FROM departement WHERE departement_id =" + id;

        JdbcTemplate jdbcTemplate = new JdbcTemplate(getDataSource());

        List<Departement> listDepartement = jdbcTemplate.query(sql,departementRM);

        Departement departement;

        if (listDepartement.size() == 0) {
            throw new NotFoundException("Le département n'existe pas");
        } else { departement = listDepartement.get(0);}

        return departement;
    }

    @Override
    public Boolean create(Departement departement) {
        return null;
    }

    @Override
    public Boolean update(Departement departement) {
        return null;
    }

    @Override
    public Boolean delete(Departement departement) {
        return null;
    }
}
