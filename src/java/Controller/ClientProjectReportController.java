/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.Client;
import Model.Freelancer;
import Model.ProjectReport;
import Model.Task;
import Model.TaskStatus;
import Service.ProjectReportFacade;
import Service.TaskFacade;
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
@WebServlet(name = "ClientProjectReportController", urlPatterns = {"/client/project/report"})
public class ClientProjectReportController extends HttpServlet {

    @EJB
    private ProjectReportFacade facade;
    @EJB
    private TaskFacade taskFacade;

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
        request.setAttribute("job", task);
        getServletContext().getRequestDispatcher("/WEB-INF/client/project_report.jsp").forward(request, response);
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
        Client user = (Client) request.getAttribute("user");
        Task task = taskFacade.find(Long.parseLong(request.getParameter("jobId")));
        task.setStatus(TaskStatus.CP);
        ProjectReport report = new ProjectReport();
        report.setTask(task);
        report.setFreelancerName(request.getParameter("fname"));
        report.setFeedback(request.getParameter("feed"));
        report.setAppliedBy(user);
        facade.create(report);

        response.sendRedirect("/dashboard");
    }

}
