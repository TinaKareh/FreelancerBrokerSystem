package Model;

import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value = "org.hibernate.jpamodelgen.JPAMetaModelEntityProcessor")
@StaticMetamodel(Task.class)
public abstract class Task_ {

	public static volatile SingularAttribute<Task, Integer> duration;
	public static volatile SingularAttribute<Task, Bid> bestDeal;
	public static volatile SingularAttribute<Task, String> description;
	public static volatile SingularAttribute<Task, Client> appliedBy;
	public static volatile SingularAttribute<Task, String> category;
	public static volatile SingularAttribute<Task, String> projectName;
	public static volatile SingularAttribute<Task, Double> maxAmount;
	public static volatile SingularAttribute<Task, Long> taskId;
	public static volatile SingularAttribute<Task, String> Location;
	public static volatile SingularAttribute<Task, TaskStatus> status;

}

