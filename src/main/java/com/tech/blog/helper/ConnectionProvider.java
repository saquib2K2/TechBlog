package com.tech.blog.helper;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectionProvider {

	private static Connection con;
	private static final String url = "jdbc:postgresql://127.0.0.1:5432/techblog";
	private static final String username = "postgres";
	private static final String password = "root";
	
	
	public static Connection getConnection() {
		
		try {
			if(con == null) {

				//load driver
				Class.forName("org.postgresql.Driver");
				System.out.println("connection build ho gaya h...");
				
				//creating connection
				con = DriverManager.getConnection(url,username , password);
			}
			
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return con;
	}
	
	
}
