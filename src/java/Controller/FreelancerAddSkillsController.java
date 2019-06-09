/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.Freelancer;
import Model.FreelancerSkills;
import Service.FreelancerFacade;
import Service.FreelancerSkillsFacade;
import java.io.IOException;
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
@WebServlet(name = "FreelancerAddSkillsController", urlPatterns = {"/freelancer/add/skills"})
public class FreelancerAddSkillsController extends HttpServlet {

    @EJB
    private FreelancerFacade facade;
    @EJB
    private FreelancerSkillsFacade skillsFacade;

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
        getServletContext().getRequestDispatcher("/WEB-INF/freelancer/skills.jsp").forward(request, response);
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
        FreelancerSkills freelancer = new FreelancerSkills();
        freelancer.setF(user);
        skillsFacade.create(freelancer);

        response.sendRedirect("/freelancer/profile/view");

    }
}
