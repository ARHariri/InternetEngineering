/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.jobyab.services;

import com.jobyab.DAO.*;
import com.jobyab.entities.Advertisement;
import com.jobyab.entities.Employer;
import com.jobyab.entities.Tags;
import java.util.List;
import com.jobyab.models.advertisementModel;
import java.awt.Image;
import java.awt.image.RenderedImage;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import javax.faces.view.facelets.Tag;
import javax.imageio.ImageIO;
import javax.servlet.http.Part;
import org.apache.commons.io.FileUtils;
/**
 *
 * @author Ali
 */
public class AdsHandler {
    
    private Part filePart;
    
    public AdsHandler(){
        
    }

    public Part getFilePart() {
        return filePart;
    }

    public void setFilePart(Part filePart) {
        this.filePart = filePart;
    }
    
    public List<advertisementModel> getAds(){
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
                
                resultList.add(adsModel);
            }
            
            return resultList;
        }
        catch(Exception e){
            return null;
        }
    }
    
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
        
        switch(adsModel.getType()){
            case "fullTime": ads.setAdType("تمام وقت");
                break;
            case "partTile": ads.setAdType("نیمه وقت");
                break;
            case "remote": ads.setAdType("دورکاری");
                break;
            case "training": ads.setAdType("کارآموزی");
                break;
                
        }
        
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
        
        //Saving image
        if(filePart != null && filePart.getSize() > 0){
            String dir = saveToPath(filePart, ads.getAdId());
            
            if(dir == null)
                return false;
            
            AdsDAO aDAO = new AdsDAO();
            aDAO.updateImageDir(ads.getAdId(), dir);
        }
        
        //Adding tags to tag table
        if(!addingTags(adsModel.getTags(), ads, adsDAO))
            return false;
        
        return true;
    }
    
    private String saveToPath(Part filePart, short adsID){
        
        try{
            //new File(desiredPath + "\\image\\ads").mkdirs();
            
            
            String filePath = "C:\\Users\\Ali\\Documents\\IE\\InternetEngineering\\"
                            + "JobYab\\src\\main\\webapp\\references\\images\\adsImages\\";
            String fileName = filePart.getSubmittedFileName();
            String fileExtention = fileName.substring(fileName.lastIndexOf('.') + 1);
            
            InputStream fileContent = filePart.getInputStream();
            
            Image image = ImageIO.read(fileContent);
            
            ImageIO.write((RenderedImage) image, fileExtention,new File(filePath + String.valueOf(adsID) + "." + fileExtention));
            
            return "references/images/adsImages/" + String.valueOf(adsID) + "." + fileExtention;
        }
        catch(Exception e){
            return null;
        }
        
    }
    
    private boolean addingTags(List<String> tagList, Advertisement ads, CoreDAO<Advertisement> adsDAO){
        
        try{
            TagsDAO tDAO = new TagsDAO();
        
            List<Tags> tagObjs = tDAO.readAll();

            Map<String, Short> tagDetail = new HashMap<String, Short>();

            for(Tags tag : tagObjs){
                tagDetail.put(tag.getTagName(), tag.getTagId());
            }

            for(String tag : tagList){
                CoreDAO<Tags> tagDAO = new CoreDAO<Tags>(Tags.class);


                if(tagDetail.containsKey(tag)){
                    Tags t = tDAO.readByName(tag);
                    
                    ads.getTagsCollection().add(t);
                    
                    adsDAO.mergeAds(ads);
//                    Collection<Tags> tagCollection = ads.getTagsCollection();
//                    
//                    Tags t = new Tags();
//                    t.setTagName(tag);
//                    
//                    tagCollection.add(t);
//                    
//                    ads.setTagsCollection(tagCollection);
//                    Tags tObj = tagDAO.read(tagDetail.get(tag));
//
//                    Collection<Advertisement> adsCollection = tObj.getAdvertisementCollection();
//
//                    adsCollection.add(ads);
                }
                else{
                    //Add tag Name to tag table

                    Tags tObj = new Tags();
                    tObj.setTagName(tag);

                    tObj = tagDAO.add(tObj);
                    
                    ads.getTagsCollection().add(tObj);
                    
                    adsDAO.mergeAds(ads);
//                    Collection<Tags> tagCollection = ads.getTagsCollection();
//                    
//                    tagCollection.add(tObj);
//                    
//                    ads.setTagsCollection(tagCollection);
                }

            }
            
            return true;
        }
        catch(Exception e){
            return false;
        }
        
    }
    
}
