/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.Freelancer;
import Service.TaskSkillFacade;
import java.io.IOException;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.hibernate.Hibernate;

/**
 *
 * @author GraceTina
 */
@WebServlet(name = "FreelancerDashboardController", urlPatterns = {"/dashboard/freelancer"})
public class FreelancerDashboardController extends HttpServlet {

    @EJB
    private TaskSkillFacade taskSkillFacade;

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
         HttpServletRequest httpReq = (HttpServletRequest) request;
        HttpSession session = httpReq.getSession();
        Freelancer freelancer = (Freelancer) session.getAttribute("user");
       // List<Task> tasks = ;
         Hibernate.initialize(taskSkillFacade.relevantTasks(freelancer.getSkills()));
        request.setAttribute("tasks", taskSkillFacade.relevantTasks(freelancer.getSkills()));
        getServletContext()
                .getRequestDispatcher("/WEB-INF/freelancer/freelancer_dashboard.jsp")
                .forward(request, response);
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
       
        

    }

}
