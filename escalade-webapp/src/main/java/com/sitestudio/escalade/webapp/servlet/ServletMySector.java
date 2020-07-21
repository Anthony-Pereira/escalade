package com.sitestudio.escalade.webapp.servlet;

import com.sitestudio.escalade.model.bean.compte.Adresse;
import com.sitestudio.escalade.model.bean.site.Secteur;
import com.sitestudio.escalade.model.bean.site.Site;
import com.sitestudio.escalade.model.exception.FunctionalException;
import com.sitestudio.escalade.model.exception.NotFoundException;
import com.sitestudio.escalade.webapp.resource.AdresseResource;
import com.sitestudio.escalade.webapp.resource.SecteurResource;
import com.sitestudio.escalade.webapp.resource.SiteResource;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ServletMySector")
public class ServletMySector extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        HttpSession httpSession = request.getSession();

        SiteResource siteResource = new SiteResource();

        try {
            List<Site> listSite = siteResource.getSite();
            System.out.println("Le résultat est : " + listSite);
            httpSession.setAttribute("listSite",listSite);
        } catch (NotFoundException e) {
            System.out.println("ERREUR : " + e);
        }

        if (httpSession.getAttribute("compte") != null) {

            this.getServletContext().getRequestDispatcher("/WEB-INF/jsp/mySector.jsp").forward(request,response);
        } else {
            this.getServletContext().getRequestDispatcher("/WEB-INF/jsp/signIn.jsp").forward(request,response);
        }

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        HttpSession httpSession = request.getSession();

         Site site = new Site();
         SiteResource siteResource = new SiteResource();

        Secteur secteur = new Secteur();
        SecteurResource secteurResource = new SecteurResource();

        String nom = request.getParameter("nom");
        String description = request.getParameter("description");
        String siteId = request.getParameter("site");

        try {
            site = siteResource.getSite(Integer.parseInt(siteId));
        } catch (NotFoundException e) {
            e.printStackTrace();
        }

        secteur.setNom(nom);
        secteur.setDescription(description);
        secteur.setSite(site);

        try {
            secteurResource.createSecteur(secteur);
        } catch (NotFoundException e) {
            e.printStackTrace();
        }

        if (httpSession.getAttribute("compte") != null){
            this.getServletContext().getRequestDispatcher("/WEB-INF/jsp/mySector.jsp").forward(request,response);
        } else  {
            this.getServletContext().getRequestDispatcher("/WEB-INF/jsp/signIn.jsp").forward(request,response);
        }

    }

}
