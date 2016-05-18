/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.jobyab.services;


import com.jobyab.DAO.CoreDAO;
import com.jobyab.DAO.UserDAO;
import com.jobyab.entities.Employer;
import com.jobyab.entities.Jobseeker;
import com.jobyab.entities.User;
import com.jobyab.models.userModel;
import java.security.MessageDigest;
/**
 *
 * @author Ali
 */
public class Loginning {
    private UserDAO userDAO = new UserDAO();
    
    public userModel authenticate(String email, String password){
        try{
            //Hash password by md5 algorithm
            MessageDigest md = MessageDigest.getInstance("MD5");
            md.update(password.getBytes());
            byte[] bytes = md.digest();
            User uObj = userDAO.fetch(email,new String(password));
            
            if ( uObj.equals(null) )
                return null;
            
            userModel um = new userModel();
            um.setEmail(email);
            
            switch(uObj.getType()){
                case 1:{    //jobSeeker
                    CoreDAO<Jobseeker> jDAO = new CoreDAO<Jobseeker>(Jobseeker.class);
                    Jobseeker jObj = jDAO.read(uObj.getUserId());

                    if(jObj.equals(null))
                        return null;

                    um.setKind("jobSeeker");
                    um.setFirstName(jObj.getFirstName());
                    um.setLastName(jObj.getLastName());
                    um.setUserTel(jObj.getTel());
                    um.setCity(jObj.getCity());
                    um.setImageDir(jObj.getUserImage());
                }
                    break;
                
                case 2:{    //employer
                    CoreDAO<Employer> eDAO = new CoreDAO<Employer>(Employer.class);
                    Employer eObj = eDAO.read(uObj.getUserId());

                    if(eObj.equals(null))
                        return null;
                    
                    um.setKind("employer");
                    um.setCompanyName(eObj.getCoName());
                    um.setCompanyTell(eObj.getCoTel());
                    um.setImageDir(eObj.getCoImage());
                    um.setCompanyAddress(eObj.getCoAddress());
                }
                    break;
                    
                default:
                    return null;
            }
            
            return um;  
        }
        catch(Exception e){
            System.out.println(e.getMessage());
            return null;
        }
    }
}
