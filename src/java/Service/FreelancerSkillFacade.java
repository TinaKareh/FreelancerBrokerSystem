/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Service;

import Model.Freelancer;
import Model.FreelancerSkill;
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
public class FreelancerSkillFacade extends AbstractFacade<FreelancerSkill> {

    @PersistenceContext(unitName = "FuristicsFreelancerSystemPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public FreelancerSkillFacade() {
        super(FreelancerSkill.class);
    }

    public List<FreelancerSkill> freelancerSkills(Freelancer freelancer) {
        
        Query query = getEntityManager().createQuery("select fs from FreelancerSkill fs where fs.f = :f");
        query.setParameter("f", freelancer);
        
        return (List<FreelancerSkill>) query.getResultList();
    }
    
}
