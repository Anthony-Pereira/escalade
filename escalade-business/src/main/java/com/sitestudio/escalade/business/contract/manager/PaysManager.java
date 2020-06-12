package com.sitestudio.escalade.business.contract.manager;

import com.sitestudio.escalade.model.bean.referentiel.Pays;
import com.sitestudio.escalade.model.bean.referentiel.Region;
import com.sitestudio.escalade.model.exception.NotFoundException;

public interface PaysManager {

    /**
     * Retourne le pays.
     * @param code
     * @return
     * @throws NotFoundException
     */
    Pays getPays(Integer code) throws NotFoundException;

    /**
     * Creer un pays.
     * @param pays
     * @return
     * @throws NotFoundException
     */
    Boolean createPays(Pays pays) throws NotFoundException;

    /**
     * Modifie un pays.
     * @param pays
     * @return
     * @throws NotFoundException
     */
    Boolean updatePays(Pays pays) throws NotFoundException;

    /**
     * Supprime un pays
     * @param pays
     * @return
     * @throws NotFoundException
     */
    Boolean deletePays(Pays pays) throws NotFoundException;

}
