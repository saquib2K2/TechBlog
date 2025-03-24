package com.tech.blog.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.security.MessageDigest;

import com.tech.blog.dao.UserDao;
import com.tech.blog.entities.Message;
import com.tech.blog.entities.Users;
import com.tech.blog.helper.ConnectionProvider;


public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//data fetching
		String userEmail = request.getParameter("email");
		String userPassword = request.getParameter("password");
		
		UserDao dao = new UserDao(ConnectionProvider.getConnection());
		
	        Users user = dao.getUserByEmailAndPass(userEmail, userPassword);
	        HttpSession session;
	        if(user != null) {
	        	 session = request.getSession();
	        	session.setAttribute("currentUser", user);
	        	response.sendRedirect("profile.jsp");
	        	
	        }else {
	        	session = request.getSession();
	        	Message msg = new Message("invalid user name or password" , "loginError" ,"alert-danger");
	        	session.setAttribute("failed",msg);
	        	response.sendRedirect("login.jsp");
	        }
	}

}
