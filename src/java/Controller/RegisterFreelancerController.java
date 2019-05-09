/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Constants.UserType;
import Model.AuthUser;
import Model.Freelancer;
import Service.AuthUserFacade;
import Service.FreelancerFacade;
import java.io.IOException;
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

        auf.create(user);
        user = auf.getUserByEmailAddressAndPassword(user.getEmailAddress(), user.getPassword());
        Freelancer f = new Freelancer();
        f.setUser(user);
        facade.create(f);
        
        LOG.log(Level.INFO, user.toString());
        response.sendRedirect("/");
        
    }
    private static final Logger LOG = Logger.getLogger(RegisterFreelancerController.class.getName());

}
