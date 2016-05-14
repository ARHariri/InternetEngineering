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
public class advertisement {
    
    public String title;
    public String content;
    public String link;
    public String companyName;
    public String companyImageDir;
    public String adsImageDir;

    public advertisement(String title, String content, String link, String companyName, String companyImageDir, String adsImageDir) {
        this.title = title;
        this.content = content;
        this.link = link;
        this.companyName = companyName;
        this.companyImageDir = companyImageDir;
        this.adsImageDir = adsImageDir;
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
