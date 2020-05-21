package com.sitestudio.escalade.webapp.servlet;

import com.sitestudio.escalade.model.bean.compte.Compte;
import com.sitestudio.escalade.model.exception.NotFoundException;
import com.sitestudio.escalade.webapp.resource.CompteResource;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "EditProfile")
public class EditProfile extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.getServletContext().getRequestDispatcher("/WEB-INF/jsp/editProfile.jsp").forward(request,response);

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        Compte compte = new Compte();
        CompteResource compteResource = new CompteResource();

        String getPseudo = request.getParameter("pseudo");
        String getPrenom = request.getParameter("prenom");
        String getNom = request.getParameter("nom");
        String getAdresse = request.getParameter("adresse");
        String getNumTelephone = request.getParameter("numTelephone");

        compte.setPseudo(getPseudo);
        compte.setPrenom(getPrenom);
        compte.setNom(getNom);
        compte.setPseudo(getAdresse);
        compte.setPseudo(getNumTelephone);

        try {
            compteResource.updateCompte(compte);
        } catch (NotFoundException e) {
            e.printStackTrace();
        }

        request.setAttribute("compte", compte);

        request.getServletContext().getRequestDispatcher("/WEB-INF/jsp/profile.jsp").forward(request,response);

    }
}
