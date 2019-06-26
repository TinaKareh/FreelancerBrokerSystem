/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.Bid;
import Model.Task;
import Service.BidFacade;
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
@WebServlet(name = "ClientViewSuitableDealsController", urlPatterns = {"/client/view/deals"})
public class ClientViewSuitableDealsController extends HttpServlet {

    @EJB
    private TaskFacade taskFacade;
    @EJB
    private BidFacade bidFacade;
    
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
        Task task =taskFacade.find(Long.parseLong(request.getParameter("taskId")));
        List<Bid> deals = bidFacade.taskDeals(task);
        request.setAttribute("task", task);
        request.setAttribute("deals", deals);
        
        getServletContext()
                .getRequestDispatcher("/WEB-INF/client/view_deals.jsp")
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
    }

}
