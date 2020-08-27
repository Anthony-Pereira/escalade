package com.sitestudio.escalade.webapp.servlet;

import com.sitestudio.escalade.model.bean.site.Site;
import com.sitestudio.escalade.model.exception.NotFoundException;
import com.sitestudio.escalade.webapp.resource.SiteResource;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ServletSite")
public class ServletSite extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        HttpSession httpSession = request.getSession();

        SiteResource siteResource = new SiteResource();

        try {
            List<Site> listSites = siteResource.getSite();
            System.out.println("Les sites sont : " + listSites);
            httpSession.setAttribute("listSites",listSites);
        } catch (NotFoundException e) {
            System.out.println("ERREUR : " + e);
        }

            this.getServletContext().getRequestDispatcher("/WEB-INF/jsp/site.jsp").forward(request,response);

    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        HttpSession httpSession = request.getSession();

        Site site = new Site();
        SiteResource siteResource = new SiteResource();

        String siteId = request.getParameter("site");

        try {
            site = siteResource.getSite(Integer.parseInt(siteId));
        } catch (NotFoundException e) {
            System.out.println("ERREUR : " + e);
        }

        httpSession.setAttribute("siteTitle",site.getNom());
        System.out.println("test 1 " + site.getNom());
        httpSession.setAttribute("siteDescription",site.getDescription());
        System.out.println("test 2 " + site.getDescription());

            this.getServletContext().getRequestDispatcher("/WEB-INF/jsp/siteSearch.jsp").forward(request,response);

    }

}
