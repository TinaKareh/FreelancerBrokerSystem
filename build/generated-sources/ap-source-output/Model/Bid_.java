package Model;

import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value = "org.hibernate.jpamodelgen.JPAMetaModelEntityProcessor")
@StaticMetamodel(Bid.class)
public abstract class Bid_ {

	public static volatile SingularAttribute<Bid, Integer> duration;
	public static volatile SingularAttribute<Bid, Task> task;
	public static volatile SingularAttribute<Bid, Double> bidAmount;
	public static volatile SingularAttribute<Bid, Freelancer> appliedBy;
	public static volatile SingularAttribute<Bid, Long> bidId;

}

