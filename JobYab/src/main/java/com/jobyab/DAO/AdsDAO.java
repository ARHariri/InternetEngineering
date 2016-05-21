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
import com.jobyab.entities.Advertisement;
import java.util.List;
import javax.persistence.Query;
/**
 *
 * @author Ali
 */
public class AdsDAO {
    
    EntityManagerFactory emf;
    EntityManager em;
    EntityTransaction etx;
 
    public AdsDAO(){
        emf = Persistence.createEntityManagerFactory("com.sbu.neteng_NetEngineerinProject_war_1.0-SNAPSHOTPU");
        em = emf.createEntityManager();
        etx = em.getTransaction();
    }
    
    public List<Advertisement> readAll(){
        Query query = em.createQuery(
                "select * from advertisement");
        
        return (List<Advertisement>) query.getResultList();
    }
    
}
