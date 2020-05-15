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

@WebServlet(name = "SignUp")
public class SignUp extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        this.getServletContext().getRequestDispatcher("/WEB-INF/jsp/signUp.jsp").forward(request,response);

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        CompteResource compteResource = new CompteResource();
        Compte compte = new Compte();

        String getNom = request.getParameter("nom");
        String getPrenom = request.getParameter("prenom");
        String getEmail = request.getParameter("email");
        String getMotDePasse = request.getParameter("motDePasse");

        compte.setNom(getNom);
        compte.setPrenom(getPrenom);
        compte.setEmail(getEmail);
        compte.setMotDePasse(getMotDePasse);

        try {
            compteResource.createCompte(compte);
        } catch (NotFoundException e) {
            e.printStackTrace();
        }

        request.setAttribute("compte",compte);

        this.getServletContext().getRequestDispatcher("/WEB-INF/jsp/signIn.jsp").forward(request,response);

    }
}
