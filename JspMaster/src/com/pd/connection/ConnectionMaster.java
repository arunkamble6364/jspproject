package com.pd.connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionMaster {
	public static Connection getconnection()
	{
		Connection conn=null;
		String driver="com.mysql.jdbc.Driver";
		String url="jdbc:mysql://localhost:3306/smaster";
		String username="root";
		String password="Bob#pear1234";
    	
    	try {
			Class.forName(driver);
			return DriverManager.getConnection(url, username, password);
			
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    	
    	return conn;
		
	}
}
