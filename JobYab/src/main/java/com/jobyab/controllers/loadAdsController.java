/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.jobyab.controllers;

import com.google.gson.Gson;
import com.jobyab.services.AdsHandler;
import com.jobyab.models.advertisementModel;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Ali
 */
public class loadAdsController extends HttpServlet {

    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String requestKind = request.getParameter("action");
        
        if(requestKind.compareToIgnoreCase("load") == 0){
            
            AdsHandler adsHandler = new AdsHandler();
            List<advertisementModel> adsList = adsHandler.getAds();
            
            String json = new Gson().toJson(adsList);
            
            response.setContentType("application/json");
            response.setCharacterEncoding("UTF-8");
            response.getWriter().write(json);
            //response.getWriter().write(adsXML(adsList));
        }
    }
    
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
        
    }
    
    
//    private String adsXML(List<advertisementModel> adsList){
//        
//        String result = "";
//        
//        for(advertisementModel adsModel : adsList){
//            
//            result += "<ads>";
//            result += "<adsTitle>" + adsModel.getTitle() + "</adsTitle>";
//            result += "<adsCompanyName>" + adsModel.getCompanyName()+ "</adsCompanyName>";
//            result += "<adsCompanyImage>" + adsModel.getCompanyImageDir()+ "</adsCompanyImage>";
//            result += "<adsContent>" + adsModel.getContent()+ "</adsContent>";
//            result += "<adsType>" + adsModel.getType()+ "</adsType>";
//            result += "<adsMinSalary>" + adsModel.getMinSalary()+ "</adsMinSalary>";
//            result += "<adsMaxSalary>" + adsModel.getMaxSalary()+ "</adsMaxSalary>";
//            
//            if(adsModel.getAdsImageDir() == null)
//                result += "<adsImage>null</adsImage>";
//            else
//                result += "<adsImage>" + adsModel.getAdsImageDir() + "</adsImage>";
//            
//            for(String tag : adsModel.getTags()){
//                result += "<adsTag>" + tag + "</adsTag>";
//            }
//            
//            result += "</ads>";
//        }
//        
//        return result;
//    }
}
