<%@page import="com.tech.blog.entities.Users"%>
<nav
	class="navbar navbar-expand-lg navbar-dark primary_background text-white">
	<a class="navbar-brand" href="index.jsp">TechBlog</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarSupportedContent"
		aria-controls="navbarSupportedContent" aria-expanded="false"
		aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>

	<div class="collapse navbar-collapse " id="navbarSupportedContent">
		<ul class="navbar-nav mr-auto">
			<li class="nav-item active"><a class="nav-link" href="#"><i
					class="fa-solid fa-house"></i> Home <span class="sr-only">(current)</span>
			</a></li>

			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle text-white" href="#"
				id="navbarDropdown" role="button" data-toggle="dropdown"
				aria-haspopup="true" aria-expanded="false"><i
					class="fa-solid fa-list"></i> Categories </a>
				<div class="dropdown-menu" aria-labelledby="navbarDropdown">
					<a class="dropdown-item" href="#">Action</a> <a
						class="dropdown-item" href="#">Another action</a>
					<div class="dropdown-divider"></div>
					<a class="dropdown-item" href="#">Something else here</a>
				</div></li>
			<li class="nav-item"><a class="nav-link text-white" href="#"><i
					class="fa-solid fa-address-book"></i> Contact</a></li>

			<!-- login logout button setting -->

			<%
			Users currUser = (Users) session.getAttribute("currentUser");
			if (currUser != null) {
			%>


		</ul>
		<form class="form-inline my-2 my-lg-0">

			<a href="#!" class="btn btn-outline-light my-2 my-sm-0 mr-2"
				data-toggle="modal" data-target="#exampleModal" type="submit"> <i
				class="fa fa-user-circle"></i> <%=currUser.getName()%></a> <a
				href="LogoutServlet" class="btn btn-light my-2 my-sm-0"> <i
				class="fa-solid fa-user fa-sm"></i> Logout
			</a>
		</form>
		<%
		} else {
		%>

		<li class="nav-item"><a class="nav-link text-white"
			href="login.jsp"><i class="fa-solid fa-right-to-bracket"></i>
				Login</a></li>

		</ul>
		<form class="form-inline my-2 my-lg-0">
			<input class="form-control mr-sm-2" type="search"
				placeholder="Search" aria-label="Search">
			<button class="btn btn-outline-light my-2 my-sm-0" type="submit">Search</button>
		</form>
		<%
		}
		%>

	</div>
</nav>