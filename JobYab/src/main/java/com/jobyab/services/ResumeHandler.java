/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.jobyab.services;

import com.jobyab.DAO.CoreDAO;
import com.jobyab.DAO.SkillsDAO;
import com.jobyab.DAO.TagsDAO;
import com.jobyab.DAO.UserDAO;
import com.jobyab.entities.Advertisement;
import com.jobyab.entities.Skills;
import com.jobyab.entities.Tags;
import com.jobyab.entities.User;
import com.jobyab.models.userModel;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 *
 * @author sajad
 */
public class ResumeHandler {

    public boolean addResume(userModel uModel){
        CoreDAO<User> uDAO = new CoreDAO<User>(User.class);
        User user = uDAO.read(uModel.getUserID());
        if(user == null)
            return false;
             
        if (submitResume(uModel.getSkillsList(), user))
                return true;
        return false;
    }
    
    public boolean submitResume(List<String> skillList, User user) {
        try{
            SkillsDAO sDAO = new SkillsDAO();
        
            List<Skills> skillObjs = sDAO.readAll();

            Map<String, Short> skillDetail = new HashMap<String, Short>();

            for(Skills skill : skillObjs){
                skillDetail.put(skill.getSkillName(), skill.getSkillId());
            }

            for(String skill : skillList){
                CoreDAO<Skills> skillDAO = new CoreDAO<Skills>(Skills.class);

                if(skillDetail.containsKey(skill)){
                    Skills sObj = skillDAO.read(skillDetail.get(skill));

                    Collection<User> adsCollection = sObj.getUserCollection();

                    adsCollection.add(user);
                }
                else{
                    //Add skill Name to skill table
                    Skills sObj = new Skills();
                    sObj.setSkillName(skill);
                    skillDAO.add(sObj);
                }

            }
            
            return true;
        }
        catch(Exception e){
            return false;
        }
        
    }
    
//    public boolean userSkillAdd(Skills sk, short userID){
//        SkillsDAO skDAO = new SkillsDAO();
//        
//    }
}
