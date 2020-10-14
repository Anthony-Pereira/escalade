package com.sitestudio.escalade.consumer.impl.rowmapper;

import com.sitestudio.escalade.consumer.impl.dao.AdresseDaoImpl;
import com.sitestudio.escalade.consumer.impl.dao.RoleDaoImpl;
import com.sitestudio.escalade.model.bean.compte.Compte;
import com.sitestudio.escalade.model.bean.referentiel.EnumRole;
import com.sitestudio.escalade.model.exception.NotFoundException;
import org.springframework.jdbc.core.RowMapper;

import javax.inject.Inject;
import javax.inject.Named;
import java.sql.ResultSet;
import java.sql.SQLException;

@Named
public class CompteRM implements RowMapper<Compte> {

    @Inject
    AdresseDaoImpl adresseDao;

    @Inject
    RoleDaoImpl roleDao;

    @Override
    public Compte mapRow(ResultSet rs, int rowNum) throws SQLException {

        Compte compte = new Compte(rs.getInt("compte_id"));

        compte.setNom(rs.getString("nom"));
        compte.setPrenom(rs.getString("prenom"));
        compte.setPseudo(rs.getString("pseudo"));
        compte.setEmail(rs.getString("email"));
        compte.setMotDePasse(rs.getString("mot_de_passe"));
        compte.setNumTelephone(rs.getString("num_telephone"));

        try {
            compte.setAdresse(adresseDao.read(rs.getInt("adresse_id")));
        } catch (NotFoundException e) {
            e.printStackTrace();
        }

        /* --- TROUVE LA SOLUTION CONCERNANT LA RECUPERATION DE VALEUR DANS UN OBJET ENUM ---

        Regler aussi ce httpSession qui stocke la variable longtemps preféré un request.setAttribute

            try {
                compte.setRole(roleDao.read(rs.getInt("role_role_id")));
            } catch (NotFoundException e) {
                e.printStackTrace();
            }
         */

        return compte;
    }
}
