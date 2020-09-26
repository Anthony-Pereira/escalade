package com.sitestudio.escalade.webapp.resource;

import com.sitestudio.escalade.model.bean.referentiel.EnumRole;
import com.sitestudio.escalade.model.exception.FunctionalException;
import com.sitestudio.escalade.model.exception.NotFoundException;

public class RoleResource extends AbstractResource {

    public EnumRole getRole (Integer id) throws NotFoundException, FunctionalException {
        return getManagerFactory().getRoleManager().getRole(id);
    }

    public Boolean createRole (EnumRole enumRole) throws NotFoundException, FunctionalException {
        return getManagerFactory().getRoleManager().createRole(enumRole);
    }

    public Boolean updateRole (EnumRole enumRole) throws NotFoundException {
        return getManagerFactory().getRoleManager().updateRole(enumRole);
    }

    public Boolean deleteRole (EnumRole enumRole) throws NotFoundException {
        return getManagerFactory().getRoleManager().deleteRole(enumRole);
    }


}
