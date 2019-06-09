/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Service;

import Model.Client;
import Model.Task;
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

    /*public List<Task> findByClientId(Client appliedBy) {
        String jpql = "select a from Task a where a.appliedBy = :clientId";
        Query query = getEntityManager().createQuery(jpql);
        query.setParameter("clientId", appliedBy);
        return query.getResultList();

    }*/

}
