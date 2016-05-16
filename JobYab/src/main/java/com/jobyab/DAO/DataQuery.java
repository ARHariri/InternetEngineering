///*
// * To change this license header, choose License Headers in Project Properties.
// * To change this template file, choose Tools | Templates
// * and open the template in the editor.
// */
//package com.jobyab.DAO;
//
//import com.jobyab.entities.Employee;
//import javax.persistence.EntityManager;
//import javax.persistence.EntityManagerFactory;
//import javax.persistence.EntityTransaction;
//import javax.persistence.Persistence;
//
///**
// *
// * @author sajad
// */
//public class DataQuery {
//    EntityManagerFactory emf;
//    EntityManager em;
//    EntityTransaction etx;
//
//    public DataQuery() {
//        emf = Persistence.createEntityManagerFactory("com.sbu.neteng_NetEngineerinProject_war_1.0-SNAPSHOTPU");
//        em = emf.createEntityManager();
//        etx = em.getTransaction();
//    }
//
//    public boolean loginControl(String email, String password){
//        try {
//            Employee e = em.createNamedQuery("Employee.control",Employee.class).setParameter("email", email).setParameter("password", password).getSingleResult();
//            if (e != null){
//                return true;
//            }
//            return false;
//        } catch (Exception e) {
//            return false;
//        }
//    }
//
//    public boolean registerUser(Employee e){
//        etx.begin();
//        em.persist(e);
//        etx.commit();
//        return true;
//    }
//}
