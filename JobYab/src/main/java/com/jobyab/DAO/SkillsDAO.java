/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.jobyab.DAO;

import com.jobyab.entities.Skills;
import com.jobyab.entities.Tags;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;

/**
 *
 * @author sajad
 */
public class SkillsDAO {
    EntityManagerFactory emf;
    EntityManager em;
    EntityTransaction etx;
    
    public SkillsDAO(){
        
    }
    
     public List<Skills> readAll(){
         try {
             Query query = em.createQuery(
                "select * from skill");
        
        return (List<Skills>) query.getResultList();
   
         } catch (Exception e) {
             return null;
         }
    }
    
}
