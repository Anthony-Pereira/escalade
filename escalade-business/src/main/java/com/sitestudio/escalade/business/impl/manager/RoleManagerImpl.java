package com.sitestudio.escalade.business.impl.manager;

import com.sitestudio.escalade.business.contract.manager.RoleManager;
import com.sitestudio.escalade.model.bean.referentiel.EnumRole;
import com.sitestudio.escalade.model.exception.FunctionalException;
import com.sitestudio.escalade.model.exception.NotFoundException;

import javax.inject.Named;

/**
 * Implémentation de l'interface manager "RoleManager".
 *
 * @author Anthony Pereira
 */
@Named
public class RoleManagerImpl extends AbstractManager implements RoleManager {

    @Override
    public EnumRole getRole(Integer id) throws NotFoundException, FunctionalException {
        return getDaoFactory().getRoleDao().read(id);
    }

    @Override
    public Boolean createRole(EnumRole enumRole) throws FunctionalException {
        return getDaoFactory().getRoleDao().create(enumRole);
    }

    @Override
    public Boolean updateRole(EnumRole enumRole){
        return getDaoFactory().getRoleDao().update(enumRole);
    }

    @Override
    public Boolean deleteRole(EnumRole enumRole){
        return getDaoFactory().getRoleDao().delete(enumRole);
    }
}
