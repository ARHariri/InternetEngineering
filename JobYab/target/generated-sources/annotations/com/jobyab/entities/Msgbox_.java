package com.jobyab.entities;

import com.jobyab.entities.Advertisement;
import com.jobyab.entities.Employer;
import com.jobyab.entities.MsgboxPK;
import com.jobyab.entities.User;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2016-05-21T19:23:24")
@StaticMetamodel(Msgbox.class)
public class Msgbox_ { 

    public static volatile SingularAttribute<Msgbox, Date> rcvSndTime;
    public static volatile SingularAttribute<Msgbox, Advertisement> advertisement;
    public static volatile SingularAttribute<Msgbox, Boolean> coBox;
    public static volatile SingularAttribute<Msgbox, Boolean> coDel;
    public static volatile SingularAttribute<Msgbox, Employer> coId;
    public static volatile SingularAttribute<Msgbox, Boolean> userBox;
    public static volatile SingularAttribute<Msgbox, Boolean> userDel;
    public static volatile SingularAttribute<Msgbox, MsgboxPK> msgboxPK;
    public static volatile SingularAttribute<Msgbox, String> body;
    public static volatile SingularAttribute<Msgbox, User> user;

}