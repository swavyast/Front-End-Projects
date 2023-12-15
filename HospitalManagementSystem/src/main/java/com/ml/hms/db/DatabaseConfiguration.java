package com.ml.hms.db;

import java.sql.Connection;
import java.sql.DriverManager;

public class DatabaseConfiguration {
    private static Connection con = null;

    static {
	try {
	    Class.forName("com.mysql.cj.jdbc.Driver");
	    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hmsDB", "root", "68921794");
	} catch (Exception e) {
	    System.out.println("Database connection could not be established : ");
	    e.printStackTrace();
	}
    }

    public static Connection getMySQLConnection() {

	return con;
    }

}
