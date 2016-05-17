/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.jobyab.controllers;

import com.jobyab.services.Registering;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Ali
 */
public class registerController extends HttpServlet {

    private Registering rgstr = new Registering();
    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
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
        
        String email = request.getParameter("email");
        String pwd = request.getParameter("password");
        String kind = request.getParameter("userKind");
        
        if(kind.compareToIgnoreCase("jobSeeker") == 0 || kind.compareToIgnoreCase("employer") == 0){
            if(rgstr.register(email, pwd, kind)){
//              RequestDispatcher rd = request.getRequestDispatcher("/success.jsp");
//              rd.forward(request, response);
                response.sendRedirect("success.jsp");
            }
            
            response.sendRedirect("failregister.jsp");
        }
        
        response.sendRedirect("index.jsp");
        
        /*Employee e = new Employee(10, email, pwd);
        if ( query.registerUser(e) ){
            // user register successfully
        }
        else{
            // user registeration proccess failed
        }*/
    }
}
