package com.ml.hms.servlet;

import java.io.IOException;

import com.ml.hms.entity.User;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
	try {
	    User u = new User();
	    String e = u.getEmail();
	    String p = u.getPassword();
	    
	    if(e == req.getParameter("uame") && p == req.getParameter("pwd")) {
		
	    }
	    
	} catch (Exception e) {
	    System.out.println("Problem occured in login servlet : check-out this log below for better insights into the problem");
	    e.printStackTrace();
	}
    }

    
}
