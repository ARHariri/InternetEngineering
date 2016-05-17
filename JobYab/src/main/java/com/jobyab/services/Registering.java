/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.jobyab.services;

import com.jobyab.DAO.*;
import com.jobyab.entities.*;
import java.io.PrintWriter;
/**
 *
 * @author Ali
 */
public class Registering {
    
    private CoreDAO<User> userDAO = new CoreDAO<User>(User.class);
    private CoreDAO<UserType> userTypeDAO = new CoreDAO<UserType>(UserType.class);
    
    public boolean register(String email, String password, String userType){
        try{
            User uObj = new User(email, password);
            UserType userTypeObj = new UserType(userType);
            uObj.setType(userTypeObj);
            
            return userDAO.add(uObj);
        }
        catch(Exception e){
            System.out.println(e.getMessage());
            return false;
        }
    }
    
    
}
