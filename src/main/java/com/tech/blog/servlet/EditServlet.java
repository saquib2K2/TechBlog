package com.tech.blog.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.servlet.http.Part;

import java.io.IOException;
import java.nio.file.attribute.UserDefinedFileAttributeView;

import com.tech.blog.dao.UserDao;
import com.tech.blog.entities.Users;
import com.tech.blog.helper.ConnectionProvider;

/**
 * Servlet implementation class EditServlet
 */
@WebServlet("/EditServlet")
@MultipartConfig
public class EditServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EditServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		//fetching all data from profile
		
		String userEmail = request.getParameter("user_email");
		String userName = request.getParameter("user_name");
		String userPassword = request.getParameter("user_pass");
		
		Part part = request.getPart("image");
		String imageName = part.getSubmittedFileName();
		
		
		//get the user from the session
		
		HttpSession session = request.getSession();
		  Users user = (Users)session.getAttribute("currentUser");
		  user.setEmail(userEmail);
		  user.setName(userName);
		  user.setPassword(userPassword);
		  user.setProfile(imageName);
		  
		  
		  
		  //update in data-base
		  
		  UserDao dao = new UserDao(ConnectionProvider.getConnection());
		  
		  if(dao.updateUser(user)) {
			  System.out.println("Details updated successfully");
			  response.sendRedirect("profile.jsp");
		  }else {
			System.out.println("error occured not updated");
		}
		  
		  
		
		
	}

}

















