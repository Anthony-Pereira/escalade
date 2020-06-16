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

        httpSession.getAttribute("adresse");

        this.getServletContext().getRequestDispatcher("/WEB-INF/jsp/editProfile.jsp").forward(request,response);

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        Compte compte;
        Adresse adresse = new Adresse();

        CompteResource compteResource = new CompteResource();
        AdresseResource adresseResource = new AdresseResource();
        DepartementResource departementResource = new DepartementResource();
        RegionResource regionResource = new RegionResource();
        PaysResource paysResource = new PaysResource();
        
        HttpSession httpSession = request.getSession();
        compte = (Compte) httpSession.getAttribute("compte");

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

        System.out.println("le numero de département est " + adresse.getCodePostal().substring(0,2));

        try {

            Departement departement = departementResource.getDepartement(adresse);
            Region region = regionResource.getRegion(departement);
            Pays pays = paysResource.getPays(region);
            adresse = new Adresse(numero,rue,codePostal,ville,departement,region,pays);

                adresseResource.createAdresse(adresse);

                compte.setAdresse(adresse);
                compteResource.updateCompte(compte);

            httpSession.setAttribute("adresse",adresse);

        } catch (NotFoundException | FunctionalException e) {
            e.printStackTrace();
        }

        httpSession.setAttribute("compte",compte);

        this.getServletContext().getRequestDispatcher("/WEB-INF/jsp/profile.jsp").forward(request,response);

    }

}
