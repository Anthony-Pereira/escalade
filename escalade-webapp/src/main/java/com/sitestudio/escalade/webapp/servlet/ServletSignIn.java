package com.sitestudio.escalade.webapp.servlet;

import com.sitestudio.escalade.model.bean.compte.Compte;
import com.sitestudio.escalade.model.exception.NotFoundException;
import com.sitestudio.escalade.webapp.resource.CompteResource;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet(name = "ServletSignIn")
public class ServletSignIn extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        HttpSession httpSession = request.getSession();
        httpSession.getAttribute("compte");

        if (httpSession.getAttribute("compte") != null) {
            this.getServletContext().getRequestDispatcher("/WEB-INF/jsp/mySpace.jsp").forward(request, response);
        } else {
            this.getServletContext().getRequestDispatcher("/WEB-INF/jsp/signIn.jsp").forward(request, response);
        }

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        CompteResource compteResource = new CompteResource();
        Compte compte = new Compte();

        HttpSession httpSession = request.getSession(); // Initie le moteur de session de JEE

        String email = request.getParameter("email");
        String motDePasse = request.getParameter("motDePasse");

        compte.setEmail(email);
        compte.setMotDePasse(motDePasse);

        try {
            compte = compteResource.getCompte(compte);

            httpSession.setAttribute("authentification", true);
            httpSession.setAttribute("menu",true);
            httpSession.setAttribute("compte", compte);

            this.getServletContext().getRequestDispatcher("/WEB-INF/jsp/mySpace.jsp").forward(request, response);

        } catch (NotFoundException e) {
            System.out.println("ERREUR : " + e.getMessage());
            request.setAttribute("connectionMessage",false);
            this.getServletContext().getRequestDispatcher("/WEB-INF/jsp/signIn.jsp").forward(request,response);
        }

    }

}