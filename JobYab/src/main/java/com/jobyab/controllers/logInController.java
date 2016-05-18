/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.jobyab.controllers;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Date;
import com.jobyab.models.*;
import com.jobyab.DAO.*;
import com.jobyab.entities.User;
import com.jobyab.services.Loginning;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Ali
 */
public class logInController extends HttpServlet {

    //private DataQuery query = new DataQuery();
    public logInController()
    {
        super();
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
        Loginning lgn = new Loginning();
        String email = java.net.URLDecoder.decode(request.getParameter("loginemail"), "UTF-8");
        String password = java.net.URLDecoder.decode(request.getParameter("loginpassword"), "UTF-8");
        userModel uM = lgn.authenticate(email, password);
  
        if (!uM.equals(null)){
            HttpSession session =request.getSession();
            session.setAttribute("user", uM);
            response.sendRedirect("mainPage.jsp");
        }
        
        /*if (query.loginControl(email, password)) {
            user u = new user(email, password, userType.type.jobSeeker, "", "", "تقی", "تقوی", new Date());
            HttpSession session =request.getSession();
            session.setAttribute("user", u);
            response.sendRedirect("mainPage.jsp");
        } else {
            //incorrect password or useranme
        }*/
        
        
    }
}
