package com.sitestudio.escalade.consumer.impl.dao;

import com.sitestudio.escalade.consumer.contract.dao.TopoDao;
import com.sitestudio.escalade.consumer.impl.rowmapper.TopoRM;
import com.sitestudio.escalade.model.bean.compte.Compte;
import com.sitestudio.escalade.model.bean.topo.Topo;
import com.sitestudio.escalade.model.exception.NotFoundException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;

import javax.inject.Inject;
import javax.inject.Named;
import java.sql.Types;
import java.util.List;

@Named
public class TopoDaoImpl extends AbstractDao implements TopoDao {

    @Inject
    TopoRM topoRM;

    @Override
    public Topo read(Integer id) throws NotFoundException {

        String sql = "SELECT * FROM topo WHERE topo_id =" + id ;

        JdbcTemplate jdbcTemplate = new JdbcTemplate(getDataSource());

        Topo topo;

        List<Topo> listTopo = jdbcTemplate.query(sql,topoRM);

        if (listTopo.size() == 0){
            throw new NotFoundException("Aucun topo trouvé");
        } else {
            topo = listTopo.get(0);
        }

        return topo;
    }

    @Override
    public List<Topo> readAll() throws NotFoundException {

        String sql = "SELECT * FROM topo";

        JdbcTemplate jdbcTemplate = new JdbcTemplate(getDataSource());

        List<Topo> listTopo = jdbcTemplate.query(sql,topoRM);

        if (listTopo.size() == 0){
            throw new NotFoundException("Aucun topo trouvé");
        } else {
            return listTopo;
        }
    }

    @Override
    public List<Topo> readAll(Compte compte) throws NotFoundException {

        String sql = "SELECT * FROM topo WHERE compte_id =" + compte.getId();

        JdbcTemplate jdbcTemplate = new JdbcTemplate(getDataSource());

        List<Topo> listTopo = jdbcTemplate.query(sql,topoRM);

        if (listTopo.size() == 0){
            throw new NotFoundException("Aucun topo trouvé");
        } else {
            return listTopo;
        }
    }

    @Override
    public Boolean create(Topo topo) {

        String sql = "INSERT INTO topo " +
                "(nom,description,lieu,parution,reservation,compte_id,emprunteur_id)" +
                "VALUES" +
                "(:nom,:description,:lieu,:parution,:reservation,:compte_id,:emprunteur_id)";

        MapSqlParameterSource mapSqlParameterSource = new MapSqlParameterSource();

        mapSqlParameterSource.addValue("topo_id",topo.getId(), Types.INTEGER);
        mapSqlParameterSource.addValue("nom",topo.getNom(), Types.VARCHAR);
        mapSqlParameterSource.addValue("description",topo.getDescription(), Types.VARCHAR);
        mapSqlParameterSource.addValue("lieu",topo.getLieu(), Types.VARCHAR);
        mapSqlParameterSource.addValue("parution",topo.getParution(), Types.INTEGER);
        mapSqlParameterSource.addValue("reservation",topo.getReservation(), Types.INTEGER);
        mapSqlParameterSource.addValue("compte_id",topo.getCompte().getId(),Types.INTEGER);
        mapSqlParameterSource.addValue("emprunteur_id",topo.getEmprunteur(), Types.INTEGER);

        NamedParameterJdbcTemplate jdbcTemplate = new NamedParameterJdbcTemplate(getDataSource());

        Integer nbCreate = jdbcTemplate.update(sql,mapSqlParameterSource);

        return nbCreate > 0;
    }

    @Override
    public Boolean update(Topo topo) {

        String sql = "UPDATE topo SET nom=:nom,description=:description,lieu=:lieu,parution=:parution,reservation=:reservation,emprunteur_id=:emprunteur_id WHERE topo_id =" + topo.getId();

        MapSqlParameterSource mapSqlParameterSource = new MapSqlParameterSource();

        mapSqlParameterSource.addValue("topo_id",topo.getId(),Types.INTEGER);
        mapSqlParameterSource.addValue("compte_id",topo.getCompte().getId());
        mapSqlParameterSource.addValue("nom", topo.getNom(),Types.VARCHAR);
        mapSqlParameterSource.addValue("description", topo.getDescription(), Types.VARCHAR);
        mapSqlParameterSource.addValue("lieu", topo.getLieu(), Types.VARCHAR);
        mapSqlParameterSource.addValue("parution", topo.getParution(), Types.INTEGER);
        mapSqlParameterSource.addValue("reservation",topo.getReservation(),Types.INTEGER);
        mapSqlParameterSource.addValue("emprunteur_id",topo.getEmprunteur().getId(),Types.INTEGER);

        NamedParameterJdbcTemplate jdbcTemplate = new NamedParameterJdbcTemplate(getDataSource());

        Integer nbUpdate = jdbcTemplate.update(sql,mapSqlParameterSource);

        return nbUpdate > 0;

    }

    @Override
    public Boolean delete(Topo topo) {

        String sql = "DELETE FROM topo WHERE topo_id =" + topo.getId();

        MapSqlParameterSource mapSqlParameterSource = new MapSqlParameterSource();

        mapSqlParameterSource.addValue("topo_id",mapSqlParameterSource);

        NamedParameterJdbcTemplate jdbcTemplate = new NamedParameterJdbcTemplate(getDataSource());

        Integer nbDelete = jdbcTemplate.update(sql,mapSqlParameterSource);

        return nbDelete > 0;

    }
}
