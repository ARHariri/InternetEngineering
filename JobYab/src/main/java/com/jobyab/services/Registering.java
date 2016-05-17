/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.jobyab.services;

import com.jobyab.DAO.*;
import com.jobyab.entities.*;
import java.io.PrintWriter;
import com.jobyab.auxiliaries.*;
/**
 *
 * @author Ali
 */
public class Registering {
    
    private CoreDAO<User> userDAO = new CoreDAO<User>(User.class);
    
    public boolean register(String email, String password, String userKind){
        try{
            userKind = userKind.toLowerCase();
            
            User uObj = null;
            
            switch(userKind){
                case "jobseeker":{
                    uObj = new User(email, password, (short) 1);
                }
                break;
                    
                case "employer":{
                    uObj = new User(email, password, (short) 2);
                }
                break;
                    
                default:
                    return false;
                    
            }
            
            return userDAO.add(uObj);
        }
        catch(Exception e){
            System.out.println(e.getMessage());
            return false;
        }
    }
    
    
}
