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
import java.util.List;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.transaction.Transactional;
import org.hibernate.Hibernate;

/**
 *
 * @author GraceTina
 */
@Transactional
@WebServlet(name = "FreelancerViewProfileController", urlPatterns = {"/freelancer/profile/view"})
public class FreelancerViewProfileController extends HttpServlet {

    @EJB
    private FreelancerFacade freelancerFacade;
    @EJB
    private EducationFacade educationFacade;

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
                 //Set<Education> list = freelancer.getEducation();
                Hibernate.initialize(freelancer.getEducation());
                request.setAttribute("education", freelancer.getEducation());
        //Set<Experience> set = freelancer.getExperience();
        Hibernate.initialize(freelancer.getExperience());
        request.setAttribute("experience", freelancer.getExperience());
        //request.setAttribute("free", freelancerFacade.find(1L));
        getServletContext()
                .getRequestDispatcher("/WEB-INF/freelancer/view_profile.jsp")
                .forward(request, response);
    }

}
