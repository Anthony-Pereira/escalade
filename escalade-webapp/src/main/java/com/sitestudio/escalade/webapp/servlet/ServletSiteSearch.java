package com.sitestudio.escalade.webapp.servlet;

import com.sitestudio.escalade.model.bean.compte.Compte;
import com.sitestudio.escalade.model.bean.site.Commentaire;
import com.sitestudio.escalade.model.bean.site.Site;
import com.sitestudio.escalade.model.exception.FunctionalException;
import com.sitestudio.escalade.model.exception.NotFoundException;
import com.sitestudio.escalade.webapp.resource.CommentaireResource;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.time.LocalDateTime;
import java.util.List;

@WebServlet(name = "ServletSiteSearch")
public class ServletSiteSearch extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        HttpSession httpSession = request.getSession();

        Site site = (Site) httpSession.getAttribute("site");

        CommentaireResource commentaireResource = new CommentaireResource();

        try {
            List<Commentaire> listCommentaires = commentaireResource.getCommentaire(site);
            System.out.println("Les commentaires sont : " + listCommentaires);
            httpSession.setAttribute("listCommentaires",listCommentaires);
        } catch (NotFoundException | FunctionalException e) {
            System.out.println("ERREUR : " + e);
        }

        this.getServletContext().getRequestDispatcher("/WEB-INF/jsp/siteSearch.jsp").forward(request,response);

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

        LocalDateTime dateTime = LocalDateTime.now();

        commentaire.setCompte(compte);
        commentaire.setSite(site.getId());
        commentaire.setCommentaire(commentaireUser);
        commentaire.setDate(dateTime);

        try {
            commentaireResource.createCommentaire(commentaire);
            List<Commentaire> listCommentaires = commentaireResource.getCommentaire(site);
            System.out.println("Les commentaires sont : " + listCommentaires);
            httpSession.setAttribute("listCommentaires",listCommentaires);
        } catch (NotFoundException e) {
            e.printStackTrace();
        } catch (FunctionalException e) {
            e.printStackTrace();
        }

        httpSession.setAttribute("compte",compte);

        this.getServletContext().getRequestDispatcher("/WEB-INF/jsp/siteSearch.jsp").forward(request,response);

    }

}
