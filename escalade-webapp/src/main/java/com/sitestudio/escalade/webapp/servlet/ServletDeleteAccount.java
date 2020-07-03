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

@WebServlet(name = "ServletDeleteAccount")
public class ServletDeleteAccount extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        HttpSession httpSession = request.getSession();
        httpSession.getAttribute("compte");

        if (httpSession.getAttribute("compte") != null) {
            this.getServletContext().getRequestDispatcher("/WEB-INF/jsp/deleteAccount.jsp").forward(request,response);
        } else {
            this.getServletContext().getRequestDispatcher("/WEB-INF/jsp/signIn.jsp").forward(request,response);
        }

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        Compte compte;
        CompteResource compteResource = new CompteResource();

        HttpSession httpSession = request.getSession();
        compte = (Compte) httpSession.getAttribute("compte");

        Integer id = compte.getId();
        String email = compte.getEmail();
        String deleteEmail = request.getParameter("delete");

        if (deleteEmail.equals(email)){
            compte.setId(id);
            compte.setEmail(deleteEmail);
            try {
                compteResource.deleteCompte(compte);
                request.setAttribute("deleteEmailTrue", true);
                this.getServletContext().getRequestDispatcher("/WEB-INF/jsp/deleteAccount.jsp").forward(request,response);
                httpSession.invalidate();
            } catch (NotFoundException e) {
                System.out.println("ERREUR : " + e.getMessage());
            }
        } else {
            request.setAttribute("deleteEmailFalse", false);
            this.getServletContext().getRequestDispatcher("/WEB-INF/jsp/parameter.jsp").forward(request,response);
        }

    }

}
