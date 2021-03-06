/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.ProjectReport;
import Service.ProjectReportFacade;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
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
@WebServlet(name = "AdminViewProjectReport", urlPatterns = {"/admin/view/project"})
public class AdminViewProjectReport extends HttpServlet {

    @EJB
    private ProjectReportFacade prf;

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
        List<ProjectReport> reports = prf.findAll();//whats wrong with it doesnt get anything from database
        request.setAttribute("reports", reports);
        getServletContext()
                .getRequestDispatcher("/WEB-INF/admin/view_reports.jsp")
                .forward(request, response);
    }

}
