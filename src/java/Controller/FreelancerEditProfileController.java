/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.Freelancer;
import Service.AuthUserFacade;
import Service.FreelancerFacade;
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
@WebServlet(name = "FreelancerEditProfileController", urlPatterns = {"/freelancer/profile/edit"} /*{"/edit/profile/freelancer"}*/)
public class FreelancerEditProfileController extends HttpServlet {
    
    @EJB
    private AuthUserFacade authUserFacade;
    @EJB
    private FreelancerFacade freelancerFacade;

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
                .getRequestDispatcher("/WEB-INF/freelancer/edit_profile.jsp")
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
        
        Freelancer f = (Freelancer) request.getSession().getAttribute("user");
        f.getUser().setFirstName(request.getParameter("fname"));
        f.getUser().setLastName(request.getParameter("lname"));
        f.getUser().setUserName(request.getParameter("uname"));
        f.getUser().setEmailAddress(request.getParameter("email"));
        f.getUser().setPhoneNumber(request.getParameter("phoneNo"));
        f.getUser().setPassword(request.getParameter("password"));
        f.getUser().setConfirmPass(request.getParameter("confirmPass"));
       
        
        authUserFacade.edit(f.getUser());
        freelancerFacade.edit(f);
        
        request.getSession().setAttribute("user", f);
        response.sendRedirect("/freelancer/profile/view");
    }
    
}
