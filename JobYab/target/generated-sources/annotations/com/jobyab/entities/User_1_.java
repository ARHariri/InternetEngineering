package com.jobyab.entities;

import com.jobyab.entities.Jobseeker;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2016-05-17T23:48:11")
@StaticMetamodel(User_1.class)
public class User_1_ { 

    public static volatile SingularAttribute<User_1, String> password;
    public static volatile SingularAttribute<User_1, Jobseeker> jobseeker;
    public static volatile SingularAttribute<User_1, Short> type;
    public static volatile SingularAttribute<User_1, Short> userId;
    public static volatile SingularAttribute<User_1, String> email;

}