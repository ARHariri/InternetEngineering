/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.jobyab.controllers;

import com.google.gson.Gson;
import com.jobyab.models.advertisementModel;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.jobyab.services.search;
import java.util.Arrays;
import java.util.List;

/**
 *
 * @author Ali
 */
public class searchController extends HttpServlet {
    
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
        
        String titleInclude = request.getParameter("titleInclude");
        String bodyInclude = request.getParameter("bodyInclude");
        String tagInclude = request.getParameter("tagInclude");
        String adsType = request.getParameter("adsType");
        String minSalary = request.getParameter("minSalary");
        String maxSalary = request.getParameter("maxSalary");
        
        search srch = new search();
        
        switch(adsType){
            case "fullTime": srch.setJobTime("تمام وقت");
                break;
            case "partTime": srch.setJobTime("نیمه وقت");
                break;
            case "remote": srch.setJobTime("دورکاری");
                break;
            case "training": srch.setJobTime("کارآموزی");
                break;
            default: srch.setJobTime("تمام وقت");
        }
        
//        srch.setJobTime(adsType);
        srch.setMaxSalary(Integer.parseInt(maxSalary));
        srch.setMinSalary(Integer.parseInt(minSalary));
        srch.setTitle(adsType);
        srch.setJobKind(bodyInclude);
        
        List<String> tagList = Arrays.asList(tagInclude.split("\\s*-\\s*"));
        
        srch.setTagList(tagList);
        
        //Clear search options
        srch.setSearchByTitle(false);
        srch.setSearchByJobKind(false);
        srch.setSearchByTag(false);
        srch.setSearchByJobTime(false);
        srch.setSearchByMinSalary(false);
        srch.setSearchByMaxSalary(false);
        
        
        //Set search options
        if(!titleInclude.equals(""))
            srch.setSearchByTitle(true);
        
        if(!bodyInclude.equals(""))
            srch.setSearchByJobKind(true);
        
        if(!tagInclude.equals(""))
            srch.setSearchByTag(true);
        
        if(!adsType.equals(""))
            srch.setSearchByJobTime(true);
        
        if(!minSalary.equals(""))
            srch.setSearchByMinSalary(true);
        
        if(!maxSalary.equals(""))
            srch.setSearchByMaxSalary(true);
        
        
        List<advertisementModel> result = srch.getResult();
        
        String json = new Gson().toJson(result);
        
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        response.getWriter().write(json);
    }

}
