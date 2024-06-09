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
    
    
Person person1 = new Person();
 
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
        String gInfo = request.getParameter("GenInformationtxt");
        String  exp = request.getParameter("Experiencetxt");
        String skills = request.getParameter("Skillstxt");
        
       
        System.out.println("the choose was: "+choose);
        System.out.println("the G info was: "+gInfo);
        System.out.println("the exp was: "+exp);
        System.out.println("the skills was: "+skills);

        
        switch (choose) {
            //Modifiy
            
            case "1":   //General information
                  request.setAttribute("choose", choose);

                 request.setAttribute("myText", gInfo);
                  request.getRequestDispatcher("modifyInformation.jsp").forward(request, response);

                break;
                
            case "2":   //Experience
                  request.setAttribute("choose", choose);

                 request.setAttribute("myText", exp);
                   request.getRequestDispatcher("modifyInformation.jsp").forward(request, response);

                break;
                      
            case "3":   //Skills
                 request.setAttribute("choose", choose);

                 request.setAttribute("myText", skills);
                   request.getRequestDispatcher("modifyInformation.jsp").forward(request, response);

                break;
            
             //Delete paths
                
                
              case "1.1":   //delete general information
                 request.getRequestDispatcher("index.jsp").forward(request, response);

                break;                     
                
            case "1.2":   //delete Experience
                 request.getRequestDispatcher("index.jsp").forward(request, response);
                

                break;
            
            case "1.3":   //Delete Skills
                 request.getRequestDispatcher("index.jsp").forward(request, response);

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
