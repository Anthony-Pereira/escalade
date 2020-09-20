package com.sitestudio.escalade.webapp.servlet;

import com.sitestudio.escalade.model.bean.site.Commentaire;
import com.sitestudio.escalade.model.exception.NotFoundException;
import com.sitestudio.escalade.webapp.resource.CommentaireResource;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "ServletCommentary")
public class ServletCommentary extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        HttpSession httpSession = request.getSession();

        String commentary = request.getParameter("commentary");

        Commentaire commentaire = new Commentaire();
        CommentaireResource commentaireResource = new CommentaireResource();

        if (Integer.parseInt(commentary) == 0){
                this.getServletContext().getRequestDispatcher("/WEB-INF/jsp/commentary.jsp").forward(request,response);
        } else if (Integer.parseInt(commentary) == 1){
            try {
                Boolean commentaryDeleted = commentaireResource.deleteCommentaire(commentaire);
                httpSession.setAttribute("commentaryDeleted",commentaryDeleted);
                this.getServletContext().getRequestDispatcher("/WEB-INF/jsp/commentary.jsp").forward(request,response);
            } catch (NotFoundException e) {
                e.printStackTrace();
            }
        }

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        HttpSession httpSession = request.getSession();

        String commentary = request.getParameter("commentary");

        Commentaire commentaire = new Commentaire();
        CommentaireResource commentaireResource = new CommentaireResource();

        commentaire.setCommentaire(commentary);

        try {
            Boolean commentaryModified = commentaireResource.updateCommentaire(commentaire);
            httpSession.setAttribute("commentaryModified",commentaryModified);
        } catch (NotFoundException e) {
            e.printStackTrace();
        }

        this.getServletContext().getRequestDispatcher("/WEB-INF/jsp/site.jsp").forward(request,response);

    }

}
