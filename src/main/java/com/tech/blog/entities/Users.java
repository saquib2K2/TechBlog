package com.tech.blog.entities;

import java.sql.Date;

public class Users {

	private int id;
	private String name;
	private String email;
	private String gender;
	private String password;
	private Date rdate;
	private String profile;
	
	public String getProfile() {
		return profile;
	}

	public void setProfile(String profile) {
		this.profile = profile;
	}

	public Users() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Users(int id, String name, String email, String grnder, String password, Date rdate) {
		super();
		this.id = id;
		this.name = name;
		this.email = email;
		this.gender = grnder;
		this.password = password;
		this.rdate = rdate;
	}

	public Users(String name, String email, String grnder, String password) {
		super();
		this.name = name;
		this.email = email;
		this.gender = grnder;
		this.password = password;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String grnder) {
		this.gender = grnder;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Date getRdate() {
		return rdate;
	}

	public void setRdate(Date rdate) {
		this.rdate = rdate;
	}
	
	
	
}
