package com.sitestudio.escalade.webapp.servlet;

import com.sitestudio.escalade.model.bean.compte.Adresse;
import com.sitestudio.escalade.model.bean.site.Site;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "ServletMySite")
public class ServletMySite extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        request.getParameter("nom");
        request.getParameter("adresse"); // objet Recuperer plusieurs variable
        request.getParameter("description");
        request.getParameter("photo"); // recuperer un fichier

        request.getServletContext().getRequestDispatcher("/WEB-INF/jsp/mySite.jsp").forward(request,response);

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        request.getServletContext().getRequestDispatcher("/WEB-INF/jsp/mySite.jsp").forward(request,response);

    }

}
