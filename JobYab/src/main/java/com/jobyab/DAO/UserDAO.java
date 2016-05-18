/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.jobyab.DAO;

import com.jobyab.entities.User;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;

/**
 *
 * @author sajad
 */
public class UserDAO {
    EntityManagerFactory emf;
    EntityManager em;
    EntityTransaction etx;
 
    public UserDAO(){
        emf = Persistence.createEntityManagerFactory("com.sbu.neteng_NetEngineerinProject_war_1.0-SNAPSHOTPU");
        em = emf.createEntityManager();
        etx = em.getTransaction();
    }
    
    public User fetch(String email, String password){
        try {
            return (User) em.createNamedQuery("User.fetch")
            .setParameter("email", email)
            .setParameter("password",password)
            .getSingleResult();
         //   return (User) em.createQuery("SELECT u FROM User u WHERE u.email =" + email + " AND u.password=" + password);
        } catch (Exception e) {
            return null;
        }            
    }
    
}
