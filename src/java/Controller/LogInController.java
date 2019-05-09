/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.AuthUser;
import Service.AuthUserFacade;
import Service.ClientFacade;
import Service.FreelancerFacade;
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
@WebServlet(name = "LogInController", urlPatterns = {"/login"})
public class LogInController extends HttpServlet {

    @EJB
    AuthUserFacade auth;
    @EJB
    ClientFacade client;
    @EJB
    FreelancerFacade free;

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
        request.getRequestDispatcher("/WEB-INF/Home/index.jsp").forward(request, response);
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
        AuthUser au = auth.getUserByEmailAddressAndPassword(request.getParameter("email"), request.getParameter("password"));
        if (au == null) {
            request.getRequestDispatcher("/WEB-INF/Home/index.jsp").forward(request, response);
        } else {
            HttpSession session = request.getSession(true);
            session.setAttribute("uType", au.getuType());
            switch (au.getuType()) {
                case AD:
                    session.setAttribute("user", au);
                    response.sendRedirect("/dashboard/admin");
                    break;
                case FR:
                    session.setAttribute("user", free.findByUserId(au.getUserId()));
                    response.sendRedirect("/dashboard/freelancer");
                    break;
                case CL:
                    session.setAttribute("user", client.findByUserId(au.getUserId()));
                    response.sendRedirect("/dashboard");
                    break;
                default:

            }
        }
    }

}
