package Model;

import Constants.UserType;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value = "org.hibernate.jpamodelgen.JPAMetaModelEntityProcessor")
@StaticMetamodel(AuthUser.class)
public abstract class AuthUser_ {

	public static volatile SingularAttribute<AuthUser, String> firstName;
	public static volatile SingularAttribute<AuthUser, String> lastName;
	public static volatile SingularAttribute<AuthUser, String> emailAddress;
	public static volatile SingularAttribute<AuthUser, String> password;
	public static volatile SingularAttribute<AuthUser, String> phoneNumber;
	public static volatile SingularAttribute<AuthUser, String> confirmPass;
	public static volatile SingularAttribute<AuthUser, UserType> uType;
	public static volatile SingularAttribute<AuthUser, String> userName;
	public static volatile SingularAttribute<AuthUser, Long> userId;

}

