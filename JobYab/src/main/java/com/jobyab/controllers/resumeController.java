/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.jobyab.controllers;

import com.jobyab.models.userModel;
import com.jobyab.services.ResumeHandler;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Arrays;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author sajad
 */
public class resumeController extends HttpServlet {
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
        
        userModel uM = (userModel)request.getSession(false).getAttribute("user");
        
        ResumeHandler rHandler = new ResumeHandler();
        
        String skills = request.getParameter("skills");
        String langs = request.getParameter("langs");
        
        uM.setSkills(skills);
        
        
        List<String> skillList = Arrays.asList(skills.split("\\s*-\\s*"));
        List<String> langList = Arrays.asList(langs.split("\\s*-\\s*"));
        
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
