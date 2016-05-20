package com.jobyab.entities;

import com.jobyab.entities.User;
import javax.annotation.Generated;
import javax.persistence.metamodel.CollectionAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2016-05-20T11:37:59")
@StaticMetamodel(Languages.class)
public class Languages_ { 

    public static volatile CollectionAttribute<Languages, User> userCollection;
    public static volatile SingularAttribute<Languages, String> langName;
    public static volatile SingularAttribute<Languages, Short> langId;

}