package com.sitestudio.escalade.webapp.servlet;

import com.sitestudio.escalade.model.bean.compte.Compte;
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

@WebServlet(name = "ServletMyTopo")
public class ServletMyTopo extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        HttpSession httpSession = request.getSession();

        TopoResource topoResource = new TopoResource();

        Compte compte = (Compte) httpSession.getAttribute("compte");

        try {
            List<Topo> listTopos = topoResource.getTopo(compte);
            System.out.println("La liste de topo est : " + listTopos);
            httpSession.setAttribute("listTopos",listTopos);
        } catch (NotFoundException e) {
            e.printStackTrace();
        }

        if (httpSession.getAttribute("compte") != null) {
            this.getServletContext().getRequestDispatcher("/WEB-INF/jsp/myTopo.jsp").forward(request,response);
        } else {
            this.getServletContext().getRequestDispatcher("/WEB-INF/jsp/signIn.jsp").forward(request,response);
        }

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        HttpSession httpSession = request.getSession();

        httpSession.setAttribute("confirmation",true);

        Compte compte = (Compte) httpSession.getAttribute("compte");

        Topo topo = new Topo();
        TopoResource topoResource = new TopoResource();

        String nom = request.getParameter("nom");
        String description = request.getParameter("description");
        String lieu = request.getParameter("lieu");
        String parution = request.getParameter("parution");

        topo.setNom(nom);
        topo.setDescription(description);
        topo.setLieu(lieu);
        topo.setParution(Integer.parseInt(parution));
        topo.setReservation(false);
        topo.setCompte(compte);

        try {
            topoResource.createTopo(topo);
            List<Topo> listTopos = topoResource.getTopo(compte);
            System.out.println("La liste de topo est : " + listTopos);
            httpSession.setAttribute("listTopos",listTopos);
        } catch (NotFoundException e) {
            e.printStackTrace();
        }

        if (httpSession.getAttribute("compte") != null) {
            this.getServletContext().getRequestDispatcher("/WEB-INF/jsp/myTopo.jsp").forward(request,response);
        } else {
            this.getServletContext().getRequestDispatcher("/WEB-INF/jsp/signIn.jsp").forward(request,response);
        }
    }

}
