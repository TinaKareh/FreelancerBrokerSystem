/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Service.AuthUserFacade;
import Service.FreelancerFacade;
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
@WebServlet(name = "FreelancerViewProfileController", urlPatterns = {"/freelancer/profile/view"})
public class FreelancerViewProfileController extends HttpServlet {

    @EJB
    private  FreelancerFacade freelancerFacade;
   
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
        
        
         request.setAttribute("free", freelancerFacade.find(1L) );
        getServletContext()
                .getRequestDispatcher("/WEB-INF/freelancer/view_profile.jsp")
                .forward(request, response);
    }

    
    
}
