/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.Client;
import Model.Task;
import static Model.Task_.appliedBy;
import Service.ClientFacade;
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
@WebServlet(name = "ClientDashboardController", urlPatterns = {"/dashboard"})
public class ClientDashboardController extends HttpServlet {
@EJB
 private ClientFacade clientFacade;
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
        Task task = new Task();
         List<Task> tasks = taskFacade.findAll();
        request.setAttribute("tasks", tasks);
        getServletContext().getRequestDispatcher("/WEB-INF/client/dashboard.jsp").forward(request, response);
    }

}
