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
public class employee extends user {
    public String companyName;
    public String companyTell;

    public employee(String companyName, String companyTell, String email, String password) {
        super(email, password);
        this.companyName = companyName;
        this.companyTell = companyTell;
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
    
    
}
