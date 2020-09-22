package com.sitestudio.escalade.consumer.impl.rowmapper;

import com.sitestudio.escalade.consumer.impl.dao.SecteurDaoImpl;
import com.sitestudio.escalade.model.bean.site.Voie;
import com.sitestudio.escalade.model.exception.NotFoundException;
import org.springframework.jdbc.core.RowMapper;

import javax.inject.Inject;
import javax.inject.Named;
import java.sql.ResultSet;
import java.sql.SQLException;

@Named
public class VoieRM implements RowMapper<Voie> {

    @Inject
    SecteurDaoImpl secteurDao;

    @Override
    public Voie mapRow(ResultSet rs, int rowNum) throws SQLException {

        Voie voie = new Voie(rs.getInt("voie_id"));

        voie.setNumero(rs.getInt("numero"));
        voie.setNom(rs.getString("nom"));
        voie.setDescription(rs.getString("description"));
        voie.setLongueur(rs.getInt("longueur"));
        voie.setDifficulte(rs.getString("difficulte"));

        try {
            voie.setSecteur(secteurDao.read(rs.getInt("secteur_id")));
        } catch (NotFoundException e) {
            System.out.println("ERREUR : " + e);
        }

        return voie;
    }
}
