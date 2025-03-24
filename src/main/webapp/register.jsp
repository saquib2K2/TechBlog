<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register</title>
<!-- linking all css and cdn's -->
<%@ include file="all_components/allcss.jsp"%>
</head>
<body>

	<!-- navbar -->
	<%@ include file="all_components/navbar.jsp"%>

	<main class="d-flex align-items-center primary_background banner_background" style="padding-bottom: 50px;">
		<div class="container">
			<div class="col-md-6 offset-md-3">
				<div class="card ">
					<div class="card-header text-center secondary_background">
						<i class="fa fa-user-plus"></i>
						<p>Register</p>
					</div>
					<div class="card-body ">

						<form action="RegisterServlet" method="POST">

							<div class="form-group">
								<label for="exampleInputEmail1">Enter name</label> <input 
								name="user_name" type="text" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" placeholder="Enter name">

								<div class="form-group">
									<label for="exampleInputEmail1">Email address</label> <input
										name="user_email" type="email" class="form-control" id="exampleInputEmail1"
										aria-describedby="emailHelp" placeholder="Enter email">
								</div>

								<div class="form-group">
									<label for="exampleInputEmail1">Select gender</label> <br>
									<input type="radio" id="gender" name="gender" value="Male"> Male 
									<input	type="radio" id="gender" name="gender" value="Female"> Female
								</div>



								<div class="form-group">
									<label for="exampleInputPassword1">Password</label> <input
										name="user_pass" type="password" class="form-control"
										id="exampleInputPassword1" placeholder="Password">
								</div>

								<button type="submit" class="btn secondary_background ">Submit</button>
						</form>


					</div>
				</div>
			</div>
		</div>
	</main>


</body>
</html>