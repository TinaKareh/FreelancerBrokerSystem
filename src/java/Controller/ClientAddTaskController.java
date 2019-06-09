/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.Client;
import Model.Task;
import Model.TaskSkill;
import Model.TaskStatus;
import Service.SkillFacade;
import Service.TaskFacade;
import Service.TaskSkillFacade;
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
@WebServlet(name = "ClientAddTaskController", urlPatterns = {"/client/add/task"})
public class ClientAddTaskController extends HttpServlet {

    @EJB
    private TaskFacade facade;
   @EJB
   private SkillFacade skillFacade;
   @EJB
   private TaskSkillFacade tsf;

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
        List skills = skillFacade.findAll();
        request.setAttribute("skills", skills);
        getServletContext().getRequestDispatcher("/WEB-INF/client/post_task.jsp").forward(request, response);
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
        Client user = (Client)request.getAttribute("user");
        Task task = new Task();
        task.setCategory(request.getParameter("category"));
        task.setDuration(Integer.parseInt(request.getParameter("duration")));
        task.setRangeAmount(Double.parseDouble(request.getParameter("price")));
        task.setDescription(request.getParameter("desc"));
        task.setStatus(TaskStatus.BD);
        task.setAppliedBy(user);
        
        task = facade.createAndReturn(task);
        for(String val: request.getParameterValues("skill")){
           TaskSkill  tskill = new TaskSkill();
            tskill.setTask(task);
            tskill.setSkill(skillFacade.find(Long.parseLong(val.replace("", ""))));
            tsf.create(tskill);
                   // LOG.log(Level.INFO, val);

        }
        response.sendRedirect("/dashboard");
        
    }

   

}
