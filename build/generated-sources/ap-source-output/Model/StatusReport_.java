package Model;

import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value = "org.hibernate.jpamodelgen.JPAMetaModelEntityProcessor")
@StaticMetamodel(StatusReport.class)
public abstract class StatusReport_ {

	public static volatile SingularAttribute<StatusReport, Date> statusDate;
	public static volatile SingularAttribute<StatusReport, Task> task;
	public static volatile SingularAttribute<StatusReport, Long> statusId;
	public static volatile SingularAttribute<StatusReport, Client> client;
	public static volatile SingularAttribute<StatusReport, Freelancer> appliedBy;
	public static volatile SingularAttribute<StatusReport, String> status;

}

