package com.sitestudio.escalade.webapp.servlet;

import com.sitestudio.escalade.model.bean.site.Secteur;
import com.sitestudio.escalade.model.bean.site.Voie;
import com.sitestudio.escalade.model.exception.NotFoundException;
import com.sitestudio.escalade.webapp.resource.SecteurResource;
import com.sitestudio.escalade.webapp.resource.VoieResource;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ServletVoie")
public class ServletVoie extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        Secteur secteur = new Secteur();
        SecteurResource secteurResource = new SecteurResource();

        Voie voie = new Voie();
        VoieResource voieResource = new VoieResource();

        HttpSession httpSession = request.getSession();

        httpSession.getAttribute("site");

        String secteurId = request.getParameter("secteur");

        secteur.setId(Integer.parseInt(secteurId));

        try {
            secteur = secteurResource.getSecteur(Integer.parseInt(secteurId));
            List<Voie> listVoies = voieResource.getVoie(secteur);
            httpSession.setAttribute("secteur",secteur);
            request.setAttribute("listVoies",listVoies);
        } catch (NotFoundException e) {
            e.printStackTrace();
        }

        this.getServletContext().getRequestDispatcher("/WEB-INF/jsp/voie.jsp").forward(request,response);

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        HttpSession httpSession = request.getSession();

        this.getServletContext().getRequestDispatcher("/WEB-INF/jsp/voie.jsp").forward(request,response);

    }

}
