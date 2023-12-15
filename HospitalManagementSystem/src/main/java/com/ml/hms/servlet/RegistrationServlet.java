package com.ml.hms.servlet;

import java.io.IOException;
import java.time.LocalDate;

import com.ml.hms.dao.UserDao;
import com.ml.hms.db.DatabaseConfiguration;
import com.ml.hms.entity.User;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@SuppressWarnings("serial")
@WebServlet("/registration")
public class RegistrationServlet extends HttpServlet {

    private String success = null;
    private String problem = null;
    private HttpSession session;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

	try {
	    
	    User u = new User();
	    u.setName(req.getParameter("fname") + " " + req.getParameter("lname"));
	    u.setDob(LocalDate.parse(req.getParameter("dob")));
	    u.setPhone(req.getParameter("phone"));
	    u.setEmail(req.getParameter("email"));
	    u.setPassword(req.getParameter("pwd"));

	    u.setImage(req.getParameter("image"));
	    UserDao udao = new UserDao(DatabaseConfiguration.getMySQLConnection());
	    boolean flag = udao.createUser(u);

	    if (flag) {
		success = "Dear " + u.getName() + "<br>You are registered successfully";
		session = req.getSession();
		session.setAttribute("response", success);
	    } else {
		problem = "Dear user, your registration could not be completed this time\n";
		problem += "<br>Please, try again after sometimes.";
		resp.setContentType(problem);
		session = req.getSession();
		session.setAttribute("response", problem);
	    }

	} catch (Exception e) {
	    System.out.println("RegistrationServlet caught an exception, go through logs for better understanding : ");
	    e.printStackTrace();
	}

    }

}
