package Model;

import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value = "org.hibernate.jpamodelgen.JPAMetaModelEntityProcessor")
@StaticMetamodel(TaskSkill.class)
public abstract class TaskSkill_ {

	public static volatile SingularAttribute<TaskSkill, Long> taskSkillId;
	public static volatile SingularAttribute<TaskSkill, Task> task;
	public static volatile SingularAttribute<TaskSkill, Skill> skill;

}

