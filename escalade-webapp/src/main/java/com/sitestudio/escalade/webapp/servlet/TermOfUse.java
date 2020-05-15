package com.sitestudio.escalade.webapp.servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "TermOfUse")
public class TermOfUse extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.getServletContext().getRequestDispatcher("/WEB-INF/jsp/termOfUse.jsp").forward(request,response);

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.getServletContext().getRequestDispatcher("/WEB-INF/jsp/termOfUse.jsp").forward(request,response);

    }

}
