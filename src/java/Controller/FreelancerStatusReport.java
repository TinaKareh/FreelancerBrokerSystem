/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.Client;
import Model.Freelancer;
import Model.StatusReport;
import Model.Task;
import Service.ClientFacade;
import Service.StatusReportFacade;
import Service.TaskFacade;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
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
@WebServlet(name = "FreelancerStatusReport", urlPatterns = {"/freelancer/status/report"})
public class FreelancerStatusReport extends HttpServlet {

    @EJB
    private StatusReportFacade reportFacade;
    @EJB
    private TaskFacade taskFacade;
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
        Task task = taskFacade.find(Long.parseLong(request.getParameter("taskId")));
        request.setAttribute("task", task);
        getServletContext()
                .getRequestDispatcher("/WEB-INF/freelancer/status_report.jsp")
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
        String[] dinVals = request.getParameter("sdate").split("-");

        Freelancer freelancer = (Freelancer) request.getAttribute("user");
        Task task = taskFacade.find(Long.parseLong(request.getParameter("jobId")));
        Client client = clientFacade.find(Long.parseLong(request.getParameter("clientId")));
        StatusReport report = new StatusReport();
        report.setTask(task);
        report.setClient(client);
        report.setStatus(request.getParameter("status"));
        report.setStatusDate(new Date(Integer.parseInt(dinVals[0]), Integer.parseInt(dinVals[1]), Integer.parseInt(dinVals[2])));
        report.setAppliedBy(freelancer);

        reportFacade.create(report);
        response.sendRedirect("/dashboard/freelancer");
    }

}
