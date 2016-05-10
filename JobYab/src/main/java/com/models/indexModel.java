/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.models;

import java.util.Date;

/**
 *
 * @author Ali
 */

public class indexModel {
    
    private String logInEmail;
    private String logInPassword;
    
    private String registerEmail;
    private String registerPassword;
    private String registerFirstName;
    private String registerLastName;
    private Date registerBirthDate;
    private boolean registerUserType;
    private String registerCompanyName;
    private String registerCompanyTell;
    
    public indexModel()
    {
    }
    
    public String GetLogInEmail()
    {
        return this.logInEmail;
    }
    
    public String GetLogInPassword()
    {
        return this.logInPassword;
    }
    
    public String GetRegisterEmail()
    {
        return this.registerEmail;
    }
    
    public String GetRegisterPassword()
    {
        return this.registerPassword;
    }
    
    public String GetRegisterFirstName()
    {
        return this.registerFirstName;
    }
    
    public String GetRegisterLastName()
    {
        return this.registerLastName;
    }
    
    public Date GetRegisterBirthDate()
    {
        return this.registerBirthDate;
    }
    
    public String GetRegisterCompanyName()
    {
        return this.registerCompanyName;
    }
    
    public String GetRegisterCompanyTell()
    {
        return this.registerCompanyTell;
    }
    
    //0 means jobSeeker and 1 means employee
    public boolean GetUserType()
    {
        return this.registerUserType;
    }
    
    public void SetLogInEmail(String logInEmail)
    {
        this.logInEmail = logInEmail;
    }
    
    public void SetLogInPassword(String logInPassword)
    {
        this.logInPassword = logInPassword;
    }
    
    public void SetRegisterEmail(String registerEmail)
    {
        this.registerEmail = registerEmail;
    }
    
    public void SetRegisterPassword(String registerPassword)
    {
        this.registerPassword = registerPassword;
    }
    
    public void GetRegisterFirstName(String registerFirstName)
    {
        this.registerFirstName = registerFirstName;
    }
    
    public void SetRegisterLastName(String registerLastName)
    {
        this.registerLastName = registerLastName;
    }
    
    public void SetRegisterBirthDate(Date registerBirthDate)
    {
        this.registerBirthDate = registerBirthDate;
    }
    
    public void SetRegisterCompanyName(String registerCompanyName)
    {
        this.registerCompanyName = registerCompanyName;
    }
    
    public void SetRegisterCompanyTell(String registerCompanyTell)
    {
        this.registerCompanyTell = registerCompanyTell;
    }
    
    //0 means jobSeeker and 1 means employee
    public void SetUserType(boolean registerUserType)
    {
        this.registerUserType = registerUserType;
    }
}
