/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.jobyab.models;

import com.jobyab.auxiliaries.userType;
import java.util.Date;

/**
 *
 * @author Ali
 */
public class user {
    public String email;
    public String passwrod;
    public userType.type type;

    public String companyName;
    public String companyTell;
    
    public String firstName;
    public String lastName;
    public Date birthDate;
    
    public user()
    {
        
    }

    public user(String email, String passwrod, userType.type type, String companyName, String companyTell, String firstName, String lastName, Date birthDate) {
        this.email = email;
        this.passwrod = passwrod;
        this.type = type;
        this.companyName = companyName;
        this.companyTell = companyTell;
        this.firstName = firstName;
        this.lastName = lastName;
        this.birthDate = birthDate;
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

    public userType.type getType() {
        return type;
    }

    public void setType(userType.type type) {
        this.type = type;
    }

    public String getCompanyName() {
        return companyName;
    }

    public void setCompanyName(String companyName) {
        this.companyName = companyName;
    }

    public String getCompanyTell() {
        return companyTell;
    }

    public void setCompanyTell(String companyTell) {
        this.companyTell = companyTell;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public Date getBirthDate() {
        return birthDate;
    }

    public void setBirthDate(Date birthDate) {
        this.birthDate = birthDate;
    }
    
    
}
