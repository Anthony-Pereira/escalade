package com.sitestudio.escalade.business.contract.manager;

import com.sitestudio.escalade.model.bean.referentiel.EnumRole;
import com.sitestudio.escalade.model.exception.FunctionalException;
import com.sitestudio.escalade.model.exception.NotFoundException;

public interface RoleManager {

    /**
     * Retourne l'objet Rôle ciblé.
     * @param id L'identifiant rôle ciblé.
     * @return Un objet Rôle.
     * @throws NotFoundException */
    EnumRole getRole (Integer id) throws NotFoundException, FunctionalException;

    /**Créer un rôle.
     * @param enumRole L'identifiant rôle ciblé.
     * @return boolean.
     * @throws NotFoundException */
    Boolean createRole (EnumRole enumRole) throws NotFoundException, FunctionalException;

    /**Modifier un rôle.
     * @param enumRole L'identifiant rôle ciblé.
     * @return boolean.
     * @throws NotFoundException */
    Boolean updateRole (EnumRole enumRole) throws  NotFoundException;

    /**Supprimer un rôle.
     * @param enumRole L'identifiant rôle ciblé.
     * @return boolean.
     * @throws NotFoundException */
    Boolean deleteRole (EnumRole enumRole) throws NotFoundException;

}
