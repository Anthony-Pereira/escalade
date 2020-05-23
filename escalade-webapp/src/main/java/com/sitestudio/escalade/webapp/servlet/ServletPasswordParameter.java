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

@WebServlet(name = "ServletPasswordParameter")
public class ServletPasswordParameter extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        HttpSession httpSession = request.getSession();

        httpSession.getAttribute("compte");

        request.getServletContext().getRequestDispatcher("/WEB-INF/jsp/parameter.jsp").forward(request,response);

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        Compte compte;
        CompteResource compteResource = new CompteResource();
        HttpSession httpSession = request.getSession();

        String motDePasse = request.getParameter("motDePasse");
        String rewriteMotDePasse = request.getParameter("rewriteMotDePasse");

        compte = (Compte) httpSession.getAttribute("compte");

        if (motDePasse == rewriteMotDePasse){
            compte.setMotDePasse(motDePasse);
        } else {
            System.out.println("erreur les mots de passe de correspondent pas");
        }

        try {
            compteResource.updateCompte(compte);
        } catch (NotFoundException e) {
            e.printStackTrace();
        }

        request.getServletContext().getRequestDispatcher("/WEB-INF/jsp/parameter.jsp").forward(request,response);

    }

}
