package com.sitestudio.escalade.webapp.resource;

import com.sitestudio.escalade.business.contract.ManagerFactory;

/**
 * Classe abstraite en charge de récupérer L'objet ManagerFactory.
 *
 * @author Anthony Pereira
 *
 */
public abstract class AbstractResource {

    private static ManagerFactory managerFactory;

    protected static ManagerFactory getManagerFactory() {
        return managerFactory;
    }

    public static void setManagerFactory(ManagerFactory managerFactory) {
        AbstractResource.managerFactory = managerFactory;
    }
}
