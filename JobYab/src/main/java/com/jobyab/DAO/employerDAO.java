/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.jobyab.DAO;

import com.jobyab.entities.Employer;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;

/**
 *
 * @author Ali
 */
public class employerDAO {
    
    EntityManagerFactory emf;
    EntityManager em;
    EntityTransaction etx;
    
    public employerDAO(){
        emf = Persistence.createEntityManagerFactory("com.sbu.neteng_NetEngineerinProject_war_1.0-SNAPSHOTPU");
        em = emf.createEntityManager();
        etx = em.getTransaction();
    }
    
    public Employer findByName(String employerName){
        try{
            return (Employer) em.createNamedQuery("Employer.findByName")
                    .setParameter("companyName", employerName)
                    .getSingleResult();
        }
        catch(Exception e){
            return null;
        }
    }
    
}
