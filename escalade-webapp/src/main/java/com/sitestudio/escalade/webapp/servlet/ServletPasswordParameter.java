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
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

@WebServlet(name = "ServletPasswordParameter")
public class ServletPasswordParameter extends HttpServlet {

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

        Boolean isValidPassword;

        HttpSession httpSession = request.getSession();
        compte = (Compte) httpSession.getAttribute("compte");

        String motDePasse = request.getParameter("motDePasse");
        String rewriteMotDePasse = request.getParameter("rewriteMotDePasse");

        Integer id = compte.getId();

        String regEx = "^[a-zA-Z0-9]{8,}$";

            isValidPassword = motDePasse.matches(regEx);

            if (isValidPassword == true && (motDePasse.equals(rewriteMotDePasse)) == true) {
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
                    compte.setId(id);

                    try {
                        compteResource.updateCompte(compte);
                        request.setAttribute("passwordMessageTrue",true);
                    } catch (NotFoundException e) {
                        System.out.println(e.getMessage());
                    }

                } catch (NoSuchAlgorithmException e) {
                    System.out.println("Erreur : " + e);
                }
            } else {
                if (!isValidPassword) request.setAttribute("validPassword", false);
                if (!motDePasse.equals(rewriteMotDePasse)) request.setAttribute("passwordMessageFalse",false);
            }

        this.getServletContext().getRequestDispatcher("/WEB-INF/jsp/parameter.jsp").forward(request,response);

    }
}
