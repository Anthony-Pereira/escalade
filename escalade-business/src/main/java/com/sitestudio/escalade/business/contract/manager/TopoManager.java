package com.sitestudio.escalade.business.contract.manager;

import com.sitestudio.escalade.model.bean.compte.Compte;
import com.sitestudio.escalade.model.bean.topo.Topo;
import com.sitestudio.escalade.model.exception.NotFoundException;

import java.util.List;

public interface TopoManager {

    /**
     * Retourne le topo.
     * @param id L'identifiant d'un topo ciblé.
     * @return Un objet topo.
     * @throws NotFoundException
     */
    Topo getTopo(Integer id) throws NotFoundException;

    /**
     * Retourne le topo.
     * @return Un objet topo.
     * @throws NotFoundException
     */
    List<Topo> getTopo() throws NotFoundException;

    /**
     * Retourne le topo.
     * @param compte L'identifiant d'un topo ciblé.
     * @return Un objet topo.
     * @throws NotFoundException
     */
    List<Topo> getTopo(Compte compte) throws NotFoundException;

    /**
     * Créer un topo.
     * @param topo L'identifiant d'un topo ciblé.
     * @return boolean
     * @throws NotFoundException
     */
    Boolean createTopo(Topo topo) throws NotFoundException;

    /**
     * Modifie un topo.
     * @param topo L'identifiant d'un topo ciblé.
     * @return boolean
     * @throws NotFoundException
     */
    Boolean updateTopo(Topo topo) throws NotFoundException;

    /**
     * Supprime un topo
     * @param topo L'identifiant d'un topo ciblé.
     * @return boolean
     * @throws NotFoundException
     */
    Boolean deleteTopo(Topo topo) throws NotFoundException;

}
