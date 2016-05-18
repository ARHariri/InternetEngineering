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
        String email = request.getParameter("loginemail");
        String password = request.getParameter("loginpassword");
        
        userModel uM = new userModel();
        User u = lgn.authenticate(email, password);
        if (!u.equals(null)){
            
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
