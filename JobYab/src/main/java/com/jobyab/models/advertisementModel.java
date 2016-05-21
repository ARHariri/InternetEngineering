/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.jobyab.models;

import java.util.List;

/**
 *
 * @author Ali
 */
public class advertisementModel {
    
    private String title;
    private String content;
    private String link;
    private String companyName;
    private String companyImageDir;
    private String adsImageDir;
    private int minSalary;
    private int maxSalary;
    private List<String> tags;
    private String type;
    
    public advertisementModel(){
        
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public List<String> getTags() {
        return tags;
    }

    public void setTags(List<String> tags) {
        this.tags = tags;
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
    
    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getLink() {
        return link;
    }

    public void setLink(String link) {
        this.link = link;
    }

    public String getCompanyName() {
        return companyName;
    }

    public void setCompanyName(String companyName) {
        this.companyName = companyName;
    }

    public String getCompanyImageDir() {
        return companyImageDir;
    }

    public void setCompanyImageDir(String companyImageDir) {
        this.companyImageDir = companyImageDir;
    }

    public String getAdsImageDir() {
        return adsImageDir;
    }

    public void setAdsImageDir(String adsImageDir) {
        this.adsImageDir = adsImageDir;
    }
    
    
    
}
