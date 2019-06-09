/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Service;

import Model.AuthUser;
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
public class AuthUserFacade extends AbstractFacade<AuthUser> {

    @PersistenceContext(unitName = "FuristicsFreelancerSystemPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public AuthUserFacade() {
        super(AuthUser.class);
    }

    public AuthUser getUserByEmailAddressAndPassword(String emailAddress, String password) {
        String jpql = "select a from AuthUser a where a.emailAddress = :email and a.password = :password";
        Query query = getEntityManager().createQuery(jpql);
        query.setParameter("email", emailAddress);
        query.setParameter("password", password);

        //AuthUser au = null;
        try {
            return (AuthUser) query.getSingleResult();
        } catch (Exception x) {
            return null;
        }
    }

    /*@Override
    public List<AuthUser> findAll() {
        String jpql ="select a from AuthUser";
        Query query = getEntityManager().createQuery(jpql);
        return query.getResultList();
    }*/
    

}
