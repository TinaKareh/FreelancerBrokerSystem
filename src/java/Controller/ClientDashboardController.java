/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.Client;
import Model.Task;
import Service.ClientFacade;
import Service.TaskFacade;
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
        getServletContext().getRequestDispatcher("/WEB-INF/client/dashboard.jsp").forward(request, response);
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
        Client client = clientFacade.find(1L);
        Task task = new Task();
        task.setCategory(request.getParameter("category"));
        task.setRangeAmount(Double.parseDouble(request.getParameter("price")));
        task.setDuration(Integer.parseInt(request.getParameter("duration")));
        task.setDescription(request.getParameter("desc"));
        task.setAppliedBy(client);
        
        taskFacade.create(task);
    }

    
}
