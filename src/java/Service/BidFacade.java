/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Service;

import Model.Bid;
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
public class BidFacade extends AbstractFacade<Bid> {

    @PersistenceContext(unitName = "FuristicsFreelancerSystemPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public BidFacade() {
        super(Bid.class);
    }

    public List<Bid> taskDeals(Task task) {

        Query query = getEntityManager()
                .createQuery(
                        "select b from Bid b where b.task = :task and b.bidAmount <= :taskMaxAmnt");

        query.setParameter("task", task);
        query.setParameter("taskMaxAmnt", task.getMaxAmount());

        return (List<Bid>) query.getResultList();
    }
    
    public List<Bid> getBidByTask(Task task) {
        Query query = getEntityManager().createQuery("select bid from Bid bid where bid.task = :task");
        query.setParameter("task", task);
        return (List<Bid>) query.getResultList();

    }
}
