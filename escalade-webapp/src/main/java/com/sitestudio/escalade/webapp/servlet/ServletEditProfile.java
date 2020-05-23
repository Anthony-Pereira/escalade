package com.sitestudio.escalade.webapp.servlet;

import com.sitestudio.escalade.model.bean.compte.Compte;
import com.sitestudio.escalade.model.exception.NotFoundException;
import com.sitestudio.escalade.webapp.resource.CompteResource;

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

        request.getServletContext().getRequestDispatcher("/WEB-INF/jsp/editProfile.jsp").forward(request,response);

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        Compte compte;
        CompteResource compteResource = new CompteResource();
        HttpSession httpSession = request.getSession();

        String pseudo = request.getParameter("pseudo");
        String prenom = request.getParameter("prenom");
        String nom = request.getParameter("nom");
        //String adresse = request.getParameter("adresse");
        String numTelephone = request.getParameter("numTelephone");

        compte = (Compte) httpSession.getAttribute("compte");

        Integer id = compte.getId();

        compte.setId(id);
        compte.setPseudo(pseudo);
        compte.setPrenom(prenom);
        compte.setNom(nom);
        //compte.setAdresse(adresse);
        compte.setNumTelephone(numTelephone);

        try {
            compteResource.updateCompte(compte);
        } catch (NotFoundException e) {
            e.printStackTrace();
        }

        request.setAttribute("compte", compte);

        request.getServletContext().getRequestDispatcher("/WEB-INF/jsp/profile.jsp").forward(request,response);

    }
}
