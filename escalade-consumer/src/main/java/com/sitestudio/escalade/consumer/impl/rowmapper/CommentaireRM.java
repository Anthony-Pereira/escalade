package com.sitestudio.escalade.consumer.impl.rowmapper;

import com.sitestudio.escalade.consumer.impl.dao.CompteDaoImpl;
import com.sitestudio.escalade.consumer.impl.dao.SiteDaoImpl;
import com.sitestudio.escalade.model.bean.site.Commentaire;
import com.sitestudio.escalade.model.exception.NotFoundException;
import org.springframework.jdbc.core.RowMapper;

import javax.inject.Inject;
import javax.inject.Named;
import java.sql.ResultSet;
import java.sql.SQLException;

@Named
public class CommentaireRM implements RowMapper<Commentaire> {

    @Inject
    CompteDaoImpl compteDao;

    @Inject
    SiteDaoImpl siteDao;

    @Override
    public Commentaire mapRow(ResultSet rs, int rowNum) throws SQLException {

        Commentaire commentaire = new Commentaire(rs.getInt("commentaire_id"));

        commentaire.setCommentaire(rs.getString("commentaire"));
        commentaire.setDate(rs.getTimestamp("date").toLocalDateTime());

        try {
            commentaire.setCompte(compteDao.read(rs.getInt("compte_id")));
        } catch (NotFoundException e) {
            e.printStackTrace();
        }

        try {
            commentaire.setSite(siteDao.read(rs.getInt("site_id")));
        } catch (NotFoundException e) {
            e.printStackTrace();
        }

        return commentaire;
    }
}
