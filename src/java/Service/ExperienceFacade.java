/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Service;

import Model.Education;
import Model.Experience;
import Model.Freelancer;
import java.util.List;
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
@Transactional
public class ExperienceFacade extends AbstractFacade<Experience> {

    @PersistenceContext(unitName = "FuristicsFreelancerSystemPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public ExperienceFacade() {
        super(Experience.class);
    }
      public List<Experience> getExperienceByFreelancer(Freelancer freelancer) {
        // String jpql = "select * from Task a where a.appliedBy_client_id = (:appliedBy)";
        Query query = getEntityManager()
                .createQuery("select experience from Experience experience where experience.freelancer = :freelancer");
        query.setParameter("freelancer", freelancer);
        return (List<Experience>) query.getResultList();
    }
}
