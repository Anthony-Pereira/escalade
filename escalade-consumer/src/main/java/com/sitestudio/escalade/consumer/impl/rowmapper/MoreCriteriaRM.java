package com.sitestudio.escalade.consumer.impl.rowmapper;

import com.sitestudio.escalade.consumer.impl.dao.AdresseDaoImpl;
import com.sitestudio.escalade.consumer.impl.dao.DepartementDaoImpl;
import com.sitestudio.escalade.consumer.impl.dao.SecteurDaoImpl;
import com.sitestudio.escalade.consumer.impl.dao.SiteDaoImpl;
import com.sitestudio.escalade.model.bean.compte.Adresse;
import com.sitestudio.escalade.model.bean.site.Site;
import com.sitestudio.escalade.model.bean.site.Voie;
import com.sitestudio.escalade.model.exception.NotFoundException;
import org.springframework.jdbc.core.RowMapper;

import javax.inject.Inject;
import javax.inject.Named;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@Named
public class MoreCriteriaRM implements RowMapper {

    @Inject
    DepartementDaoImpl departementDao;

    @Inject
    SiteDaoImpl siteDao;

    @Inject
    SecteurDaoImpl secteurDao;

    @Override
    public Object mapRow(ResultSet rs, int rowNum) throws SQLException {

        Adresse adresse = new Adresse();
        Voie voie = new Voie();

        List<Object> listObjectMoreCriteria = new ArrayList<>();

        adresse.setId(rs.getInt("adresse_id"));
        adresse.setNumero(rs.getString("numero"));
        adresse.setRue(rs.getString("rue"));
        adresse.setCodePostal(rs.getString("code_postal"));
        adresse.setVille(rs.getString("ville"));

        try {
            adresse.setDepartement(departementDao.read(rs.getInt("departement_id")));
        } catch (NotFoundException e) {
            e.printStackTrace();
        }

        voie.setId(rs.getInt("voie_id"));
        voie.setNumero(rs.getInt("numero"));
        voie.setNom(rs.getString("nom"));
        voie.setDescription(rs.getString("description"));

        try {
            voie.setSite(siteDao.read(rs.getInt("site_id")));
        } catch (NotFoundException e) {
            e.printStackTrace();
        }

        try {
            voie.setSecteur(secteurDao.read(rs.getInt("secteur_id")));
        } catch (NotFoundException e) {
            e.printStackTrace();
        }

        voie.setLongueur(rs.getInt("longueur"));
        voie.setDifficulte(rs.getString("difficulte"));

        listObjectMoreCriteria.add(adresse);
        listObjectMoreCriteria.add(voie);

        return listObjectMoreCriteria;


    }
}
