package com.tech.blog.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.awt.desktop.UserSessionEvent;
import java.io.IOException;
import java.nio.channels.ConnectionPendingException;

import com.tech.blog.dao.UserDao;
import com.tech.blog.entities.Users;
import com.tech.blog.helper.ConnectionProvider;


public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//fetch all data
		
		String name = request.getParameter("user_name");
		String email = request.getParameter("user_email");
		String gender = request.getParameter("gender");
		String pass = request.getParameter("user_pass");
		
		//create user obj and set all data init;
		Users user = new Users(name , email , gender , pass);
		
		
		//create a userDao obj
		UserDao dao = new UserDao(ConnectionProvider.getConnection());
		
		if(dao.saveUser(user)) {
			System.out.println("user added succesfully");
			response.sendRedirect("login.jsp");
		}else {
			System.out.println("user not added");
			response.sendRedirect("register.jsp");
			
		}
		
		
	}

}
