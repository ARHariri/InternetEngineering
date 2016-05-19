/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.jobyab.controllers;

import com.jobyab.models.userModel;
import com.jobyab.services.userInfoUpdating;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author sajad
 */
public class userProfileController extends HttpServlet {

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
        userInfoUpdating update = new userInfoUpdating();
        
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        
        String email = request.getParameter("email");
        String pwd = request.getParameter("password");
        String city = request.getParameter("city");
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        
//        if (pwd != null || city != null || firstName != null || lastName != null){
//            userModel uM = update.update(email, pwd, city, firstName, lastName);
//            
//            if(uM != null){
//                
//            }
//          
        boolean ajax = "XMLHttpRequest".equals(request.getHeader("X-Requested-With"));
        if (ajax) {
            response.setContentType("text/plain");
            response.getWriter().print("اطلاعات با موفقیت تغییر یافت!");
        } 
        
    }

}
