package com.sitestudio.escalade.consumer.impl.dao;

import com.sitestudio.escalade.consumer.contract.dao.CotationDao;
import com.sitestudio.escalade.consumer.impl.rowmapper.CotationRM;
import com.sitestudio.escalade.model.bean.referentiel.Cotation;
import com.sitestudio.escalade.model.bean.referentiel.Departement;
import com.sitestudio.escalade.model.bean.site.Secteur;
import com.sitestudio.escalade.model.exception.NotFoundException;
import org.springframework.jdbc.core.JdbcTemplate;

import javax.inject.Inject;
import javax.inject.Named;
import java.util.List;

@Named
public class CotationDaoImpl extends AbstractDao implements CotationDao {

    @Inject
    CotationRM cotationRM;

    @Override
    public Cotation read(Integer id) throws NotFoundException {

        String sql = "SELECT * FROM cotation WHERE id =" + id;

        JdbcTemplate jdbcTemplate = new JdbcTemplate(getDataSource());

        List<Cotation> listCotation = jdbcTemplate.query(sql,cotationRM);

        Cotation cotation;

        if (listCotation.size() == 0) {
            throw new NotFoundException("Le département n'existe pas");
        } else { cotation = listCotation.get(0);}

        return cotation;
    }

    @Override
    public List<Cotation> readAll() throws NotFoundException {

        String sql = "SELECT * FROM cotation";

        JdbcTemplate jdbcTemplate = new JdbcTemplate(getDataSource());

        List<Cotation> listCotation = jdbcTemplate.query(sql,cotationRM);

        if (listCotation.size() == 0){
            throw new NotFoundException("Aucune cotation de trouvé");
        } else {
            return listCotation;
        }
    }

    @Override
    public Boolean create(Cotation cotation) {
        return null;
    }

    @Override
    public Boolean update(Cotation cotation) {
        return null;
    }

    @Override
    public Boolean delete(Cotation cotation) {
        return null;
    }
}
