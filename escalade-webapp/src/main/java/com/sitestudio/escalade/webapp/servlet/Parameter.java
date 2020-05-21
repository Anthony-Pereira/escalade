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

@WebServlet(name = "Parameter")
public class Parameter extends HttpServlet {


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.getServletContext().getRequestDispatcher("/WEB-INF/jsp/parameter.jsp").forward(request,response);

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        Compte compte = new Compte();
        CompteResource compteResource = new CompteResource();

        String getEmail = request.getParameter("email");
        String getMotDePasse = request.getParameter("motDePasse");

        compte.setEmail(getEmail);
        compte.setMotDePasse(getMotDePasse);

        try {
            compteResource.updateCompte(compte);
        } catch (NotFoundException e) {
            e.printStackTrace();
        }

        request.getServletContext().getRequestDispatcher("/WEB-INF/jsp/profile.jsp").forward(request,response);

    }

}
