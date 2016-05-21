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
import javax.servlet.http.HttpSession;

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
        userInfoUpdating infoUpdate = new userInfoUpdating();
        
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/plain");
        
        String email = request.getParameter("email");
        String pwd = request.getParameter("password");
        String city = request.getParameter("city");
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        
        
        if (email != null && pwd != null && firstName != null && lastName != null){
            userModel uM = (userModel) request.getSession().getAttribute("user");
            
            if ( infoUpdate.updateUser(uM, email, pwd, firstName, lastName, city )){
                 boolean ajax = "XMLHttpRequest".equals(request.getHeader("X-Requested-With"));
                if (ajax) {
                    HttpSession session =request.getSession();
                    session.setAttribute("user", uM);
                    response.getWriter().print("اطلاعات با موفقیت تغییر یافت!");
                } 
            }
            else{
                response.getWriter().print("خطایی رخ داده است!");
            }
        }
    }

}
