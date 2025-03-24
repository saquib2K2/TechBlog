package com.tech.blog.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.tech.blog.entities.Users;

public class UserDao {
	private Connection con;

	public UserDao(Connection con) {
		super();
		this.con = con;
	}
	
	
	public boolean saveUser(Users user) {
		
		try {
			
			String query = "INSERT INTO users(name , email , gender, password) VALUES (?,?,?,?)";
			
			PreparedStatement pstmt =  con.prepareStatement(query);
			pstmt.setString(1, user.getName());
			pstmt.setString(2, user.getEmail());
			pstmt.setString(3, user.getGender());
			pstmt.setString(4, user.getPassword());
			
			int row = pstmt.executeUpdate();
			
			return row > 0;
			
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return false;
		}
		
		
	}
	
	
	public Users getUserByEmailAndPass(String email , String pass) {
		
		Users user=null ;
		
		
		try {
			
			String query = "SELECT * FROM users WHERE email=? AND password=?";
			
			PreparedStatement pstmt = con.prepareStatement(query);
			pstmt.setString(1, email);
			pstmt.setString(2, pass);
			
			ResultSet set = pstmt.executeQuery();
			
			if(set.next()) {
				user = new Users();
				user.setId(set.getInt("id"));
				user.setName(set.getString("name"));
				user.setEmail(set.getString("email"));
				user.setGender(set.getString("gender"));
				user.setPassword(set.getString("password"));
				user.setRdate(set.getDate("rdate"));
				user.setProfile(set.getString("profile"));
			}
			
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		
		
		return user;
		
		
		
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
