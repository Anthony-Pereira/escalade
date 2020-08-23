package com.sitestudio.escalade.consumer.impl.rowmapper;

import com.sitestudio.escalade.model.bean.site.Commentaire;
import org.springframework.jdbc.core.RowMapper;

import javax.inject.Named;
import java.sql.ResultSet;
import java.sql.SQLException;

@Named
public class CommentaireRM implements RowMapper<Commentaire> {

    @Override
    public Commentaire mapRow(ResultSet rs, int rowNum) throws SQLException {

        Commentaire commentaire = new Commentaire(rs.getInt("commentaire_id"));

        commentaire.setCommentaire(rs.getString("commentaire"));
        commentaire.setDate(rs.getTimestamp("date").toLocalDateTime());

        return commentaire;
    }
}
