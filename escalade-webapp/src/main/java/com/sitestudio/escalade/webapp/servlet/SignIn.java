package com.sitestudio.escalade.webapp.servlet;

import com.sitestudio.escalade.model.bean.compte.Compte;
import com.sitestudio.escalade.model.exception.NotFoundException;
import com.sitestudio.escalade.webapp.resource.CompteResource;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet(name = "SignIn")
public class SignIn extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        this.getServletContext().getRequestDispatcher("/WEB-INF/jsp/signIn.jsp").forward(request,response);

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        CompteResource compteResource = new CompteResource();
        Compte compte = new Compte();
        HttpSession httpSession = request.getSession(); // Initie le moteur de session de JEE

        String email = request.getParameter("email");
        String motDePasse = request.getParameter("motDePasse");

        compte.setEmail(email);
        compte.setMotDePasse(motDePasse);

        httpSession.setAttribute("email",compte.getEmail());
        httpSession.setAttribute("motDePasse",compte.getEmail());

        try {
            compteResource.getCompte(compte);
        } catch (NotFoundException e) {
            e.printStackTrace();
        }

        if (email == compte.getEmail() && motDePasse == compte.getMotDePasse()){
            this.getServletContext().getRequestDispatcher("/WEB-INF/jsp/mySpace.jsp").forward(request,response);
        } else {
            this.getServletContext().getRequestDispatcher("/WEB-INF/jsp/signIn.jsp").forward(request,response);
        }

    }

}