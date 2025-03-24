<%@page import="com.tech.blog.entities.Message"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
Users user1 = (Users) session.getAttribute("currentUser");
if (user1 == null) {
	Message msg = new Message("please Login", "error", "alert-danger");
	session.setAttribute("login-error", msg);
	response.sendRedirect("login.jsp");

}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="all_components/allcss.jsp"%>
</head>
<body>

	<!-- navbar -->

	<%@ include file="all_components/navbar.jsp"%>

	<!-- nav bar end -->


	<!-- modal start -->


	<!-- Modal -->
	<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header primary_background text-white">
					<h5 class="modal-title " id="exampleModalLabel">Techblog</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<div class="container text-center">
						<%
						if (user1 != null) {
						%>
						<img alt="default.png" src="img/profile/<%=user1.getProfile()%>"
							style="max-width: 100px; border-radius: 50%;">
						<h5 class="modal-title " id="exampleModalLabel "><%=user1.getName()%></h5>

						<div id="profile-details">

							<table class="table">

								<tbody>
									<tr>
										<th scope="row">Id:</th>
										<td><%=user1.getId()%></td>

									</tr>
									<tr>
										<th scope="row">Email:</th>
										<td><%=user1.getEmail()%></td>

									</tr>
									<tr>
										<th scope="row">Gender</th>
										<td><%=user1.getGender()%></td>

									</tr>
									<tr>
										<th scope="row">Registered on</th>
										<td><%=user1.getRdate().toString()%></td>

									</tr>
								</tbody>
							</table>
						</div>


						<!-- profile edit  -->



						<div id="profile-edit" style="display: none;">
							<h2>Edit</h2>
							<form action="EditServlet" method="POST" enctype="multipart/form-data">


								<table class="table">

									<tr>
										<td>ID :</td>
										<td><%=user1.getId()%></td>
									</tr>
									<tr>
										<td>Email :</td>
										<td> <input name ="user_email" type="email" class="form-control" value="<%= user1.getEmail()%>"></td>
									</tr>
									<tr>
										<td>Name :</td>
										<td> <input name ="user_name" type="text" class="form-control" value="<%= user1.getName()%>"></td>
									</tr>
									<tr>
										<td>password :</td>
										<td> <input name ="user_pass" type="password" class="form-control" value="<%= user1.getPassword()%>"></td>
									</tr>
									
									<tr>
										<td>Gender :</td>
										<td><%= user1.getGender().toUpperCase() %></td>
									</tr>
									
									<tr>
										<td>New profile :</td>
										<td><input type="file" name = "image" class="form-control"></td>
									</tr>
								</table>
								
								<div class="container">
								<button class="btn btn-outline-primary" type="submit">Save</button>
								</div>

				
							</form>

						</div>
						<%
						}
						%>
					</div>

				</div>
				<div class="modal-footer">
					
					<button id="edit-profile-button" type="button"
						class="btn btn-primary">Edit</button>
				</div>
			</div>
		</div>
	</div>
	<!-- modal end -->


	<script>
		$(document).ready(function() {

			let editStatus = false;

			$('#edit-profile-button').click(function() {

				if (editStatus == false) {

					$('#profile-details').hide();
					$('#profile-edit').show();

					editStatus = true;
					$(this).text("Back");
				} else {

					$('#profile-details').show();
					$('#profile-edit').hide();

					editStatus = false;
					$(this).text("Edit");
				}

			})
		})
	</script>



</body>
</html>












