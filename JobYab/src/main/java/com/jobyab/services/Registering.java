/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.jobyab.services;

import com.jobyab.DAO.*;
import com.jobyab.models.*;
import com.jobyab.entities.*;
import java.security.MessageDigest;
/**
 *
 * @author Ali
 */
public class Registering {
   
    
    public Registering(){
        
    }
    public User registerUser(String email, String password, short userKind){
        CoreDAO<User> userDAO = new CoreDAO<User>( User.class );
        try{
            //Hash password by md5 algorithm
            MessageDigest md = MessageDigest.getInstance("MD5");
            md.update( password.getBytes() );
            byte[] bytes = md.digest();
            
            //User uDAO = new User(email, password, userKind);
            User uDAO = new User(email, new String(bytes), userKind);
            
            return userDAO.add(uDAO);
        }
        catch(Exception e){
            System.out.println(e.getMessage());
            return null;
        }
    }
    
    public boolean registerJobSeeker(userModel uModel){
        User user = registerUser( uModel.getEmail(), uModel.getPasswrod(), (short)1 );
        
        if(user == null)
            return false;
        
        CoreDAO<Jobseeker> jobSeekerDAO = new CoreDAO<Jobseeker>(Jobseeker.class);
        Jobseeker jDAO = new Jobseeker();
        jDAO.setJobSeekerid(user.getUserId());
        uModel.setUserID(user.getUserId());
        jDAO.setFirstName(uModel.getFirstName());
        jDAO.setLastName(uModel.getLastName());
        jDAO.setBirthDate(uModel.getBirthDate());
        jDAO = jobSeekerDAO.add(jDAO);
        
        if(jDAO == null)
            return false;
        
        return true;
    }
    
    public boolean registerEmployer(userModel uModel){
        User user = registerUser(uModel.getEmail(), uModel.getPasswrod(), (short)2);
        
        if(user == null)
            return false;
        
        CoreDAO<Employer> employerDAO = new CoreDAO<Employer>(Employer.class);
        
        Employer eDAO = new Employer();
        eDAO.setCoName(uModel.getCompanyName());
        eDAO.setCoTel(uModel.getCompanyTell());
        
        eDAO = employerDAO.add(eDAO);
        
        if(eDAO == null)
            return false;
        
        return true;
    }
    
}
