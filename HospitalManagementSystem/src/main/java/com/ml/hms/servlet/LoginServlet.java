package com.ml.hms.servlet;

import java.io.IOException;

import com.ml.hms.dao.UserDao;
import com.ml.hms.db.DatabaseConfiguration;
import com.ml.hms.entity.User;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    
    private String success = null;
    private String problem = null;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
	try {
	    User u = new User();
	    u.setEmail(req.getParameter("uname"));
	    u.setPassword(req.getParameter("pwd"));
	    
	    UserDao dao = new UserDao(DatabaseConfiguration.getMySQLConnection());
	    
	    u = dao.readUserDetails(u);
	    
	    if(u!=null) {
		success = "Login Successfull";
		System.out.println(success);
		success = "Welcome to mediHome";
		System.out.println(success);
	    }else {
		problem = "Sorry! we couldn't find any user by the details you provided";
		System.out.println(problem);
		problem = "Make sure your login details are correct, then try again, but be careful, login attempts may be limited";
		System.out.println(problem);
	    }
	    
	} catch (Exception e) {
	    System.out.println("Problem occured in login servlet : check-out this log below for better insights into the problem");
	    e.printStackTrace();
	}
    }

    
}
