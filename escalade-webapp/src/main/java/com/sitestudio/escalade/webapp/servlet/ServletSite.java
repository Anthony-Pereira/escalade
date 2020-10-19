package com.sitestudio.escalade.webapp.servlet;

import com.sitestudio.escalade.model.bean.compte.Compte;
import com.sitestudio.escalade.model.bean.site.Commentaire;
import com.sitestudio.escalade.model.bean.site.Secteur;
import com.sitestudio.escalade.model.bean.site.Site;
import com.sitestudio.escalade.model.exception.FunctionalException;
import com.sitestudio.escalade.model.exception.NotFoundException;
import com.sitestudio.escalade.webapp.resource.CommentaireResource;
import com.sitestudio.escalade.webapp.resource.CompteResource;
import com.sitestudio.escalade.webapp.resource.SecteurResource;
import com.sitestudio.escalade.webapp.resource.SiteResource;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.time.LocalDateTime;
import java.util.List;

@WebServlet(name = "ServletSite")
public class ServletSite extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        HttpSession httpSession = request.getSession();

        Compte compte = (Compte) httpSession.getAttribute("compte");

        Site site = new Site();
        SiteResource siteResource = new SiteResource();

        CompteResource compteResource = new CompteResource();
        CommentaireResource commentaireResource = new CommentaireResource();
        SecteurResource secteurResource = new SecteurResource();

        String siteId = request.getParameter("site");

            if (compte != null) {
                try {
                    compte = compteResource.getCompte(compte.getId());
                    httpSession.setAttribute("compte",compte);
                    System.out.println("Le compte : " + compte);
                } catch (NotFoundException e) {
                    System.out.println("Le compte est introuvable. Erreur : " + e);

                }
            }

            if (siteId.equals("all")) {

                try {
                    List<Site> listSites = siteResource.getSite();
                    request.setAttribute("listSites", listSites);
                    System.out.println("La liste de site est : " + listSites);
                } catch (NotFoundException e) {
                    System.out.println("La liste de site est introuvable. Erreur : " + e);
                }
                try {
                    List<Secteur> listSecteurs = secteurResource.getSecteur();
                    request.setAttribute("listSecteurs", listSecteurs);
                    System.out.println("La liste des secteurs du site est : " + listSecteurs);
                } catch (NotFoundException e) {
                    System.out.println("La liste des secteurs du site est introuvable. Erreur : " + e);
                }
                try {
                    List<Commentaire> listCommentaires = commentaireResource.getCommentaire();
                    request.setAttribute("listCommentaires", listCommentaires);
                    System.out.println("La liste des commentaires du site est : " + listCommentaires);
                } catch (NotFoundException e) {
                    System.out.println("La liste des commentaires du site est. Erreur : " + e);
                } catch (FunctionalException e) {
                    System.out.println("La liste des commentaires du site est. Erreur fonctionnelle : " + e);
                }

            } else {

                try {
                    site = siteResource.getSite(Integer.parseInt(siteId));
                    request.setAttribute("site",site);
                    System.out.println("Le site est : " + site);
                } catch (NotFoundException e) {
                    System.out.println("Le site est introuvable. Erreur : " + e);
                }

                try {
                    List<Secteur> listSecteurs = secteurResource.getSecteur(site);
                    httpSession.setAttribute("listSecteurs", listSecteurs);
                    System.out.println("La liste des secteurs du site est : " + listSecteurs);
                } catch (NotFoundException e) {
                    System.out.println("La liste des secteurs du site est introuvable. Erreur : " + e);
                }

                try {
                    List<Commentaire> listCommentaires = commentaireResource.getCommentaire(site);
                    httpSession.setAttribute("listCommentaires", listCommentaires);
                    System.out.println("La liste des commentaires du site est : " + listCommentaires);
                } catch (NotFoundException e) {
                    System.out.println("La liste des commentaires du site est introuvable. Erreur : " + e);
                } catch (FunctionalException e) {
                    System.out.println("La liste des commentaires du site est introuvable. Erreur fonctionnelle : " + e);

                }

            }

        this.getServletContext().getRequestDispatcher("/WEB-INF/jsp/site.jsp").forward(request,response);

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        HttpSession httpSession = request.getSession();

        Compte compte = (Compte) httpSession.getAttribute("compte");

        Site site = (Site) httpSession.getAttribute("site");

        Commentaire commentaire = new Commentaire();
        CommentaireResource commentaireResource = new CommentaireResource();

        String commentaireUser = request.getParameter("commentaire");
        String modifier = request.getParameter("modifier");
        String supprimer = request.getParameter("supprimer");
        String commentaireModified = request.getParameter("commentaireModified");

        if (commentaireUser != null){

            LocalDateTime dateTime = LocalDateTime.now();

            commentaire.setCompte(compte);
            commentaire.setSite(site.getId());
            commentaire.setCommentaire(commentaireUser);
            commentaire.setDate(dateTime);

            try {
                commentaireResource.createCommentaire(commentaire);
            } catch (NotFoundException | FunctionalException e) {
                System.out.println("Le commentaire n'a pas été créer. Erreur : " + e);
            }

            httpSession.setAttribute("compte",compte);

        } else if (modifier != null || commentaireModified != null){

            try {
                commentaire = commentaireResource.getCommentaire(Integer.parseInt(modifier));
            } catch (NotFoundException | FunctionalException e) {
                System.out.println("Le commentaire est introuvable : Erreur : " + e);
            }

                if (modifier != null){
                    httpSession.setAttribute("editComment",commentaire);
                    httpSession.setAttribute("commentaire",commentaire);
                } else {
                    commentaire.setCommentaire(commentaireModified);

                    try {
                        commentaireResource.updateCommentaire(commentaire);
                    } catch (NotFoundException e) {
                        System.out.println("Le commentaire a bien été modifié. Message : " + e);
                    }

                }

        } else if (supprimer != null){

            try {
            commentaire = commentaireResource.getCommentaire(Integer.parseInt(supprimer));
            } catch (NotFoundException | FunctionalException e) {
                System.out.println("Le commentaire est introuvable : Erreur : " + e);
            }

            try {
                commentaireResource.deleteCommentaire(commentaire);
            } catch (NotFoundException e) {
                System.out.println("Le commentaire n'a pas été supprimé. Erreur : " + e);
            }

        }

        try {
            List<Commentaire> listCommentaires = commentaireResource.getCommentaire(site);

            System.out.println("Les commentaires sont : " + listCommentaires);
            httpSession.setAttribute("listCommentaires",listCommentaires);

        } catch (NotFoundException | FunctionalException e) {
            System.out.println("Les commentaires n'existent. Erreur : " + e);
        }

        this.getServletContext().getRequestDispatcher("/WEB-INF/jsp/site.jsp").forward(request,response);

    }

}
