/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.Client;
import Model.StatusReport;
import Service.ClientFacade;
import Service.StatusReportFacade;
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
@WebServlet(name = "ClientViewStatusReportController", urlPatterns = {"/client/view/status"})
public class ClientViewStatusReportController extends HttpServlet {

    @EJB
    private StatusReportFacade  reportFacade;
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
        Client client = (Client)request.getAttribute("user");
        List<StatusReport> reports = reportFacade.getStatusByClient(client);
        request.setAttribute("reports", reports);
        getServletContext()
                .getRequestDispatcher("/WEB-INF/client/view_report.jsp")
                .forward(request, response);
    }

   
   
}
