/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Service;

import Model.Education;
import Model.Freelancer;
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
 
}
