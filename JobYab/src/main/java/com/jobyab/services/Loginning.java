/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.jobyab.services;


import com.jobyab.DAO.CoreDAO;
import com.jobyab.entities.User;
import com.jobyab.models.userModel;
import java.security.MessageDigest;
/**
 *
 * @author Ali
 */
public class Loginning {
    private CoreDAO<User> userDAO = new CoreDAO<User>(User.class);
    public User authenticate(String email, String password){
        try{
            //Hash password by md5 algorithm
            MessageDigest md = MessageDigest.getInstance("MD5");
            md.update(password.getBytes());
            byte[] bytes = md.digest();
            
            //User uDAO = new User(email, password, userKind);
            return userDAO.authenticate(email,password);
        }
        catch(Exception e){
            System.out.println(e.getMessage());
            return null;
        }
    }
    
}
