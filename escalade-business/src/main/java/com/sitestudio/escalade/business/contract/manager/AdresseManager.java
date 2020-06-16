package com.sitestudio.escalade.business.contract.manager;

import com.sitestudio.escalade.model.bean.compte.Adresse;
import com.sitestudio.escalade.model.exception.FunctionalException;
import com.sitestudio.escalade.model.exception.NotFoundException;

public interface AdresseManager {

    /**Retourne l'objet Adresse ciblé.
     * @param adresse L'identifiant de l'adresse ciblé.
     * @return Un objet Adresse.
     * @throws NotFoundException */
    Adresse getAdresse (Adresse adresse) throws NotFoundException, FunctionalException;

    /**Créer une adresse.
     * @param adresse L'identifiant de l'adresse ciblé.
     * @return boolean.
     * @throws NotFoundException */
    Boolean createAdresse (Adresse adresse) throws NotFoundException, FunctionalException;

    /**Modifier une adresse.
     * @param adresse L'identifiant de l'adresse ciblé.
     * @return boolean.
     * @throws NotFoundException */
    Boolean updateAdresse (Adresse adresse) throws  NotFoundException;

    /**Supprimer une adresse.
     * @param adresse L'identifiant de l'adresse ciblé.
     * @return boolean.
     * @throws NotFoundException */
    Boolean deleteAdresse (Adresse adresse) throws NotFoundException;

}
