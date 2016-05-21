/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.jobyab.services;

import com.jobyab.DAO.*;
import com.jobyab.entities.Advertisement;
import com.jobyab.entities.Employer;
import java.util.List;
import com.jobyab.models.advertisementModel;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import javax.servlet.http.Part;
import org.apache.commons.io.FileUtils;
/**
 *
 * @author Ali
 */
public class AdsHandler {
    
    public AdsHandler(){
        
    }
    
//    public List<advertisement> getAds(){
//        
//    }
    
    public List<advertisementModel> getAds(int adsNumber){
        AdsDAO adsDAO = new AdsDAO();
        
        try{
            List<Advertisement> allAds = adsDAO.readAll();
            
            List<advertisementModel> resultList = new ArrayList<advertisementModel>();
            
            for(Advertisement ads : allAds){
                advertisementModel adsModel = new advertisementModel();
                
                adsModel.setTitle(ads.getAdTitle());
                adsModel.setContent(ads.getAdBody());
                adsModel.setCompanyName(ads.getCoId().getCoName());
                adsModel.setMinSalary(ads.getMinSalary());
                adsModel.setMaxSalary(ads.getMaxSalary());
                adsModel.setCompanyImageDir(ads.getCoId().getCoImage());
                adsModel.setAdsImageDir(ads.getAdImage());
                //Should set link attribute in adsModel (to link to company profile)
            }
            
            return resultList;
        }
        catch(Exception e){
            return null;
        }
    }
    
    public boolean addAds(advertisementModel adsModel){
        
        CoreDAO<Advertisement> adsDAO = new CoreDAO<Advertisement>(Advertisement.class);
        
        Advertisement ads = new Advertisement();
        
        ads.setAdTitle(adsModel.getTitle());
        ads.setAdBody(adsModel.getContent());
        ads.setAdType(adsModel.getType());
        ads.setMaxSalary(adsModel.getMaxSalary());
        ads.setMinSalary(adsModel.getMinSalary());
        ads.setAdImage(adsModel.getAdsImageDir());
        
        employerDAO eDAO = new employerDAO();
        Employer eObj = eDAO.findByName(adsModel.getCompanyName());
        
        if(eObj == null)
            return false;
        
        ads.setCoId(eObj);
        
        ads = adsDAO.add(ads);
        
        if(ads == null)
            return false;
        
        return true;
    }
    
    public String saveToPath(Part filePart){
        
        try{
            String filePath = "../../../../webapp/references/images/adsImages";
            String fileName = filePart.getSubmittedFileName();
            String fileExtention = fileName.substring(fileName.lastIndexOf('.') + 1);
            
            File file = new File(filePath);
            
            InputStream fileContent = filePart.getInputStream();
            
            //File targetFile = new File(filePath + fileName);
            File targetFile = File.createTempFile(fileName,
                                                  fileExtention,
                                                  file);
            
            byte[] buffer = new byte[fileContent.available()];
            fileContent.read(buffer);
            
            OutputStream outputStream = new FileOutputStream(targetFile);
            outputStream.write(buffer);
            
            return filePath + fileName;
        }
        catch(Exception e){
            return null;
        }
        
    }
    
}
