/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Service;

import Model.CategoryType;
import Model.Skill;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

/**
 *
 * @author GraceTina
 */
@Stateless
public class SkillFacade extends AbstractFacade<Skill> {

    @PersistenceContext(unitName = "FuristicsFreelancerSystemPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public SkillFacade() {
        super(Skill.class);
    }

    public Skill findSkillByCategory(CategoryType category) {
        String jpql = "select a from Skill a where a.category = :category ";
        Query query = getEntityManager().createQuery(jpql);
        query.setParameter("category", category);
        
        //AuthUser au = null;
        try {
            return (Skill) query.getSingleResult();
        } catch(Exception x) {
            return null;
        }
    }
    
}
