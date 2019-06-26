package Model;

import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SetAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value = "org.hibernate.jpamodelgen.JPAMetaModelEntityProcessor")
@StaticMetamodel(Freelancer.class)
public abstract class Freelancer_ {

	public static volatile ListAttribute<Freelancer, FreelancerSkill> skills;
	public static volatile SingularAttribute<Freelancer, Long> freelancerId;
	public static volatile SetAttribute<Freelancer, Education> education;
	public static volatile SetAttribute<Freelancer, Experience> experience;
	public static volatile SetAttribute<Freelancer, Bid> bid;
	public static volatile SingularAttribute<Freelancer, AuthUser> user;

}

