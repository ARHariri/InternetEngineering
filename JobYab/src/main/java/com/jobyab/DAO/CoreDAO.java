/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.jobyab.DAO;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;

/**
 *
 * @author Ali
 */

public class CoreDAO<T> {
    
    EntityManagerFactory emf;
    EntityManager em;
    EntityTransaction etx;
    
    public Class<T> entityClass;
    
    public CoreDAO(Class<T> entityClass) {
        emf = Persistence.createEntityManagerFactory("com.sbu.neteng_NetEngineerinProject_war_1.0-SNAPSHOTPU");
        em = emf.createEntityManager();
        etx = em.getTransaction();
        
        this.entityClass = entityClass;
    }

    public CoreDAO() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
    public T add(T t){
        try {
            etx.begin();
            em.persist(t);
            etx.commit();  
            return t;
        } catch (Exception e) {
            etx.rollback();
            return null;
        }
    }
    
    public T read(short id){
        return em.find(entityClass, id);
    }
    
    public T mergeAds(T t){
        try{
            etx.begin();
            em.merge(t);
            etx.commit();
            
            return t;
        }
        catch(Exception e){
            return null;
        }
    }
}
