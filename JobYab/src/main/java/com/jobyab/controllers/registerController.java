/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.jobyab.controllers;

import com.jobyab.entities.User;
import com.jobyab.models.userModel;
import com.jobyab.services.Registering;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;
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
        
        
        userModel uM = new userModel();
        
        uM.setEmail(request.getParameter("email"));
        uM.setPasswrod(request.getParameter("password"));
        String kind = request.getParameter("userKind");
        
        kind = kind.toLowerCase();
            
        switch(kind){
            case "jobseeker":{
                uM.setFirstName(request.getParameter("firstName"));
                uM.setLastName(request.getParameter("lastName"));
                uM.setKind("jobseeker");
                
                String date = request.getParameter("birthYear") + "/"
                            + request.getParameter("birthMonth") + "/"
                            + request.getParameter("birthDay");
                
                try {
                    
                    SimpleDateFormat formater = new SimpleDateFormat("yyyy/mm/dd");
                    Date birthDate = formater.parse(date);
                    
                    uM.setBirthDate(birthDate);
                    
                    if(rgstr.registerJobSeeker(uM))
                        response.sendRedirect("success.jsp");
                    response.sendRedirect("failregister.jsp");
                    
                } catch (Exception e) {
                    
                    response.sendRedirect("failregister.jsp");
                }
            }
            break;
                    
            case "employer":{
                uM.setCompanyName(request.getParameter("companyName"));
                uM.setCompanyTell(request.getParameter("companyTel"));
                uM.setKind("employer");
                
                try {
                    
                    if(rgstr.registerEmployer(uM))
                        response.sendRedirect("success.jsp");
                    
                    response.sendRedirect("failregister.jsp");
                    
                } catch (Exception e) {
                    
                    response.sendRedirect("failregister.jsp");
                }
            }
            break;
                    
            default: response.sendRedirect("index.jsp");
        }
        
    }
}
