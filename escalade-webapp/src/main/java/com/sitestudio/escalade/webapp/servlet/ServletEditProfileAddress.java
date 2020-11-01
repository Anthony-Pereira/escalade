package com.sitestudio.escalade.webapp.servlet;

import com.sitestudio.escalade.model.bean.compte.Adresse;
import com.sitestudio.escalade.model.bean.compte.Compte;
import com.sitestudio.escalade.model.exception.FunctionalException;
import com.sitestudio.escalade.model.exception.NotFoundException;
import com.sitestudio.escalade.webapp.resource.AdresseResource;
import com.sitestudio.escalade.webapp.resource.CompteResource;
import com.sitestudio.escalade.webapp.resource.DepartementResource;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "ServletEditProfileAddress")
public class ServletEditProfileAddress extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        HttpSession httpSession = request.getSession();

        if (httpSession.getAttribute("compte") != null) {
            this.getServletContext().getRequestDispatcher("/WEB-INF/jsp/editProfile.jsp").forward(request,response);
        } else {
            this.getServletContext().getRequestDispatcher("/WEB-INF/jsp/signIn.jsp").forward(request,response);
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        HttpSession httpSession = request.getSession();
        Compte compte = (Compte) httpSession.getAttribute("compte");
        Adresse adresse = (Adresse) httpSession.getAttribute("adresse");
        Adresse newAdresse = new Adresse();

        CompteResource compteResource = new CompteResource();
        AdresseResource adresseResource = new AdresseResource();
        DepartementResource departementResource = new DepartementResource();

        String numero = request.getParameter("numero");
        String rue = request.getParameter("rue");
        String codePostal = request.getParameter("codePostal");
        String ville = request.getParameter("ville");

        String regExNumero = "^([1-9])|[1-9][0-9]$";
        String regExCodePostal = "^((0[1-9])|([1-8][0-9])|(9[0-8]))[0-9]{3}$";

        Boolean isValidNumber = numero.matches(regExNumero);

        Boolean isValidZip = codePostal.matches(regExCodePostal);

        if (isValidNumber && isValidZip){
            try {
                newAdresse.setDepartement(departementResource.getDepartement(Integer.parseInt(codePostal.substring(0,2))));

                if (compte.getAdresse().getId() != null) {

                    Integer addressId = adresse.getId();
                    adresse.setId(addressId);
                    adresse.setNumero(numero);
                    adresse.setRue(rue);
                    adresse.setCodePostal(codePostal);
                    adresse.setVille(ville);

                    adresseResource.updateAdresse(adresse);

                } else {

                    newAdresse.setNumero(numero);
                    newAdresse.setRue(rue);
                    newAdresse.setCodePostal(codePostal);
                    newAdresse.setVille(ville);

                    adresseResource.createAdresse(newAdresse);

                    adresse = newAdresse;

                    compte.setAdresse(adresse);

                    compteResource.updateCompte(compte);

                }

                httpSession.setAttribute("modificationAddressValid",true);

            } catch (NotFoundException | FunctionalException e) {
                System.out.println("ERROR: " + e);
            }
        } else {
            httpSession.setAttribute("modificationAddressValid",false);
        }

        httpSession.setAttribute("compte",compte);
        httpSession.setAttribute("adresse",adresse);

        if (httpSession.getAttribute("compte") != null) {
            this.getServletContext().getRequestDispatcher("/WEB-INF/jsp/editProfile.jsp").forward(request,response);
        } else {
            this.getServletContext().getRequestDispatcher("/WEB-INF/jsp/signIn.jsp").forward(request,response);
        }
    }

}
