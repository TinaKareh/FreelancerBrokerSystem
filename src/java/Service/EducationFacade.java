/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Service;

import Model.Client;
import Model.Education;
import Model.Freelancer;
import Model.Task;
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
public class EducationFacade extends AbstractFacade<Education> {

    @PersistenceContext(unitName = "FuristicsFreelancerSystemPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public EducationFacade() {
        super(Education.class);
    }
    public List<Education> getEducationByFreelancer(Freelancer freelancer) {
        // String jpql = "select * from Task a where a.appliedBy_client_id = (:appliedBy)";
        Query query = getEntityManager()
                .createQuery("select education from Education education where education.freelancer = :freelancer");
        query.setParameter("freelancer", freelancer);
        return (List<Education>) query.getResultList();
    }
 
}
