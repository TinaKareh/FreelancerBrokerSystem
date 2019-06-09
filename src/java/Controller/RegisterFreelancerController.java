/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Constants.UserType;
import Model.AuthUser;
import Model.Freelancer;
import Model.FreelancerSkills;
import Service.AuthUserFacade;
import Service.FreelancerFacade;
import Service.FreelancerSkillsFacade;
import Service.SkillFacade;
import java.io.IOException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
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
@WebServlet(name = "RegisterFreelancerController", urlPatterns = {"/register/freelancer"})
public class RegisterFreelancerController extends HttpServlet {

    @EJB
    private FreelancerFacade facade;
    @EJB
    private AuthUserFacade auf;
    @EJB
    private SkillFacade skillFacade;
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
        List skills = skillFacade.findAll();
        request.setAttribute("skills", skills);
        getServletContext()
                .getRequestDispatcher("/WEB-INF/Home/register_freelancer.jsp")
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
        AuthUser user = new AuthUser();
        user.setFirstName(request.getParameter("fname"));
        user.setLastName(request.getParameter("lname"));
        user.setUserName(request.getParameter("uname"));
        user.setEmailAddress(request.getParameter("email"));
        user.setPhoneNumber(request.getParameter("phoneNo"));
        user.setPassword(request.getParameter("password"));
        user.setConfirmPass(request.getParameter("confirmPass"));
        user.setuType(UserType.FR);

        
        user = auf.createAndReturn(user);
        //user = auf.getUserByEmailAddressAndPassword(user.getEmailAddress(), user.getPassword());
        Freelancer f = new Freelancer();
        f.setUser(user);
        f=facade.createAndReturn(f);
        //LOG.log(Level.INFO,f.toString());
        for(String val: request.getParameterValues("skill")){
            FreelancerSkills fskill = new FreelancerSkills();
            fskill.setF(f);
            fskill.setS(skillFacade.find(Long.parseLong(val.replace("", ""))));
            skillsFacade.create(fskill);
                   // LOG.log(Level.INFO, val);

        }
        response.sendRedirect("/");
        
    }
    private static final Logger LOG = Logger.getLogger(RegisterFreelancerController.class.getName());

}
