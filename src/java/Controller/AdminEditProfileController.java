/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.Administrator;
import Model.AuthUser;
import Service.AdministratorFacade;
import Service.AuthUserFacade;
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
@WebServlet(name = "AdminEditProfileController", urlPatterns = {"/admin/edit/profile"})
public class AdminEditProfileController extends HttpServlet {

    @EJB
    private AuthUserFacade authUserFacade;
    @EJB
    private AdministratorFacade administratorFacade;

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
        getServletContext().getRequestDispatcher("/WEB-INF/admin/edit_profile_admin.jsp").forward(request, response);
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

        AuthUser user = (AuthUser) request.getSession().getAttribute("user");
        user.setFirstName(request.getParameter("fname"));
        user.setLastName(request.getParameter("lname"));
        user.setEmailAddress(request.getParameter("email"));
        user.setUserName(request.getParameter("uname"));
        user.setPhoneNumber(request.getParameter("phoneNo"));
        user.setPassword(request.getParameter("password"));
        user.setConfirmPass(request.getParameter("confirmPass"));

        authUserFacade.edit(user);
        // administratorFacade.edit(a);
        request.getSession().setAttribute("user", user);
        response.sendRedirect("/admin/profile/view");

    }

}
