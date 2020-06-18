package com.sitestudio.escalade.webapp.servlet;

import com.sitestudio.escalade.model.bean.compte.Adresse;
import com.sitestudio.escalade.model.bean.compte.Compte;
import com.sitestudio.escalade.model.bean.referentiel.Departement;
import com.sitestudio.escalade.model.bean.referentiel.Pays;
import com.sitestudio.escalade.model.bean.referentiel.Region;
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

        this.getServletContext().getRequestDispatcher("/WEB-INF/jsp/editProfile.jsp").forward(request,response);

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        Compte compte;
        CompteResource compteResource = new CompteResource();

        Adresse adresse;
        AdresseResource adresseResource = new AdresseResource();

        Departement departement;
        DepartementResource departementResource = new DepartementResource();


        HttpSession httpSession = request.getSession();
        compte = (Compte) httpSession.getAttribute("compte");
        adresse = (Adresse) httpSession.getAttribute("adresse");

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
            if (compte.getAdresse() == null){

                departement = departementResource.getDepartement(Integer.parseInt(codePostal.substring(0,2)));

                adresse.setDepartement(departement);


                adresseResource.createAdresse(adresse);

                compte.setAdresse(adresse);
                compteResource.updateCompte(compte);

            } else {

                departement = departementResource.getDepartement(Integer.parseInt(codePostal.substring(0,2)));

                adresse.setDepartement(departement);


                adresseResource.updateAdresse(adresse);
            }
        } catch (NotFoundException | FunctionalException e) {
            e.printStackTrace();
        }

        System.out.println("le numero de département est " + adresse.getCodePostal().substring(0,2));

        httpSession.setAttribute("compte",compte);
        httpSession.setAttribute("adresse",adresse);

        this.getServletContext().getRequestDispatcher("/WEB-INF/jsp/profile.jsp").forward(request,response);

    }

}
