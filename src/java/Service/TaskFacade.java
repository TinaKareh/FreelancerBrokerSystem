/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Service;

import Model.Client;
import Model.FreelancerSkill;
import Model.Skill;
import Model.Task;
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

    public List<Task> getTaskByClientId(Client appliedBy) {
        String jpql = "select * from Task where appliedBy_client_id = ?";
        Query query = getEntityManager().createNamedQuery(jpql);
        return (List<Task>) query.getResultList();

    }

    public List<Task> relevantTasks(List<FreelancerSkill> fSkills) {
        List<Skill> skills = new ArrayList<>();
       // LOG.log(Level.INFO, String.valueOf(fSkills.size()));
        // try logging in using a user who has some skills set
        fSkills.forEach(fSkill -> skills.add(fSkill.getS()));
        /*String jpql = "select t from Task t "
                    + "inner join TaskSkill.taskId "
                    + "where ts.skillId in :skills";*/

        String hql = "select ts.task from TaskSkill ts where ts.skill in (:skills)";
        Query query = getEntityManager().createQuery(hql);
        query.setParameter("skills", skills);

        return (List<Task>) query.getResultList();

    }
    // private static final Logger LOG = Logger.getLogger(TaskFacade.class.getName());
}
