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

@WebServlet(name = "ServletTopoList")
public class ServletTopoList extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        Topo topo = new Topo();
        TopoResource topoResource = new TopoResource();

        HttpSession httpSession = request.getSession();

        String topoDisponible = request.getParameter("topoDisponible");
        String topoIndisponible = request.getParameter("topoIndisponible");

        Compte compte = (Compte) httpSession.getAttribute("compte");

        try {
            List<Topo> listTopos = topoResource.getTopo(compte);
            System.out.println("La liste de topo est : " + listTopos);
            httpSession.setAttribute("listTopos",listTopos);
        } catch (NotFoundException e) {
            e.printStackTrace();
        }

        if (topoDisponible != null){
            try {
            topo = topoResource.getTopo(Integer.parseInt(topoDisponible));
            } catch (NotFoundException e) {
                e.printStackTrace();
            }

            topo.setReservation(0);

        } else if (topoIndisponible != null){
            try {
                topo = topoResource.getTopo(Integer.parseInt(topoIndisponible));
            } catch (NotFoundException e) {
                e.printStackTrace();
            }

            topo.setReservation(1);

        }

        try {
            topoResource.updateTopo(topo);
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

        Topo topo = new Topo();
        TopoResource topoResource = new TopoResource();

        HttpSession httpSession = request.getSession();

        String confirmation = request.getParameter("confirmation");

        Compte compte = (Compte) httpSession.getAttribute("compte");

        try {
            topo = topoResource.getTopo(Integer.parseInt(confirmation));
        } catch (NotFoundException e) {
            e.printStackTrace();
        }

        topo.setId(Integer.parseInt(confirmation));
        topo.setNom(topo.getNom());
        topo.setDescription(topo.getDescription());
        topo.setLieu(topo.getLieu());
        topo.setParution(topo.getParution());
        topo.setEmprunteur(topo.getEmprunteur());
        topo.setCompte(compte);
        topo.setReservation(1);

        try {
            topoResource.updateTopo(topo);
        } catch (NotFoundException e) {
            e.printStackTrace();
        }

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

}
