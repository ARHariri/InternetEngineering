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
        Query query = em.createNamedQuery("Advertisement.findAll");
        
        return (List<Advertisement>) query.getResultList();
    }
    
    public List<Advertisement> readByDetails(String tagCnd, String salaryCnd, String otherCnd){
        
        String subQueryStr = "";
        String queryStr = "select * from advertisement";
        
        if(tagCnd != null){
            subQueryStr = "select ad_id from tags"
                        + "where " + tagCnd;
            
            subQueryStr = "select ad_id from ad_tab"
                        + "where tag_id in " + subQueryStr;
        }
        
        if(tagCnd != null && salaryCnd != null && otherCnd != null){
            queryStr += "where " + salaryCnd + " and " + otherCnd + 
                        "and ad_id in " + subQueryStr;
        }
        else if(tagCnd == null && salaryCnd != null && otherCnd != null){
            queryStr += "where " + salaryCnd + " and " + otherCnd;
        }
        else if(tagCnd != null && salaryCnd == null && otherCnd != null){
            queryStr += "where " + otherCnd + 
                        "and ad_id in " + subQueryStr;
        }
        else if(tagCnd != null && salaryCnd != null && otherCnd == null){
            queryStr += "where " + salaryCnd + 
                        "and ad_id in " + subQueryStr;
        }
        else if(tagCnd == null && salaryCnd == null && otherCnd != null){
            queryStr += "where " + otherCnd;
        }
        else if(tagCnd == null && salaryCnd != null && otherCnd == null){
            queryStr += "where " + salaryCnd;
        }
        else if(tagCnd != null && salaryCnd == null && otherCnd == null){
            queryStr += "where ad_id in " + subQueryStr;
        }
        else if(tagCnd == null && salaryCnd == null && otherCnd == null)
            return null;
        
        Query query = em.createQuery(queryStr);
        
        return (List<Advertisement>) query.getResultList();
    }
    
    public Advertisement updateImageDir(short id, String imageDir){
        Advertisement ads = (Advertisement) em.find(Advertisement.class, id);
        
        if(ads == null)
            return null;
        
        etx.begin();
        ads.setAdImage(imageDir);
        etx.commit();
        
        return ads;
    }
}
