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
    
    private CoreDAO<User> userDAO = new CoreDAO<User>();
    
    public boolean register(String email, String password){
        try{
            short id = 1;
            User uObj = new User(id , email, password);
            
            return userDAO.add(uObj);
        }
        catch(Exception e){
            System.out.println(e.getMessage());
            return false;
        }
    }
    
    
}
