<%@page import="com.tech.blog.entities.Message"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<%@ include file="all_components/allcss.jsp"%>
</head>
<body>
	<!-- navbar -->
	<%@ include file="all_components/navbar.jsp"%>

	<main
		class="d-flex align-items-center primary_background banner_background"
		style="height: 80vh">

		<div class="container">
			<div class="row">
				<div class="col-md-4 offset-md-4">
					<div class="card">
						<div
							class="card-header text-center secondary_background text-white">
							<span class="fa fa-user-plus "></span>
							<p>Login</p>
						</div>
						<%
							Message loginfail = (Message) session.getAttribute("failed");
							if (loginfail != null) {
							%>
							<div class="alert <%= loginfail.getCsstype() %>" role="alert"><%= loginfail.getContent() %></div>
							<%
							
							session.removeAttribute("failed");
							}
							%>
							
							<%
							Message logoutMsg = (Message) session.getAttribute("logout");
							if (logoutMsg != null) {
							%>
							<div class="alert <%= logoutMsg.getCsstype() %>" role="alert"><%= logoutMsg.getContent() %></div>
							<%
							
							session.removeAttribute("logout");
							}
							%>
							
							<%
							Message loginError = (Message) session.getAttribute("login-error");
							if (loginError != null) {
							%>
							<div class="alert <%= loginError.getCsstype() %>" role="alert"><%= loginError.getContent() %></div>
							<%
							
							session.removeAttribute("login-error");
							}
							%>

						<div class="card-body">
							<form action="LoginServlet" method="POST">
								<div class="form-group">
									<label for="exampleInputEmail1">Email address</label> <input
										name="email" required type="email" class="form-control"
										id="exampleInputEmail1" aria-describedby="emailHelp"
										placeholder="Enter email">

								</div>
								<div class="form-group">
									<label for="exampleInputPassword1">Password</label> <input
										name="password" required type="password" class="form-control"
										id="exampleInputPassword1" placeholder="Password">
								</div>

								<div class="form-group">
									<label for="exampleInputPassword1">New user,</label> <a
										href="register.jsp">Click me</a>
								</div>

								<div class="container text-center">
									<button type="submit" class="btn secondary_background ">Submit</button>
								</div>
							</form>
						</div>
					</div>

				</div>
			</div>
		</div>

	</main>

</body>
</html>