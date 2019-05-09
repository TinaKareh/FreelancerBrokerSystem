/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Constants.UserType;
import Model.AuthUser;
import Model.Client;
import Service.AuthUserFacade;
import Service.ClientFacade;
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
@WebServlet(name = "RegisterClientController", urlPatterns = {"/register/client"})
public class RegisterClientController extends HttpServlet {

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
                .getRequestDispatcher("/WEB-INF/Home/register_client.jsp")
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
        AuthUser authUser = new AuthUser();
        authUser.setFirstName(request.getParameter("fname"));
        authUser.setLastName(request.getParameter("lname"));
        authUser.setUserName(request.getParameter("uname"));
        authUser.setEmailAddress(request.getParameter("email"));
        authUser.setPhoneNumber(request.getParameter("phoneNo"));
        authUser.setPassword(request.getParameter("password"));
        authUser.setConfirmPass(request.getParameter("confirmPass"));
        authUser.setuType(UserType.CL);

        authUserFacade.create(authUser);
        authUser = authUserFacade.getUserByEmailAddressAndPassword(authUser.getEmailAddress(), authUser.getPassword());

        Client client = new Client();
        client.setUser(authUser);
        clientFacade.create(client);

        LOG.log(Level.INFO, authUser.toString());
        response.sendRedirect("/");

    }
    private static final Logger LOG = Logger.getLogger(RegisterClientController.class.getName());

}
