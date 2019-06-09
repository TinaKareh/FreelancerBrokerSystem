/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Service;

import Model.FreelancerSkills;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 *
 * @author GraceTina
 */
@Stateless
public class FreelancerSkillsFacade extends AbstractFacade<FreelancerSkills> {

    @PersistenceContext(unitName = "FuristicsFreelancerSystemPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public FreelancerSkillsFacade() {
        super(FreelancerSkills.class);
    }
    
}
