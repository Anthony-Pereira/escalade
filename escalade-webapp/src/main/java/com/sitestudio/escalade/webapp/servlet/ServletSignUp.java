package com.sitestudio.escalade.webapp.servlet;

import com.sitestudio.escalade.model.bean.compte.Compte;
import com.sitestudio.escalade.model.bean.referentiel.EnumRole;
import com.sitestudio.escalade.model.exception.FunctionalException;
import com.sitestudio.escalade.model.exception.NotFoundException;
import com.sitestudio.escalade.webapp.resource.CompteResource;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "ServletSignUp")
public class ServletSignUp extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        request.getAttribute("emailExist");
        request.getAttribute("confirmationError");
        request.getAttribute("compte");

        HttpSession httpSession = request.getSession();
        httpSession.getAttribute("compte");

        if (httpSession.getAttribute("compte") != null) {
            this.getServletContext().getRequestDispatcher("/WEB-INF/jsp/mySpace.jsp").forward(request,response);
        } else {
            this.getServletContext().getRequestDispatcher("/WEB-INF/jsp/signUp.jsp").forward(request,response);
        }


    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        CompteResource compteResource = new CompteResource();
        Compte compte = new Compte();

        Boolean emailDoesNotExist = false;

        String nom = request.getParameter("nom");
        String prenom = request.getParameter("prenom");
        String email = request.getParameter("email");
        String motDePasse = request.getParameter("motDePasse");
        String confirmeEmail = request.getParameter("confirmeEmail");
        String confirmeMotDePasse = request.getParameter("confirmeMotDePasse");

        compte.setNom(nom);
        compte.setPrenom(prenom);
        compte.setPseudo(prenom);
        compte.setEmail(email);
        compte.setMotDePasse(motDePasse);
        compte.setRole(EnumRole.UTILISATEUR);

        if (confirmeEmail.equals(email) && confirmeMotDePasse.equals(motDePasse)) {

            try {
                emailDoesNotExist = compteResource.getEmailChecked(compte);
            } catch (FunctionalException e) {
                System.out.println("ERREUR : " + e.getMessage());
            }

            if (emailDoesNotExist) {

                try {
                    compteResource.createCompte(compte);
                } catch (NotFoundException e) {
                    System.out.println("ERREUR : " + e.getMessage());
                }
            } else {
                request.setAttribute("compte",compte);
                request.setAttribute("emailExist",true);
                this.getServletContext().getRequestDispatcher("/WEB-INF/jsp/signUp.jsp").forward(request,response);
            }

            request.setAttribute("compte",compte);
            this.getServletContext().getRequestDispatcher("/WEB-INF/jsp/signIn.jsp").forward(request,response);

        } else {
            request.setAttribute("confirmationError",true);
            this.getServletContext().getRequestDispatcher("/WEB-INF/jsp/signUp.jsp").forward(request,response);
        }
    }
}
