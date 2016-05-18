package com.jobyab.entities;

import com.jobyab.entities.Jobseeker;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2016-05-18T01:04:18")
@StaticMetamodel(User.class)
public class User_ { 

    public static volatile SingularAttribute<User, String> password;
    public static volatile SingularAttribute<User, Jobseeker> jobseeker;
    public static volatile SingularAttribute<User, Short> type;
    public static volatile SingularAttribute<User, Short> userId;
    public static volatile SingularAttribute<User, String> email;

}