package com.jobyab.entities;

import com.jobyab.entities.User;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2016-05-27T21:04:35")
@StaticMetamodel(Jobseeker.class)
public class Jobseeker_ { 

    public static volatile SingularAttribute<Jobseeker, String> firstName;
    public static volatile SingularAttribute<Jobseeker, String> lastName;
    public static volatile SingularAttribute<Jobseeker, String> userImage;
    public static volatile SingularAttribute<Jobseeker, String> city;
    public static volatile SingularAttribute<Jobseeker, String> tel;
    public static volatile SingularAttribute<Jobseeker, Short> jobSeekerid;
    public static volatile SingularAttribute<Jobseeker, Date> birthDate;
    public static volatile SingularAttribute<Jobseeker, User> user;

}