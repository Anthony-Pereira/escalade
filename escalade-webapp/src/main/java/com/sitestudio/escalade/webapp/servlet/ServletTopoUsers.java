package com.sitestudio.escalade.webapp.servlet;

import com.sitestudio.escalade.model.bean.topo.Topo;
import com.sitestudio.escalade.model.exception.NotFoundException;
import com.sitestudio.escalade.webapp.resource.TopoResource;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ServletTopoUsers")
public class ServletTopoUsers extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        HttpSession httpSession = request.getSession();

        TopoResource topoResource = new TopoResource();

        try {
            List<Topo> listAllTopos = topoResource.getTopo();
            System.out.println("La liste de tout les topos est : " + listAllTopos);
            httpSession.setAttribute("listAllTopos",listAllTopos);
        } catch (NotFoundException e) {
            e.printStackTrace();
        }


        if (httpSession.getAttribute("compte") != null) {
            this.getServletContext().getRequestDispatcher("/WEB-INF/jsp/topoUsers.jsp").forward(request, response);
        } else {
            this.getServletContext().getRequestDispatcher("/WEB-INF/jsp/signIn.jsp").forward(request,response);
        }

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        HttpSession httpSession = request.getSession();

        if (httpSession.getAttribute("compte") != null) {
            this.getServletContext().getRequestDispatcher("/WEB-INF/jsp/topoUsers.jsp").forward(request, response);
        } else {
            this.getServletContext().getRequestDispatcher("/WEB-INF/jsp/signIn.jsp").forward(request,response);
        }

    }

}
