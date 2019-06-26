/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.Education;
import Model.Freelancer;
import Service.EducationFacade;
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
@WebServlet(name = "FreelancerEducationController", urlPatterns = {"/freelancer/education"})
public class FreelancerEducationController extends HttpServlet {

    @EJB
    private EducationFacade ef;
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
        getServletContext().getRequestDispatcher("/WEB-INF/freelancer/Education.jsp").forward(request, response);
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
        Education e = new Education();
        e.setCountry(request.getParameter("country"));
        e.setDegree(request.getParameter("degree"));
        e.setStartYear(request.getParameter("startYear"));
        e.setEndYear(request.getParameter("endYear"));
        e.setFreelancer(user);
        ef.create(e);

        response.sendRedirect("/freelancer/profile/view");
    }

}
