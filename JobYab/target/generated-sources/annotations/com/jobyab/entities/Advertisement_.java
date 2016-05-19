package com.jobyab.entities;

import com.jobyab.entities.Employer;
import com.jobyab.entities.Msgbox;
import com.jobyab.entities.Tags;
import javax.annotation.Generated;
import javax.persistence.metamodel.CollectionAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2016-05-20T02:58:02")
@StaticMetamodel(Advertisement.class)
public class Advertisement_ { 

    public static volatile SingularAttribute<Advertisement, String> adImage;
    public static volatile SingularAttribute<Advertisement, String> adThumbnail;
    public static volatile SingularAttribute<Advertisement, String> adType;
    public static volatile SingularAttribute<Advertisement, Integer> maxSalary;
    public static volatile SingularAttribute<Advertisement, Short> adId;
    public static volatile SingularAttribute<Advertisement, String> adBody;
    public static volatile CollectionAttribute<Advertisement, Tags> tagsCollection;
    public static volatile SingularAttribute<Advertisement, String> adTitle;
    public static volatile SingularAttribute<Advertisement, Employer> coId;
    public static volatile CollectionAttribute<Advertisement, Msgbox> msgboxCollection;
    public static volatile SingularAttribute<Advertisement, Integer> minSalary;

}