/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.AuthUser;
import Model.Client;
import Service.AuthUserFacade;
import Service.ClientFacade;
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
@WebServlet(name = "ClientEditProfileController", urlPatterns = {"/client/profile/edit"})
public class ClientEditProfileController extends HttpServlet {

    @EJB
    private AuthUserFacade authUserFacade;
    @EJB
    private ClientFacade clientFacade;

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
                .getRequestDispatcher("/WEB-INF/client/edit_profile_client.jsp")
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
        Client c = (Client) request.getSession().getAttribute("client");
        c.getUser().setFirstName(request.getParameter("fname"));
        c.getUser().setLastName(request.getParameter("lname"));
        c.getUser().setUserName(request.getParameter("uname"));
        c.getUser().setPhoneNumber(request.getParameter("phoneNo"));
        c.getUser().setEmailAddress(request.getParameter("email"));
        c.getUser().setPassword(request.getParameter("password"));
        c.getUser().setConfirmPass(request.getParameter("confirmPass"));

        authUserFacade.edit(c.getUser());
        clientFacade.edit(c);
        
        request.getSession().setAttribute("client", c);
        response.sendRedirect("/client/profile/view");
    }

}
