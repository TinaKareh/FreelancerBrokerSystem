/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.Experience;
import Model.Freelancer;
import Service.ExperienceFacade;
import Service.FreelancerFacade;
import java.io.IOException;
import java.io.PrintWriter;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author GraceTina
 */
@WebServlet(name = "FreelancerExperienceController", urlPatterns = {"/freelancer/experience"})
public class FreelancerExperienceController extends HttpServlet {

    @EJB
    private ExperienceFacade ef;
    @EJB
    private FreelancerFacade facade;

    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        getServletContext().getRequestDispatcher("/WEB-INF/freelancer/experience.jsp").forward(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Freelancer user = (Freelancer) request.getAttribute("user");

        Experience e = new Experience();
        e.setTitle(request.getParameter("title"));
        e.setCompany(request.getParameter("company"));
        e.setStartYear(request.getParameter("startYear"));
        e.setEndYear(request.getParameter("endYear"));
        e.setSummary(request.getParameter("summary"));
        e.setF(user);
        ef.create(e);


        response.sendRedirect("/freelancer/profile/view");
    }

}
