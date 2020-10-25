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

        Commentaire commentaire = new Commentaire();
        CommentaireResource commentaireResource = new CommentaireResource();

        SiteResource siteResource = new SiteResource();

        Site site = new Site();

        String nouveauCommentaire = request.getParameter("nouveauCommentaire");

        String modifierCommentaire = request.getParameter("modifierCommentaire");
        String commentaireAEditer = request.getParameter("commentaireAEditer");

        String supprimerCommentaire = request.getParameter("supprimerCommentaire");

        if (nouveauCommentaire != null) {

            String siteId = request.getParameter("site");

            site.setId(Integer.parseInt(siteId));

            try {
                site = siteResource.getSite(site.getId());
                httpSession.setAttribute("site", site);
            } catch (NotFoundException e) {
                System.out.println("Le site est introuvable. Erreur : " + e);
            }

            LocalDateTime dateTime = LocalDateTime.now();

            commentaire.setCompte(compte);
            commentaire.setSite(site);
            commentaire.setCommentaire(nouveauCommentaire);
            commentaire.setDate(dateTime);

            httpSession.setAttribute("commentaire",commentaire);

            try {
                commentaireResource.createCommentaire(commentaire);
            } catch (NotFoundException | FunctionalException e) {
                System.out.println("Le commentaire n'a pas été créer. Erreur : " + e);
            }

        } else if (modifierCommentaire != null){

            try {
                commentaire = commentaireResource.getCommentaire(Integer.parseInt(modifierCommentaire));

                Commentaire commentaire1;

                commentaire1 = commentaire;

                httpSession.setAttribute("commentaire",commentaire1);

                httpSession.setAttribute("site",commentaire1.getSite());
                System.out.println("Le site est : " + commentaire1.getSite());

            } catch (NotFoundException | FunctionalException e) {
                System.out.println("Le commentaire est introuvable : Erreur : " + e);
            }

            if (commentaireAEditer != null){

                commentaire.setId(Integer.parseInt(modifierCommentaire));

                try {
                    commentaire = commentaireResource.getCommentaire(commentaire.getId());
                } catch (NotFoundException e) {
                    System.out.println("Le commentaire est introuvable. Erreur : " + e);
                } catch (FunctionalException e) {
                    System.out.println("Le commentaire est introuvable. Erreur : " + e);
                }

                commentaire.setCommentaire(commentaireAEditer);

                try {
                    commentaireResource.updateCommentaire(commentaire);
                } catch (NotFoundException e) {
                    e.printStackTrace();
                }

                httpSession.setAttribute("site",commentaire.getSite());
                System.out.println("Le site est : " + site);

            } else {

                commentaire.setId(Integer.parseInt(modifierCommentaire));

                try {
                    Commentaire editerCommentaire = commentaireResource.getCommentaire(commentaire.getId());
                    httpSession.setAttribute("editerCommentaire", editerCommentaire);
                    httpSession.setAttribute("commentaire", editerCommentaire);
                } catch (NotFoundException | FunctionalException e) {
                    System.out.println("Le commentaire n'a pas été modifier. Erreur : " + e);
                }
            }

        } else if (supprimerCommentaire != null){

            try {
                commentaire = commentaireResource.getCommentaire(Integer.parseInt(supprimerCommentaire));

                Commentaire commentaire1;

                commentaire1 = commentaire;

                httpSession.setAttribute("commentaire",commentaire1);

                httpSession.setAttribute("site",commentaire1.getSite());
                System.out.println("Le site est : " + commentaire1.getSite());

            } catch (NotFoundException | FunctionalException e) {
                System.out.println("Le commentaire est introuvable : Erreur : " + e);
            }

            try {
                commentaireResource.deleteCommentaire(commentaire);
            } catch (NotFoundException e) {
                System.out.println("Le commentaire n'a pas été supprimé. Erreur : " + e);
            }

        }

                Commentaire commentaire1 = (Commentaire) httpSession.getAttribute("commentaire");

        try {
            List<Commentaire> listCommentaires = commentaireResource.getCommentaire(commentaire1.getSite());
            httpSession.setAttribute("listCommentaires",listCommentaires);
            System.out.println("Les commentaires sont : " + listCommentaires);
        } catch (NotFoundException e) {
            e.printStackTrace();
        } catch (FunctionalException e) {
            e.printStackTrace();
        }

        this.getServletContext().getRequestDispatcher("/WEB-INF/jsp/site.jsp").forward(request,response);

    }

}
