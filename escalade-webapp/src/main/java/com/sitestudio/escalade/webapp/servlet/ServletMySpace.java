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

@WebServlet(name = "ServletMySpace")
public class ServletMySpace extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        HttpSession httpSession = request.getSession(); // Initie le moteur de session de JEE
        httpSession.getAttribute("compte");

        this.getServletContext().getRequestDispatcher("/WEB-INF/jsp/mySpace.jsp").forward(request,response);

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        this.getServletContext().getRequestDispatcher("/WEB-INF/jsp/mySpace.jsp").forward(request,response);

    }

}

/* httpSession.invalidate(); // toute les donnée de la session sont supprimés. */

//String email = (String) httpSession.getAttribute("email");
//String motDePasse = (String) httpSession.getAttribute("motDePasse");
        /*on peut appeler aussi implicitement la variable de session dans la vue avec sessionScope
        exemple <c:out value="${sessionScope.email}"/>*/