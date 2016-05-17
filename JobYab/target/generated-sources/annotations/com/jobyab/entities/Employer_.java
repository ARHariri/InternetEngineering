package com.jobyab.entities;

import com.jobyab.entities.Advertisement;
import com.jobyab.entities.Msgbox;
import com.jobyab.entities.User;
import javax.annotation.Generated;
import javax.persistence.metamodel.CollectionAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2016-05-17T19:36:02")
@StaticMetamodel(Employer.class)
public class Employer_ { 

    public static volatile SingularAttribute<Employer, String> coAddress;
    public static volatile SingularAttribute<Employer, Short> employerId;
    public static volatile SingularAttribute<Employer, String> coImage;
    public static volatile SingularAttribute<Employer, String> coName;
    public static volatile SingularAttribute<Employer, String> coTel;
    public static volatile CollectionAttribute<Employer, Msgbox> msgboxCollection;
    public static volatile CollectionAttribute<Employer, Advertisement> advertisementCollection;
    public static volatile SingularAttribute<Employer, User> user;

}