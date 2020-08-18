package com.sitestudio.escalade.webapp.servlet;

import com.sitestudio.escalade.model.bean.referentiel.Cotation;
import com.sitestudio.escalade.model.bean.site.Secteur;
import com.sitestudio.escalade.model.bean.site.Site;
import com.sitestudio.escalade.model.bean.site.Voie;
import com.sitestudio.escalade.model.exception.NotFoundException;
import com.sitestudio.escalade.webapp.resource.CotationResource;
import com.sitestudio.escalade.webapp.resource.SecteurResource;
import com.sitestudio.escalade.webapp.resource.SiteResource;
import com.sitestudio.escalade.webapp.resource.VoieResource;

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

        SiteResource siteResource = new SiteResource();
        CotationResource cotationResource = new CotationResource();
        SecteurResource secteurResource = new SecteurResource();
        VoieResource voieResource = new VoieResource();

        try {
            List<Site> listSite = siteResource.getSite();
            List<Cotation> listCotation = cotationResource.getCotation();
            List<Secteur> listSecteur = secteurResource.getSecteur();
            List<Voie> listVoie = voieResource.getVoie();
            System.out.println("Les sites sont : " + listSite);
            System.out.println("Les cotations sont : " + listCotation);
            System.out.println("Les secteurs sont : " + listSecteur);
            System.out.println("Les voies sont : " + listVoie);
            httpSession.setAttribute("listSite",listSite);
            httpSession.setAttribute("listCotation",listCotation);
            httpSession.setAttribute("listSecteur",listSecteur);
            httpSession.setAttribute("listVoie",listVoie);
        } catch (NotFoundException e) {
            e.printStackTrace();
        }

        this.getServletContext().getRequestDispatcher("/WEB-INF/jsp/moreCriteria.jsp").forward(request,response);

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        this.getServletContext().getRequestDispatcher("/WEB-INF/jsp/moreCriteria.jsp").forward(request,response);

    }

}
