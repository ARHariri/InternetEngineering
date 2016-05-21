/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.jobyab.controllers;

import com.jobyab.models.advertisementModel;
import com.jobyab.models.userModel;
import com.jobyab.services.AdsHandler;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Ali
 */
public class addAdsController extends HttpServlet {

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        request.setCharacterEncoding("UTF-8");
        
        //Check validation on fields
        
        String adsTitle = request.getParameter("adsTitle");
        String adsContent = request.getParameter("adsContent");
        String adsType = request.getParameter("adsType");
        String minSalary = request.getParameter("minSalary");
        String maxSalary = request.getParameter("maxSalary");
        String tags = request.getParameter("tagList");
        
        advertisementModel adsModel = new advertisementModel();
        adsModel.setTitle(adsTitle);
        adsModel.setContent(adsContent);
        adsModel.setType(adsType);
        adsModel.setMinSalary(Integer.parseInt(minSalary));
        adsModel.setMaxSalary(Integer.parseInt(maxSalary));
        
        List<String> tagList = Arrays.asList(tags.split("\\s*,\\s*"));
        
        adsModel.setTags(tagList);
        
        userModel uM = (userModel)request.getSession(false).getAttribute("user");
        
        adsModel.setCompanyImageDir(uM.getImageDir());
        adsModel.setCompanyName(uM.getCompanyName());
        
        AdsHandler adsHandler = new AdsHandler();
        
        if(adsHandler.addAds(adsModel)){
            response.sendRedirect("addAds.jsp?");
        }
        
        
    }

}
