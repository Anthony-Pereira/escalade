package com.sitestudio.escalade.webapp.servlet;

import com.sitestudio.escalade.model.bean.compte.Adresse;
import com.sitestudio.escalade.model.bean.referentiel.Cotation;
import com.sitestudio.escalade.model.bean.referentiel.Departement;
import com.sitestudio.escalade.model.bean.site.Secteur;
import com.sitestudio.escalade.model.bean.site.Site;
import com.sitestudio.escalade.model.bean.site.Voie;
import com.sitestudio.escalade.model.exception.FunctionalException;
import com.sitestudio.escalade.model.exception.NotFoundException;
import com.sitestudio.escalade.webapp.resource.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ServletMoreCritera")
public class ServletMoreCriteria extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        HttpSession httpSession = request.getSession();

        DepartementResource departementResource = new DepartementResource();
        CotationResource cotationResource = new CotationResource();


        try {
            List<Departement> listDepartements = departementResource.getDepartement();
            List<Cotation> listCotations = cotationResource.getCotation();

            System.out.println("Les departements sont : " + listDepartements);
            System.out.println("Les cotations sont : " + listCotations);

            httpSession.setAttribute("listDepartements",listDepartements);
            httpSession.setAttribute("listCotations",listCotations);

        } catch (NotFoundException e) {
            e.printStackTrace();
        }

        this.getServletContext().getRequestDispatcher("/WEB-INF/jsp/moreCriteria.jsp").forward(request,response);

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        Departement departement = new Departement();
        Cotation cotation = new Cotation();

        SiteResource siteResource = new SiteResource();

        HttpSession httpSession = request.getSession();

        String departementId = request.getParameter("departement");
        String cotationId = request.getParameter("cotation");

        departement.setId(Integer.parseInt(departementId));
        cotation.setId(Integer.parseInt(cotationId));

        try {
        List<Site> listSiteByCriteria = siteResource.getSite(departement,cotation);
            System.out.println("le resultat de la recherche par critère est : " + listSiteByCriteria);
            httpSession.setAttribute("listSiteByCriteria",listSiteByCriteria);
        } catch (NotFoundException e) {
            e.printStackTrace();
        }

        this.getServletContext().getRequestDispatcher("/WEB-INF/jsp/moreCriteria.jsp").forward(request,response);

    }

}
