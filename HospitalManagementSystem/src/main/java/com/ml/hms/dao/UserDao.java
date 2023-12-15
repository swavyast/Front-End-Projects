package com.ml.hms.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;

import com.ml.hms.db.DatabaseConfiguration;
import com.ml.hms.entity.User;
import com.mysql.cj.PreparedQuery;
import com.mysql.cj.protocol.Resultset;

public class UserDao {

    private Connection con = null;
    private int statusCode;
    private ResultSet r;

    public UserDao(Connection con) {
	this.con = con;
    }

    //create/register user
    
    
    public boolean createUser(User u) {

	try {
	    /*
	     * String create =
	     * "create table user(id int not null primary key auto_increment,name varchar(100),dob date,phone varchar(15),email varchar(150),password varchar(250),image varchar(1000));"
	     * ; con.prepareStatement(create).execute();
	     */

	    String sql = "insert into user(name, dob, phone, email, password, image) values (?,?,?,?,?, ?)";

	    PreparedStatement ps = con.prepareStatement(sql);
	    ps.setString(1, u.getName());
	    ps.setDate(2, Date.valueOf(u.getDob()));
	    ps.setString(3, u.getPhone());
	    ps.setString(4, u.getEmail());
	    ps.setString(5, u.getPassword());
	    ps.setString(6, u.getImage());
	    statusCode = ps.executeUpdate();

	} catch (Exception e) {
	    System.out.println(
		    "Database connection could not be established : For better insights go through the logs please \n");
	    e.printStackTrace();
	}

	return (statusCode == 1) ? true : false;
    }
    
    
    //Read user
    
    public User readUserDetails(User u) throws SQLException{
	
	String sql = "select * from user where id = "+u.getId()+";";
	
	PreparedStatement p = con.prepareStatement(sql);
	p.execute();
	r = p.getResultSet();
	u.setName(r.getString(1));
	u.setDob(LocalDate.parse(r.getDate("dob").toString()));
	u.setPhone(r.getString(3));
	u.setImage(r.getString(6));
	
	return (u.getEmail() == r.getString(4) && u.getPassword() == r.getString(5))?u:null;
	
    }
    

}
