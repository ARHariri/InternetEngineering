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

/**
 *
 * @author Ali
 */
public class logInController extends HttpServlet {

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
        
        String email = request.getParameter("loginemail");
        String password = request.getParameter("loginpassword");
        
        jobSeeker js = new jobSeeker("Ali", "Alavi", new Date(), email, password);
        
        RequestDispatcher rd = request.getRequestDispatcher("/mainPage.jsp");
        rd.forward(request, response);
    }
}
