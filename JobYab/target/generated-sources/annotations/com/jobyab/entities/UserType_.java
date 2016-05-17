package com.jobyab.entities;

import com.jobyab.entities.User;
import javax.annotation.Generated;
import javax.persistence.metamodel.CollectionAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2016-05-17T19:11:07")
@StaticMetamodel(UserType.class)
public class UserType_ { 

    public static volatile SingularAttribute<UserType, Short> userTypeId;
    public static volatile SingularAttribute<UserType, String> userTypeName;
    public static volatile CollectionAttribute<UserType, User> userCollection;

}