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
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

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

        Boolean isValidEmail;
        Boolean isValidPassword;

        String nom = request.getParameter("nom");
        String prenom = request.getParameter("prenom");
        String email = request.getParameter("email");
        String motDePasse = request.getParameter("motDePasse");
        String confirmeEmail = request.getParameter("confirmeEmail");
        String confirmeMotDePasse = request.getParameter("confirmeMotDePasse");

        String regExEmail = "^[a-zA-Z0-9._-]{6,30}+@[a-zA-Z0-9._-]+\\.[a-z]{2,}$";

        String regExPassword = "^[a-zA-Z0-9]{8,}$";

            isValidEmail = email.matches(regExEmail);
            isValidPassword = motDePasse.matches(regExPassword);

        if (confirmeEmail.equals(email) && confirmeMotDePasse.equals(motDePasse)) {

            try {
                compte.setEmail(email);
                Boolean emailExist  = compteResource.getEmailChecked(compte);

                if (!emailExist && isValidEmail && isValidPassword) {

                    try {
                        MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
                        messageDigest.update(motDePasse.getBytes());
                        byte byteData[] = messageDigest.digest();

                        //convertir le tableau de bits en une format hexadécimal
                        StringBuffer sb = new StringBuffer();
                        for (int i = 0; i < byteData.length; i++) {
                            sb.append(Integer.toString((byteData[i] & 0xff) + 0x100, 16).substring(1));
                        }

                        compte.setMotDePasse(sb.toString());

                    } catch (NoSuchAlgorithmException e) {
                        System.out.println("Erreur : " + e);
                    }

                    compte.setNom(nom);
                    compte.setPrenom(prenom);
                    compte.setPseudo(prenom);
                    compte.setEmail(email);
                    compte.setRole(EnumRole.UTILISATEUR);

                    try {
                        compteResource.createCompte(compte);
                    } catch (NotFoundException e) {
                        System.out.println("ERREUR : " + e.getMessage());
                    }

                    request.setAttribute("compte",compte);
                    this.getServletContext().getRequestDispatcher("/WEB-INF/jsp/signIn.jsp").forward(request,response);

                } else {
                    request.setAttribute("compte",compte);
                    if (emailExist) request.setAttribute("emailExist",true);
                    if (!isValidEmail) request.setAttribute("isValidEmail",true);
                    if (!isValidPassword) request.setAttribute("isValidPassword", true);
                    this.getServletContext().getRequestDispatcher("/WEB-INF/jsp/signUp.jsp").forward(request,response);
                }

            } catch (FunctionalException e) {
                System.out.println("ERREUR : " + e.getMessage());
            }

        } else {
            request.setAttribute("confirmationError",true);
            this.getServletContext().getRequestDispatcher("/WEB-INF/jsp/signUp.jsp").forward(request,response);
        }
    }
}
