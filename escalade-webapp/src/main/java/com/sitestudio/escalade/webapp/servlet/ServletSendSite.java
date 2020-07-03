package com.sitestudio.escalade.webapp.servlet;

import com.sitestudio.escalade.model.bean.compte.Adresse;
import com.sitestudio.escalade.model.bean.site.Secteur;
import com.sitestudio.escalade.model.bean.site.Site;
import com.sitestudio.escalade.model.bean.site.UrlPhoto;
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

@WebServlet(name = "ServletSendSite")
public class ServletSendSite extends HttpServlet {


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        HttpSession httpSession = request.getSession();
        httpSession.getAttribute("compte");

        if (httpSession.getAttribute("compte") != null) {
            this.getServletContext().getRequestDispatcher("/WEB-INF/jsp/sendSite.jsp").forward(request,response);
        } else {
            this.getServletContext().getRequestDispatcher("/WEB-INF/jsp/signIn.jsp").forward(request,response);
        }

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        Adresse adresse = new Adresse();
        AdresseResource adresseResource = new AdresseResource();

        Site site = new Site();
        SiteResource siteResource = new SiteResource();

        Secteur secteur = new Secteur();
        SecteurResource secteurResource = new SecteurResource();

        Voie voie = new Voie();
        VoieResource voieResource = new VoieResource();

        UrlPhoto urlPhoto = new UrlPhoto();
        UrlPhotoResource urlPhotoResource = new UrlPhotoResource();

        String numeroAdresse = request.getParameter("numeroAdresse");
        String rueAdresse = request.getParameter("rueAdresse");
        String codePostalAdresse = request.getParameter("codePostalAdresse");
        String villeAdresse = request.getParameter("villeAdresse");

        adresse.setNumero(numeroAdresse);
        adresse.setRue(rueAdresse);
        adresse.setCodePostal(codePostalAdresse);
        adresse.setVille(villeAdresse);

        String nomSite = request.getParameter("nomSite");
        String descriptionSite = request.getParameter("descriptionSite");

        site.setNom(nomSite);
        site.setDescription(descriptionSite);

        String nomSecteur = request.getParameter("rueSecteur");
        String descriptionSecteur = request.getParameter("descriptionSecteur");

        secteur.setNom(nomSecteur);
        secteur.setDescription(descriptionSecteur);

        String numeroVoie = request.getParameter("numeroVoie");
        String nomVoie = request.getParameter("nomVoie");
        String descriptionVoie = request.getParameter("descriptionVoie");
        String longueurVoie = request.getParameter("longueurVoie");
        String difficulteVoie = request.getParameter("difficulteVoie");

        voie.setNumero(Integer.parseInt(numeroVoie));
        voie.setNom(nomVoie);
        voie.setDescription(descriptionVoie);
        voie.setLongueur(Integer.parseInt(longueurVoie));
        voie.setDifficulte(difficulteVoie);

        String  url = request.getParameter("urlPhoto");
        String descriptionUrl = request.getParameter("descriptionUrl");

        urlPhoto.setUrl(url);
        urlPhoto.setDescription(descriptionUrl);

        try {
            adresseResource.createAdresse(adresse);
            siteResource.createSite(site);
            secteurResource.createSecteur(secteur);
            voieResource.createVoie(voie);
            urlPhotoResource.createUrlPhoto(urlPhoto);
        } catch (NotFoundException | FunctionalException e) {
            System.out.println("ERREUR:" + e);
        }

        this.getServletContext().getRequestDispatcher("/WEB-INF/jsp/sendSite.jsp").forward(request,response);

    }

}
