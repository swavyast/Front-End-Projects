package com.ml.hms.servlet;

import java.io.IOException;
import java.util.Enumeration;

import com.ml.hms.dao.UserDao;
import com.ml.hms.db.DatabaseConfiguration;
import com.ml.hms.entity.User;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@SuppressWarnings("serial")
@WebServlet("/user")
public class LoginServlet extends HttpServlet implements HttpSession {
    
    private String success;
    private String problem;
    private HttpSession session;
    private Cookie c;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
	try {
	    User u = new User();
	    String em = req.getParameter("uname");
	    String ps = req.getParameter("pwd");
	    u.setEmail(em);
	    u.setPassword(ps);
	    
	    UserDao dao = new UserDao(DatabaseConfiguration.getMySQLConnection());
	    
	    User user = dao.readUserDetails(u);
	    session = req.getSession();
	    if(user!=null) {
		success = "Login Successful <br>Welcome to mediHome";
		System.out.println(success);
		System.out.println(u);
		session.setAttribute("response", success);
		resp.sendRedirect("index.jsp");
		
	    }else {
		problem = "Sorry! we couldn't find any user by the details you provided\nMake sure your login details are correct, then try again\n(Do keep in mind that login attempts may be limited)";
		System.out.println(problem);
		session.setAttribute("response", problem);
		resp.sendRedirect("user-login.jsp");
	    }
	    
	} catch (Exception e) {
	    System.out.println("Problem occured in login servlet : check-out this log below for better insights into the problem");
	    e.printStackTrace();
	}
    }

    @Override
    public long getCreationTime() {
	long t = session.getCreationTime();
	
	return t;
    }

    @Override
    public String getId() {
	String s = session.getId();
	
	return s;
    }

    @Override
    public long getLastAccessedTime() {
	long t = session.getLastAccessedTime();
	
	return t;
    }

    @Override
    public void setMaxInactiveInterval(int interval) {
	session.getMaxInactiveInterval();
	
    }

    @Override
    public int getMaxInactiveInterval() {
	int i = session.getMaxInactiveInterval();
	
	return i;
    }

    @Override
    public Object getAttribute(String name) {
	Object o = session.getAttribute(name);
	
	return o;
    }

    @Override
    public Enumeration<String> getAttributeNames() {
	Enumeration<String> e = session.getAttributeNames();
	
	return e;
    }

    @Override
    public void setAttribute(String name, Object value) {
	session.setAttribute(name, value);
	
    }

    @Override
    public void removeAttribute(String name) {
	session.removeAttribute(name);
	
    }

    @Override
    public void invalidate() {
	session.invalidate();
	
    }

    @Override
    public boolean isNew() {
	boolean isNew = session.isNew();
	
	return isNew;
    }

    
}
