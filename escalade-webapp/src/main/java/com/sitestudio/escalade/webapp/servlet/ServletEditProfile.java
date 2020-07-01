package com.sitestudio.escalade.webapp.servlet;

import com.sitestudio.escalade.model.bean.compte.Adresse;
import com.sitestudio.escalade.model.bean.compte.Compte;
import com.sitestudio.escalade.model.bean.referentiel.Departement;
import com.sitestudio.escalade.model.exception.FunctionalException;
import com.sitestudio.escalade.model.exception.NotFoundException;
import com.sitestudio.escalade.webapp.resource.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "ServletEditProfile")
public class ServletEditProfile extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        HttpSession httpSession = request.getSession();
        httpSession.getAttribute("compte");
        httpSession.getAttribute("adresse");

        if (httpSession.getAttribute("compte") != null) {
            this.getServletContext().getRequestDispatcher("/WEB-INF/jsp/editProfile.jsp").forward(request,response);
        } else {
            this.getServletContext().getRequestDispatcher("/index.jsp").forward(request,response);
        }

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        HttpSession httpSession = request.getSession();
        Compte compte = (Compte) httpSession.getAttribute("compte");
        Adresse adresse = new Adresse();

        CompteResource compteResource = new CompteResource();
        AdresseResource adresseResource = new AdresseResource();
        DepartementResource departementResource = new DepartementResource();

        String pseudo = request.getParameter("pseudo");
        String prenom = request.getParameter("prenom");
        String nom = request.getParameter("nom");
        String numTelephone = request.getParameter("numTelephone");

        String numero = request.getParameter("numero");
        String rue = request.getParameter("rue");
        String codePostal = request.getParameter("codePostal");
        String ville = request.getParameter("ville");

        Integer id = compte.getId();
        compte.setId(id);
        compte.setPseudo(pseudo);
        compte.setPrenom(prenom);
        compte.setNom(nom);
        compte.setNumTelephone(numTelephone);

        adresse.setNumero(numero);
        adresse.setRue(rue);
        adresse.setCodePostal(codePostal);
        adresse.setVille(ville);

        try {
            compteResource.updateCompte(compte);

            adresse.setDepartement(departementResource.getDepartement(Integer.parseInt(codePostal.substring(0,2))));

            if (compte.getAdresse() != null) {
                adresseResource.updateAdresse(adresse);
            } else {
                adresseResource.createAdresse(adresse); // stop work here
                compte.setAdresse(adresse);
            }
        } catch (NotFoundException | FunctionalException e) {
            e.printStackTrace();
        }

        System.out.println("le numero de département est " + adresse.getCodePostal().substring(0,2));

        httpSession.setAttribute("compte",compte); // Récupère les valeurs de compte dans httpSession
        httpSession.setAttribute("adresse",adresse); // Récupère les valeurs d'adresse dans httpSession

        this.getServletContext().getRequestDispatcher("/WEB-INF/jsp/profile.jsp").forward(request,response);

    }

}