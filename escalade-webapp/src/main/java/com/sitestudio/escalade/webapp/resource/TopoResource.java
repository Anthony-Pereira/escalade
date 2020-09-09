package com.sitestudio.escalade.webapp.resource;

import com.sitestudio.escalade.model.bean.topo.Topo;
import com.sitestudio.escalade.model.exception.NotFoundException;

import java.util.List;

/**
 * Demande la liste des topos à la couche business.
 */
public class TopoResource extends AbstractResource {

    public Topo getTopo(Integer id) throws NotFoundException {
        return getManagerFactory().getTopoManager().getTopo(id);
    }

    public List<Topo> getTopo() throws NotFoundException {
        return getManagerFactory().getTopoManager().getTopo();
    }

    public Boolean createTopo(Topo topo) throws NotFoundException {
        return getManagerFactory().getTopoManager().createTopo(topo);
    }

    public Boolean updateTopo(Topo topo) throws NotFoundException {
        return getManagerFactory().getTopoManager().updateTopo(topo);
    }

    public Boolean deleteTopo(Topo topo) throws NotFoundException {
        return getManagerFactory().getTopoManager().deleteTopo(topo);
    }

}





