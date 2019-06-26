/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.AuthUser;
import Model.ContactUs;
import Model.Freelancer;
import Service.AuthUserFacade;
import Service.ContactUsFacade;
import java.io.IOException;
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
@WebServlet(name = "FreelancerGetOnlineHelp", urlPatterns = {"/get/online/help"})
public class FreelancerGetOnlineHelp extends HttpServlet {

    @EJB
    private AuthUserFacade auf;
    @EJB
    private ContactUsFacade cuf;
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
                .getRequestDispatcher("/WEB-INF/Home/online_help.jsp")
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
       
        ContactUs  contact = new ContactUs();
        contact.setFullName(request.getParameter("fname"));
        contact.setEmailAddress(request.getParameter("email"));
        contact.setPhoneNumber(request.getParameter("phoneNo"));
        contact.setComment(request.getParameter("comment"));
        
        cuf.create(contact);
        response.sendRedirect("/login");
    }

}
