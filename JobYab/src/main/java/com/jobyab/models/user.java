/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.jobyab.models;

/**
 *
 * @author Ali
 */
public class user {
    public String email;
    public String passwrod;

    public user()
    {
        
    }
    
    public user(String email, String password)
    {
        this.email = email;
        this.passwrod = password;
    }
    
    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPasswrod() {
        return passwrod;
    }

    public void setPasswrod(String passwrod) {
        this.passwrod = passwrod;
    }
    
    
}
