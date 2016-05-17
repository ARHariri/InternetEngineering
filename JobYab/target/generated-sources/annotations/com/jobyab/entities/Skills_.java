package com.jobyab.entities;

import com.jobyab.entities.User;
import javax.annotation.Generated;
import javax.persistence.metamodel.CollectionAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2016-05-17T16:17:04")
@StaticMetamodel(Skills.class)
public class Skills_ { 

    public static volatile SingularAttribute<Skills, String> skillName;
    public static volatile SingularAttribute<Skills, Short> skillId;
    public static volatile CollectionAttribute<Skills, User> userCollection;

}