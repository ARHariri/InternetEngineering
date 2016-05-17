/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.jobyab.DAO;

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
    
    protected Class<T> entityClass;
    
    public CoreDAO(Class<T> entityClass) {
        emf = Persistence.createEntityManagerFactory("com.sbu.neteng_NetEngineerinProject_war_1.0-SNAPSHOTPU");
        em = emf.createEntityManager();
        etx = em.getTransaction();
        
        this.entityClass = entityClass;
    }
    
    public boolean add(T t){
        try {
            etx.begin();
            em.persist(t);
            etx.commit();
            return true;
        } catch (Exception e) {
            etx.rollback();
            //System.out.println("ERRRRRRRRRRRRRRRRRRRRRRRRORRRRRRRRRRRRR"+e.getMessage());
            return false;
        }
    }
    
    public T read(short id){
        return em.find(entityClass, id);
    }
}
