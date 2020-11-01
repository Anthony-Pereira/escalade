package com.sitestudio.escalade.webapp.servlet;

import com.sitestudio.escalade.model.bean.compte.Compte;
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
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

@WebServlet(name = "ServletEmailParameter")
public class ServletEmailParameter extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        HttpSession httpSession = request.getSession();
        httpSession.getAttribute("compte");

        if (httpSession.getAttribute("compte") != null) {
            this.getServletContext().getRequestDispatcher("/WEB-INF/jsp/parameter.jsp").forward(request,response);
        } else {
            this.getServletContext().getRequestDispatcher("/WEB-INF/jsp/signIn.jsp").forward(request,response);
        }

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        Compte compte;
        CompteResource compteResource = new CompteResource();

        Boolean isValidEmail;
        Boolean emailExist = false;

        HttpSession httpSession = request.getSession();
        compte = (Compte) httpSession.getAttribute("compte");

        String email = request.getParameter("email");

        String regEx = "^[a-zA-Z0-9._-]{6,30}+@[a-zA-Z0-9._-]+\\.[a-z]{2,}$";

        isValidEmail = email.matches(regEx);

        if (isValidEmail) {
            compte.setEmail(email);
            try {
                emailExist = compteResource.getEmailChecked(compte);
            } catch (FunctionalException e) {
                System.out.println("ERREUR : " + e.getMessage());
            }

            if (!emailExist) {
                try {
                    compteResource.updateEmailAndPassword(compte);
                    request.setAttribute("validEmail", true);
                } catch (NotFoundException e) {
                    System.out.println("ERREUR : " + e.getMessage());
                }
            } else {
                request.setAttribute("emailExist",true);
            }

        } else {
            request.setAttribute("validEmail", false);
        }

        request.setAttribute("compte", compte);

        this.getServletContext().getRequestDispatcher("/WEB-INF/jsp/parameter.jsp").forward(request,response);

    }

}
