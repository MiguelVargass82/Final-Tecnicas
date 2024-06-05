/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.mycompany.finalproject.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import LogicClasses.Person;
import java.util.Set;


@WebServlet(name = "SvCurriculum", urlPatterns = {"/SvCurriculum"})
public class SvCurriculum extends HttpServlet {
    
    
Person person1 = new Person();  //Instance for the program
 
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        
        
        //The values 
        String choose = request.getParameter("choose");
        System.out.println("the choose was: "+choose);
        switch (choose) {
            //Modifiy
            
            case "1":   //General information
                
                break;
                
            case "2":   //Experience
                break;
                      
            case "3":   //Skills
                break;
            
             //Delete paths
                
                
              case "1.1":   //delete general information
                  person1.setGeneralInformation("");                 
                break;                              
            case "2.1":   //delete Experience
                person1.setExperience("");
                break;
            
            case "3.1":   //Delete Skills
                person1.setSkills("");
                break;
                
                             
            default:
                break;
        }
        
        
        
        
        
        
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
