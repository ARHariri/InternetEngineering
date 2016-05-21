/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.jobyab.services;

import com.jobyab.DAO.CoreDAO;
import com.jobyab.DAO.UserDAO;
import com.jobyab.controllers.userProfileController;
import com.jobyab.entities.Jobseeker;
import com.jobyab.entities.User;
import com.jobyab.models.userModel;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author sajad
 */
public class userInfoUpdating {
    public boolean updateUser(userModel uModel, String newEmail, String newPwd, 
            String newFName, String newLName, String newCity){
        
            //Hash password by md5 algorithm
            MessageDigest md = null;
            try {
                md = MessageDigest.getInstance("MD5");
            } catch (NoSuchAlgorithmException ex) {
                Logger.getLogger(userProfileController.class.getName()).log(Level.SEVERE, null, ex);
            }
            md.update(newPwd.getBytes());
            byte[] bytes = md.digest();
            
            uModel.setEmail(newEmail);
            uModel.setPasswrod(new String(bytes));
            uModel.setCity(newCity);
            uModel.setFirstName(newFName);
            uModel.setLastName(newLName);
        UserDAO uDAO = new UserDAO();
        switch (uModel.getKind()){
            case "jobSeeker":{
                if (uDAO.jobSeekerUpdate(uModel)){
                    return true;
                }
            }
            break;
            
//            case "employer":{
//                if (uDAO.employerUpdate(uModel)){
//                    return true;
//                }
//            }
//            break;
                
            default:
                break;
        }
                
        return false;
    }
}
