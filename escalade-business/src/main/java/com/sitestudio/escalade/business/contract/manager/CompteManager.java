package com.sitestudio.escalade.business.contract.manager;

import com.sitestudio.escalade.model.bean.compte.Compte;
import com.sitestudio.escalade.model.exception.FunctionalException;
import com.sitestudio.escalade.model.exception.NotFoundException;

public interface CompteManager {

    /**Retourne l'objet Utilisateur ciblé.
     * @param compte L'identifiant de l'utilisateur ciblé.
     * @return Un objet Utilisateur.
     * @throws NotFoundException
     */
    Compte getCompte (Compte compte) throws NotFoundException;

    /**Créer un compte utilisateur.
     * @param compte L'identifiant de l'utilisateur ciblé.
     * @return boolean.
     * @throws NotFoundException
     */
    Boolean createCompte(Compte compte) throws NotFoundException;

    /**Modifier un compte utilisateur.
     * @param compte L'identifiant de l'utilisateur ciblé.
     * @return boolean.
     * @throws NotFoundException
     */
    Boolean updateCompte(Compte compte) throws NotFoundException;

    /**Supprimer un compte utilisateur.
     * @param compte L'identifiant de l'utilisateur ciblé.
     * @return boolean.
     * @throws NotFoundException
     */
    Boolean deleteCompte(Compte compte) throws NotFoundException;

    /**Vérifie si l'email existe.
     * @param compte L'identifiant de l'utilisateur ciblé.
     * @return boolean.
     * @throws FunctionalException
     */
    Boolean getEmailChecked(Compte compte) throws FunctionalException;

}
