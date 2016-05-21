package com.jobyab.entities;

import com.jobyab.entities.Employer;
import com.jobyab.entities.Jobseeker;
import com.jobyab.entities.Languages;
import com.jobyab.entities.Msgbox;
import com.jobyab.entities.Skills;
import javax.annotation.Generated;
import javax.persistence.metamodel.CollectionAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2016-05-21T23:01:33")
@StaticMetamodel(User.class)
public class User_ { 

    public static volatile CollectionAttribute<User, Skills> skillsCollection;
    public static volatile CollectionAttribute<User, Languages> languagesCollection;
    public static volatile SingularAttribute<User, String> password;
    public static volatile SingularAttribute<User, Jobseeker> jobseeker;
    public static volatile SingularAttribute<User, Employer> employer;
    public static volatile CollectionAttribute<User, Msgbox> msgboxCollection;
    public static volatile SingularAttribute<User, Short> type;
    public static volatile SingularAttribute<User, Short> userId;
    public static volatile SingularAttribute<User, String> email;

}