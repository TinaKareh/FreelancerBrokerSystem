/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.Bid;
import Model.TaskStatus;
import Service.BidFacade;
import Service.TaskFacade;
import java.io.IOException;
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
@WebServlet(name = "ApproveDealController", urlPatterns = {"/client/approve/deal"})
public class ApproveDealController extends HttpServlet {
    
    @EJB
    private BidFacade bidFacade;
    
    @EJB
    private TaskFacade taskFacade;

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
        
        Bid bestDeal = bidFacade.find(Long.parseLong(request.getParameter("bidId")));
        
        // get the corresponding Task, then set the bestDeal for that task
        //
        // The bestDeal is the Bid that was accepted by the client.
        bestDeal.getTask().setBestDeal(bestDeal);
        // update task status from BIDDING to IN_PROGRESS
        bestDeal.getTask().setStatus(TaskStatus.IP);
        
        // persist changes to the DB
        taskFacade.edit(bestDeal.getTask());
         
         

        
        response.sendRedirect("/dashboard");
    }

    
}
