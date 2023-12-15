package com.ml.hms.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import com.ml.hms.entity.User;

public class UserDao {

    private Connection con = null;
    private int statusCode;

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
    
    
    

}
