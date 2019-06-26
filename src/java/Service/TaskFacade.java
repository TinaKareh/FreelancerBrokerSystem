/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Service;

import Model.Client;
import Model.Freelancer;
import Model.FreelancerSkill;
import Model.Skill;
import Model.Task;
import Model.TaskStatus;
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
public class TaskFacade extends AbstractFacade<Task> {

    @PersistenceContext(unitName = "FuristicsFreelancerSystemPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public TaskFacade() {
        super(Task.class);
    }

    public List<Task> getTasksByClient(Client appliedBy) {
        Query query = getEntityManager()
                .createQuery("select task from Task task where task.appliedBy = :appliedBy and task.status = :status");
        query.setParameter("appliedBy", appliedBy);
        query.setParameter("status", TaskStatus.BD);
        return (List<Task>) query.getResultList();
    }
    
    public  List<Task> getApprovedTasks(Client appliedBy){
        Query query = getEntityManager().createQuery("select task from Task task where task.appliedBy = :appliedBy and task.status = :status");
        query.setParameter("appliedBy", appliedBy);
        query.setParameter("status", TaskStatus.IP);
        return (List<Task>) query.getResultList();
    }

    public List<Task> relevantTasks(List<FreelancerSkill> fSkills) {
        List<Skill> skills = new ArrayList<>();
        fSkills.forEach(fSkill -> skills.add(fSkill.getS()));

        String hql = "select DISTINCT ts.task from TaskSkill ts where ts.skill in (:skills) and ts.task.status = :status";
        Query query = getEntityManager().createQuery(hql);
        query.setParameter("skills", skills);
        query.setParameter("status", TaskStatus.BD);
        return (List<Task>) query.getResultList();
    }
    // private static final Logger LOG = Logger.getLogger(TaskFacade.class.getName());

    public List<Task> freelancerAssignedTasks(Freelancer freelancer) {

        Query query = getEntityManager().createQuery(
                "select task from Task task where task.bestDeal.appliedBy = :appliedBy");
        query.setParameter("appliedBy", freelancer);

        return (List<Task>) query.getResultList();
    }

}
