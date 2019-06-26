/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.Bid;
import Model.Freelancer;
import Model.Task;
import Service.BidFacade;
import Service.FreelancerFacade;
import Service.TaskFacade;
import java.io.IOException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
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
@WebServlet(name = "AddBidsController", urlPatterns = {"/freelancer/add/bids"})
public class AddBidsController extends HttpServlet {

    @EJB
    private BidFacade bidFacade;
    @EJB
    private FreelancerFacade freelancerFacade;
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
        request.setAttribute("task", task);
        // Bid bid = new Bid();
        // This bid object is empty --> doesnt have an ID set, so using it wont work.
        List<Bid> bids = bidFacade.getBidByTask(task);
        LOG.log(Level.INFO, String.valueOf(bids.size()));
        request.setAttribute("bids", bids);
        getServletContext()
                .getRequestDispatcher("/WEB-INF/freelancer/add_bids.jsp")
                .forward(request, response);
    }
    private static final Logger LOG = Logger.getLogger(AddBidsController.class.getName());

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
        
        Freelancer free = (Freelancer) request.getAttribute("user");
        Task task = taskFacade.find(Long.parseLong(request.getParameter("jobId")));
        Bid bid = new Bid();
        bid.setDuration(Integer.parseInt(request.getParameter("duration")));
        bid.setBidAmount(Double.parseDouble(request.getParameter("amount")));
        bid.setTask(task);
        bid.setAppliedBy(free);

        bidFacade.create(bid);
        response.sendRedirect("/dashboard/freelancer");
    }

}
