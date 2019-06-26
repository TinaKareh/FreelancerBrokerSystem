package Model;

import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value = "org.hibernate.jpamodelgen.JPAMetaModelEntityProcessor")
@StaticMetamodel(Experience.class)
public abstract class Experience_ {

	public static volatile SingularAttribute<Experience, Long> experienceId;
	public static volatile SingularAttribute<Experience, String> summary;
	public static volatile SingularAttribute<Experience, String> startYear;
	public static volatile SingularAttribute<Experience, String> company;
	public static volatile SingularAttribute<Experience, String> title;
	public static volatile SingularAttribute<Experience, String> endYear;
	public static volatile SingularAttribute<Experience, Freelancer> freelancer;

}

