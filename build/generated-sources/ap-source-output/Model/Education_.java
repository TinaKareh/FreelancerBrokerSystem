package Model;

import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value = "org.hibernate.jpamodelgen.JPAMetaModelEntityProcessor")
@StaticMetamodel(Education.class)
public abstract class Education_ {

	public static volatile SingularAttribute<Education, String> country;
	public static volatile SingularAttribute<Education, Long> educationId;
	public static volatile SingularAttribute<Education, String> degree;
	public static volatile SingularAttribute<Education, String> startYear;
	public static volatile SingularAttribute<Education, String> endYear;
	public static volatile SingularAttribute<Education, Freelancer> freelancer;

}

