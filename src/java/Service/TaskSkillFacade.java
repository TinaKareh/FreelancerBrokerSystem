/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Service;

import Model.FreelancerSkill;
import Model.Skill;
import Model.Task;
import Model.TaskSkill;
import java.util.ArrayList;
import java.util.List;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

/**
 *
 * @author GraceTina
 */
@Stateless
public class TaskSkillFacade extends AbstractFacade<TaskSkill> {

    @PersistenceContext(unitName = "FuristicsFreelancerSystemPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public TaskSkillFacade() {
        super(TaskSkill.class);
    }
    
   public List<TaskSkill> getSkillByTask( Task task){
    Query query = getEntityManager().createQuery("select taskSkill from TaskSkill taskSkill where taskSkill.task = :task");
    query.setParameter("task", task);
        return (List<TaskSkill>) query.getResultList();
    }
}
