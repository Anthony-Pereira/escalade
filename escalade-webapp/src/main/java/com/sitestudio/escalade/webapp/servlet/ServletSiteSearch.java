package com.sitestudio.escalade.webapp.servlet;

import com.sitestudio.escalade.model.bean.site.Commentaire;
import com.sitestudio.escalade.model.exception.FunctionalException;
import com.sitestudio.escalade.model.exception.NotFoundException;
import com.sitestudio.escalade.webapp.resource.CommentaireResource;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.time.LocalDateTime;

@WebServlet(name = "ServletSiteSearch")
public class ServletSiteSearch extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        this.getServletContext().getRequestDispatcher("/WEB-INF/jsp/siteSearch.jsp").forward(request,response);

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        Commentaire commentaire = new Commentaire();
        CommentaireResource commentaireResource = new CommentaireResource();

        String commentaireUser = request.getParameter("commentaire");

        LocalDateTime dateTime = LocalDateTime.now();

        commentaire.setCommentaire(commentaireUser);
        commentaire.setDate(dateTime);

        try {
            commentaireResource.createCommentaire(commentaire);
        } catch (NotFoundException e) {
            e.printStackTrace();
        } catch (FunctionalException e) {
            e.printStackTrace();
        }

        this.getServletContext().getRequestDispatcher("/WEB-INF/jsp/siteSearch.jsp").forward(request,response);

    }

}
