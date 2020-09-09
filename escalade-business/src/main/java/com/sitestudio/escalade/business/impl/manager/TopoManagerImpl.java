package com.sitestudio.escalade.business.impl.manager;

import com.sitestudio.escalade.business.contract.manager.TopoManager;
import com.sitestudio.escalade.model.bean.site.Site;
import com.sitestudio.escalade.model.bean.topo.Topo;
import com.sitestudio.escalade.model.exception.NotFoundException;

import javax.inject.Named;
import java.util.List;

@Named
public class TopoManagerImpl extends AbstractManager implements TopoManager {


    @Override
    public Topo getTopo(Integer id) throws NotFoundException {
        return getDaoFactory().getTopoDao().read(id);
    }

    @Override
    public List<Topo> getTopo() throws NotFoundException {
        return getDaoFactory().getTopoDao().readAll();
    }

    @Override
    public Boolean createTopo(Topo topo) throws NotFoundException {
        return getDaoFactory().getTopoDao().create(topo);
    }

    @Override
    public Boolean updateTopo(Topo topo) throws NotFoundException {
        return getDaoFactory().getTopoDao().update(topo);
    }

    @Override
    public Boolean deleteTopo(Topo topo) throws NotFoundException {
        return getDaoFactory().getTopoDao().delete(topo);
    }
}
