/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.jobyab.services;

import com.jobyab.DAO.AdsDAO;
import java.util.List;
import com.jobyab.models.advertisementModel;
import com.jobyab.entities.Advertisement;
import com.jobyab.entities.Tags;
import java.util.ArrayList;
/**
 *
 * @author Ali
 */
public class search {
 
    private List<String> tagList;
    private int minSalary;
    private int maxSalary;
    private String jobTime;     //Like full time, part time and ...
    private String title;
    private String jobKind;
    
    private boolean searchByTag;
    private boolean searchByMinSalary;
    private boolean searchByMaxSalary;
    private boolean searchByJobTime;
    private boolean searchByTitle;
    private boolean searchByJobKind;
    
    public search(){
        
    }
    
    public List<String> getTagList() {
        return tagList;
    }

    public void setTagList(List<String> tagList) {
        this.tagList = tagList;
    }

    public int getMinSalary() {
        return minSalary;
    }

    public void setMinSalary(int minSalary) {
        this.minSalary = minSalary;
    }

    public int getMaxSalary() {
        return maxSalary;
    }

    public void setMaxSalary(int maxSalary) {
        this.maxSalary = maxSalary;
    }

    public String getJobTime() {
        return jobTime;
    }

    public void setJobTime(String jobTime) {
        this.jobTime = jobTime;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getJobKind() {
        return jobKind;
    }

    public void setJobKind(String jobKind) {
        this.jobKind = jobKind;
    }

    public void setSearchByTag(boolean searchByTag) {
        this.searchByTag = searchByTag;
    }

    public void setSearchByMinSalary(boolean searchByMinSalary) {
        this.searchByMinSalary = searchByMinSalary;
    }

    public void setSearchByMaxSalary(boolean searchByMaxSalary) {
        this.searchByMaxSalary = searchByMaxSalary;
    }

    public void setSearchByJobTime(boolean searchByJobTime) {
        this.searchByJobTime = searchByJobTime;
    }

    public void setSearchByTitle(boolean searchByTitle) {
        this.searchByTitle = searchByTitle;
    }

    public void setSearchByJobKind(boolean searchByJobKind) {
        this.searchByJobKind = searchByJobKind;
    }
    
    public List<advertisementModel> getResult(){
        
        try{
            String tagCondition = tagWhere(tagList);
            String salaryCondition = salaryWhere(minSalary, maxSalary);
            String restCondition = restWhere(jobTime, title, jobKind);

            AdsDAO adsDAO = new AdsDAO();
            List<Advertisement> adsResultList = adsDAO.readByDetails(tagCondition, salaryCondition, restCondition);

            List<advertisementModel> adsModelList = new ArrayList<advertisementModel>();

            for(Advertisement ads : adsResultList){
                advertisementModel adsModel = new advertisementModel();

                adsModel.setAdsImageDir(ads.getAdImage());
                adsModel.setCompanyImageDir(ads.getCoId().getCoImage());
                adsModel.setCompanyName(ads.getCoId().getCoName());
                adsModel.setContent(ads.getAdBody());
                adsModel.setMaxSalary(ads.getMaxSalary());
                adsModel.setMinSalary(ads.getMinSalary());
                
                
                List<String> tagList = new ArrayList<String>();
                
                for(Tags tag : ads.getTagsCollection()){
                    tagList.add(tag.getTagName());
                }
                
                
                adsModel.setTags(tagList);
                adsModel.setTitle(ads.getAdTitle());
                adsModel.setType(ads.getAdType());

                adsModelList.add(adsModel);
            }

            return adsModelList;
        }
        catch(Exception e){
            return null;
        }
        
    }

    private String tagWhere(List<String> tagList){
        
        if(!searchByTag)
            return null;
        
        String result = "";
        
        if(tagList.size() >= 1){
            result = " tag_name = " + tagList.get(0);
        }
        
        for(int index=1; index<tagList.size(); index++){
            result += " or tag_name = " + tagList.get(index);
        }
        
        return result;
    }
    
    private String salaryWhere(int minSalary, int maxSalary){
        
        if(searchByMinSalary && searchByMaxSalary)
            return "minSalary >= " + minSalary
                   + "and maxSalary <= " + maxSalary;
        
        else if(searchByMinSalary && !searchByMaxSalary)
            return "minSalary >= " + minSalary;
        else if(!searchByMinSalary && searchByMaxSalary)
            return "maxSalary <= " + maxSalary;
        else if(!searchByMinSalary && !searchByMaxSalary)
            return null;
        
        return null;
    }
    
    private String restWhere(String jobTime, String title, String jobKind){
        
        if(searchByJobTime && searchByTitle && searchByJobKind)
            return "ad_type = " + jobTime +
                   "ad_title like %" + title + "%" +
                   "ad_body like %" + jobKind + "%";
        else if(!searchByJobTime && searchByTitle && searchByJobKind)
            return "ad_title like %" + title + "%" +
                   "ad_body like %" + jobKind + "%";
        else if(searchByJobTime && !searchByTitle && searchByJobKind)
            return "ad_type = " + jobTime +
                   "ad_body like %" + jobKind + "%";
        else if(searchByJobTime && searchByTitle && !searchByJobKind)
            return "ad_type = " + jobTime +
                   "ad_title like %" + title + "%";
        else if(!searchByJobTime && !searchByTitle && searchByJobKind)
            return "ad_body like %" + jobKind + "%";
        else if(!searchByJobTime && searchByTitle && !searchByJobKind)
            return "ad_title like %" + title + "%";
        else if(searchByJobTime && !searchByTitle && !searchByJobKind)
            return "ad_type = " + jobTime;
        else if(!searchByJobTime && !searchByTitle && !searchByJobKind)
            return null;
        
        return null;
    }
    
}
