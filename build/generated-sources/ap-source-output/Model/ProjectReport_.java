package Model;

import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value = "org.hibernate.jpamodelgen.JPAMetaModelEntityProcessor")
@StaticMetamodel(ProjectReport.class)
public abstract class ProjectReport_ {

	public static volatile SingularAttribute<ProjectReport, String> feedback;
	public static volatile SingularAttribute<ProjectReport, Task> task;
	public static volatile SingularAttribute<ProjectReport, Long> reportId;
	public static volatile SingularAttribute<ProjectReport, Client> appliedBy;

}

