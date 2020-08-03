package com.sitestudio.escalade.webapp.servlet;

import com.sitestudio.escalade.model.bean.referentiel.Cotation;
import com.sitestudio.escalade.model.bean.site.Secteur;
import com.sitestudio.escalade.model.bean.site.Voie;
import com.sitestudio.escalade.model.exception.NotFoundException;
import com.sitestudio.escalade.webapp.resource.CotationResource;
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

@WebServlet(name = "ServletMyWay")
public class ServletMyWay extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        HttpSession httpSession = request.getSession();

        SecteurResource secteurResource = new SecteurResource();
        CotationResource cotationResource = new CotationResource();

        try {
            List<Secteur> listSecteur = secteurResource.getSecteur();
            List<Cotation> listCotation = cotationResource.getCotation();
            System.out.println("Le résultat est : " + listSecteur);
            System.out.println("Le résultat est : " + listCotation);
            httpSession.setAttribute("listSecteur",listSecteur);
            httpSession.setAttribute("listCotation",listCotation);

        } catch (NotFoundException e) {
            System.out.println("ERREUR: " + e);
        }

        if (httpSession.getAttribute("compte") != null) {
            this.getServletContext().getRequestDispatcher("/WEB-INF/jsp/myWay.jsp").forward(request,response);
        } else {
            this.getServletContext().getRequestDispatcher("/WEB-INF/jsp/signIn.jsp").forward(request,response);
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        HttpSession httpSession = request.getSession();

        Secteur secteur = new Secteur();
        SecteurResource secteurResource = new SecteurResource();

        Voie voie = new Voie();
        VoieResource voieResource = new VoieResource();

        Cotation cotation = new Cotation();
        CotationResource cotationResource = new CotationResource();

        cotation.getDifficulte();

        String secteurId = request.getParameter("secteur");
        String numero = request.getParameter("numero");
        String nom = request.getParameter("numero");
        String description = request.getParameter("numero");
        String longueur = request.getParameter("numero");
        String difficulte = request.getParameter("numero");

        //String photo = request.getParameter("numero");

        try {
            secteur = secteurResource.getSecteur(Integer.parseInt(secteurId));
        } catch (NotFoundException e) {
            e.printStackTrace();
        }

        voie.setNumero(Integer.parseInt(numero));
        voie.setNom(nom);
        voie.setDescription(description);
        voie.setLongueur(Integer.parseInt(longueur));
        voie.setDifficulte(difficulte);
        voie.setSecteur(secteur);

        //voie.setUrl(photo);

        try {
            voieResource.createVoie(voie);
        } catch (NotFoundException e) {
            e.printStackTrace();
        }

        if (httpSession.getAttribute("compte") != null) {
            this.getServletContext().getRequestDispatcher("/WEB-INF/jsp/myWay").forward(request, response);
        } else {
            this.getServletContext().getRequestDispatcher("/WEB-INF/jsp/signIn.jsp").forward(request,response);
        }

    }

}
