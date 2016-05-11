/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.jobyab.models;

import java.util.Date;

/**
 *
 * @author Ali
 */
public class jobSeeker extends user {
    public String firstName;
    public String lastName;
    public Date birthDate;

    public jobSeeker(String firstName, String lastName, Date birthDate, String email, String password) {
        super(email, password);
        this.firstName = firstName;
        this.lastName = lastName;
        this.birthDate = birthDate;
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
