/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.Client;
import Model.Task;
import Model.TaskSkill;
import Service.ClientFacade;
import Service.TaskFacade;
import Service.TaskSkillFacade;
import java.io.IOException;
import java.util.List;
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
@WebServlet(name = "ClientDashboardController", urlPatterns = {"/dashboard"})
public class ClientDashboardController extends HttpServlet {

    @EJB
    private ClientFacade clientFacade;
    @EJB
    private TaskFacade taskFacade;
    @EJB
    private TaskSkillFacade facade;

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
        // HttpServletRequest httpReq = (HttpServletRequest) request;
        HttpSession session = request.getSession();
        Client client = (Client) session.getAttribute("user");
        List<Task> tasks = taskFacade.getTasksByClient(client);
        request.setAttribute("tasks", tasks);
        List<Task> approvedTasks = taskFacade.getApprovedTasks(client);
        request.setAttribute("jobs", approvedTasks);
        getServletContext()
                .getRequestDispatcher("/WEB-INF/client/dashboard.jsp")
                .forward(request, response);
    }

}
