package com.sitestudio.escalade.webapp.servlet;

import com.sitestudio.escalade.model.bean.compte.Compte;
import com.sitestudio.escalade.model.exception.NotFoundException;
import com.sitestudio.escalade.webapp.resource.CompteResource;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "DeleteAccount")
public class DeleteAccount extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.getServletContext().getRequestDispatcher("WEB-INF/jsp/deleteAccount").forward(request,response);

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        Compte compte = new Compte();
        CompteResource compteResource = new CompteResource();

        Integer getId = Integer.parseInt(request.getParameter("id"));
        compte.setId(getId);

        String getDelete = request.getParameter("delete");

        if (getDelete.equals("delete") || getDelete.equals("DELETE")){
            request.getServletContext().getRequestDispatcher("/WEB-INF/jsp/deleteAccount.jsp").forward(request,response);
            try {
                compteResource.deleteCompte(compte);
            } catch (NotFoundException e) {
                e.printStackTrace();
            }
        } else {
            request.getServletContext().getRequestDispatcher("/WEB-INF/jsp/parameter.jsp").forward(request,response);
        }

    }


}
