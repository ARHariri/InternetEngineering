package com.jobyab.entities;

import com.jobyab.entities.Advertisement;
import javax.annotation.Generated;
import javax.persistence.metamodel.CollectionAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2016-05-21T13:02:13")
@StaticMetamodel(Tags.class)
public class Tags_ { 

    public static volatile SingularAttribute<Tags, Short> tagId;
    public static volatile SingularAttribute<Tags, String> tagName;
    public static volatile CollectionAttribute<Tags, Advertisement> advertisementCollection;

}