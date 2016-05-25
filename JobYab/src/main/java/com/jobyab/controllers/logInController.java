/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.jobyab.controllers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.jobyab.models.*;
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
        userModel uM = lgn.authenticate(email, password);
  
        if (uM != null){
            HttpSession session =request.getSession();
            
            uM.setLogInned(true);
            
            session.setAttribute("user", uM);
            response.sendRedirect("mainPage.jsp");
        }
        else{
            uM.setLogInned(false);
            response.sendRedirect("index.jsp");
        }        
    }
}
