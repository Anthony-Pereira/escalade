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

        if (httpSession.getAttribute("compte") != null) {
            this.getServletContext().getRequestDispatcher("/WEB-INF/jsp/parameter.jsp").forward(request,response);
        } else {
            this.getServletContext().getRequestDispatcher("/index.jsp").forward(request,response);
        }

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        Compte compte;
        CompteResource compteResource = new CompteResource();

        HttpSession httpSession = request.getSession();
        compte = (Compte) httpSession.getAttribute("compte");

        String motDePasse = request.getParameter("motDePasse");
        String rewriteMotDePasse = request.getParameter("rewriteMotDePasse");

        Integer id = compte.getId();

        if (motDePasse.equals(rewriteMotDePasse)){
            compte.setId(id);
            compte.setMotDePasse(motDePasse);
            try {
                compteResource.updateCompte(compte);
                request.setAttribute("passwordMessageTrue",true);
            } catch (NotFoundException e) {
                System.out.println(e.getMessage());
            }
        } else {
            request.setAttribute("passwordMessageFalse",false);
        }

        this.getServletContext().getRequestDispatcher("/WEB-INF/jsp/parameter.jsp").forward(request,response);

    }
}
