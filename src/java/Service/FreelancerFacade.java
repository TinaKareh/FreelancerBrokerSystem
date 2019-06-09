/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Service;

import Model.Freelancer;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.transaction.Transactional;

/**
 *
 * @author GraceTina
 */

@Stateless
public class FreelancerFacade extends AbstractFacade<Freelancer> {

    @PersistenceContext(unitName = "FuristicsFreelancerSystemPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public FreelancerFacade() {
        super(Freelancer.class);
    }
  @Transactional
    public Freelancer findByUserId(Long userId) {
        Query q = getEntityManager().createQuery("select f from Freelancer f where f.user.userId = :id");
        q.setParameter("id", userId);
        return (Freelancer) q.getSingleResult();
    }
    
}
