package com.hello.hellospring.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
 
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
 
public class RegisterServlet extends HttpServlet {
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
 
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
 
        String n = request.getParameter("fname");
        String p = request.getParameter("lname");
        String e = request.getParameter("work");
        String a = request.getParameter("nonwork");
        String b = request.getParameter("ssn");
        
 
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/employee", "root", "1234!@#$");
 
            PreparedStatement ps = con
                    .prepareStatement("insert into emp_detail values(?,?,?,?,?)");
 
            ps.setString(1, n);
            ps.setString(2, p);
            ps.setString(3, e);
            ps.setString(4, a);
            ps.setString(5, b);
           
 
            int i = ps.executeUpdate();
            if (i > 0)
            	 response.sendRedirect("result.jsp");
        
 
        } catch (Exception e2) {
            System.out.println(e2);
        }
 
        out.close();
    }
    }
 


