/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.Education;
import Model.Experience;
import Model.Freelancer;
import Model.FreelancerSkill;
import Service.EducationFacade;
import Service.ExperienceFacade;
import Service.FreelancerFacade;
import Service.FreelancerSkillFacade;
import java.io.IOException;
import java.util.List;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author GraceTina
 */
@WebServlet(name = "FreelancerViewProfileController", urlPatterns = {"/freelancer/profile/view"})
public class FreelancerViewProfileController extends HttpServlet {

    @EJB
    private FreelancerFacade freelancerFacade;
    @EJB
    private EducationFacade educationFacade;
    @EJB
    private FreelancerSkillFacade facade;
@EJB
private ExperienceFacade experienceFacade;
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
        List<Education> educations = educationFacade.getEducationByFreelancer(freelancer);
        request.setAttribute("educations", educations);
        List<Experience> experiences = experienceFacade.getExperienceByFreelancer(freelancer);
        request.setAttribute("experiences", experiences);
        List<FreelancerSkill> skills = facade.freelancerSkills(freelancer);
        request.setAttribute("skills", skills);
        getServletContext()
                .getRequestDispatcher("/WEB-INF/freelancer/view_profile.jsp")
                .forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        

    }

}
