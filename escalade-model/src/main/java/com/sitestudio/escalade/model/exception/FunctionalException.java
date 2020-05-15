package com.sitestudio.escalade.model.exception;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

/**
 * Classe d'exception levée quand une erreur fonctionnelle survient
 *
 * @author A.Pereira
 */
public class FunctionalException extends Exception {

	private final Log LOGGER = LogFactory.getLog(com.sitestudio.escalade.model.exception.FunctionalException.class);
	
    /**
     * Constructeur.
     *
     * @param pMessage -
     */
    public FunctionalException(String pMessage) {
        super(pMessage);
    }


    /**
     * Constructeur.
     *
     * @param pMessage -
     * @param pCause -
     */
    public FunctionalException(String pMessage, Throwable pCause) {
        super(pMessage, pCause);
    }
}

