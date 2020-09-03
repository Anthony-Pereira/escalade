package com.sitestudio.escalade.consumer.impl.dao;

import com.sitestudio.escalade.consumer.contract.dao.CommentaireDao;
import com.sitestudio.escalade.consumer.impl.rowmapper.CommentaireRM;
import com.sitestudio.escalade.model.bean.site.Commentaire;
import com.sitestudio.escalade.model.bean.site.Site;
import com.sitestudio.escalade.model.exception.NotFoundException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;

import javax.inject.Inject;
import javax.inject.Named;
import java.sql.Types;
import java.util.List;

@Named
public class CommentaireDaoImpl extends AbstractDao implements CommentaireDao {

    @Inject
    CommentaireRM commentaireRM;

    @Override
    public Commentaire read(Integer id) throws NotFoundException {

        String sql = "SELECT * FROM commentaire WHERE commentaire_id ='" + id + "'";

        JdbcTemplate jdbcTemplate = new JdbcTemplate(getDataSource());

        List<Commentaire> listCommentaire = jdbcTemplate.query(sql,commentaireRM);

        Commentaire commentaire;

        if (listCommentaire.size() == 0){
            throw new NotFoundException("Le commentaire n'existe pas");
        } else {
            commentaire = listCommentaire.get(0);
        }

        return commentaire;
    }

    @Override
    public List<Commentaire> readAll(Site site) throws NotFoundException {

        String sql = "SELECT * FROM commentaire WHERE site_id = '" + site.getId() + "'";

        JdbcTemplate jdbcTemplate = new JdbcTemplate(getDataSource());

        List<Commentaire> listCommentaire = jdbcTemplate.query(sql,commentaireRM);

        if (listCommentaire.size() == 0) {
            throw new NotFoundException ("Aucun commentaire trouvé");
        } else {
            return listCommentaire;
        }

    }

    @Override
    public List<Commentaire> readAll(int id) {
        return null;
    }

    @Override
    public Boolean create(Commentaire commentaire) {

        String sql = "INSERT INTO commentaire" +
                "(commentaire,date,compte_id,site_id)" +
                "VALUES" +
                "(:commentaire,:date,:compte_id,:site_id)";

        NamedParameterJdbcTemplate jdbcTemplate = new NamedParameterJdbcTemplate(getDataSource());

        MapSqlParameterSource mapSqlParameterSource = getMapSqlParameterSource(commentaire);

        Integer nbCreate = jdbcTemplate.update(sql,mapSqlParameterSource);

        return nbCreate > 0;
    }

    @Override
    public Boolean update(Commentaire commentaire) {

        String sql = "UPDATE commentaire SET commentaire=:commentaire,date=:date WHERE commentaire_id ='" + commentaire.getId() + "'";

        NamedParameterJdbcTemplate jdbcTemplate = new NamedParameterJdbcTemplate(getDataSource());

        MapSqlParameterSource mapSqlParameterSource = getMapSqlParameterSource(commentaire);

        Integer nbUpdate = jdbcTemplate.update(sql,mapSqlParameterSource);

        return nbUpdate > 0;
    }

    @Override
    public Boolean delete(Commentaire commentaire) {

        String sql = "DELETE FROM commentaire WHERE commentaire_id ='" + commentaire.getId() + "'";

        NamedParameterJdbcTemplate jdbcTemplate = new NamedParameterJdbcTemplate(getDataSource());

        MapSqlParameterSource mapSqlParameterSource = getMapSqlParameterSource(commentaire);

        Integer nbDelete = jdbcTemplate.update(sql,mapSqlParameterSource);

        return nbDelete > 0;
    }

    private MapSqlParameterSource getMapSqlParameterSource(Commentaire commentaire) {
        MapSqlParameterSource mapSqlParameterSource = new MapSqlParameterSource();

        mapSqlParameterSource.addValue("commentaire_id",commentaire.getId(),Types.INTEGER);
        mapSqlParameterSource.addValue("commentaire", commentaire.getCommentaire(), Types.VARCHAR);
        mapSqlParameterSource.addValue("date", commentaire.getDate(), Types.TIMESTAMP);
        mapSqlParameterSource.addValue("compte_id", commentaire.getCompte(),Types.INTEGER);
        mapSqlParameterSource.addValue("site_id",commentaire.getSite(),Types.INTEGER);

        return mapSqlParameterSource;
    }

}
