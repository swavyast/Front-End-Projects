<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@include file="components/allcss.jsp"%>
<title>User Login</title>
</head>
<body>
	<header>
		<%@include file="components/navbar.jsp"%>
	</header>

	<!--=========================== login =========================== -->

	<div class="container p-5 text-decoration-none">
		<%-- 	<div class = "container-fluid text-light bg-success text-center" style="border-top:1px solid white; display:hidden;">
	<span class = "fs-6">
	<% 
		Object o = request.getSession().getAttribute("response");
		String res = o.toString();
		out.println(res);
	%>
	</span>
	</div> --%>
		<p class="fs-5 text-center mt-5 text-info">
			New User ? <a class="text-light bg-success clink p-2 m-2"
				href="registration.jsp"> Register here</a>
		</p>

		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card card-shadow">
					<p class="fs-6 text-center mt-5">User Login</p>
					<div class="card-body">
						<form method="post" action="user">
							<input class="col-md-12 p-2 mt-4" name="uname" type="email"
								placeholder="Email or Username" required> <input
								class="col-md-12 p-2 mt-4" name="pwd" type="password"
								placeholder="Password" required> <input
								class="btn btn-prmary bg-success col-md-12 p-2 mt-5"
								type="submit" value="Login">
						</form>
						<!-- 						<p class="card-caption">I'll write something about this card
							in future.</p> -->
						<div class="clearfix">
							<p class="fs-6 text-center mt-5 floatleft">
								<a class="text-light bg-secondary p-1 m-1"
									href="doctor-login.jsp"> Doctor Login</a>
							</p>
							<p class="fs-6 text-center mt-5 floatright">
								<a class="text-light bg-secondary p-1 m-1"
									href="admin-login.jsp"> Admin Login</a>
							</p>
						</div>
					</div>

				</div>
			</div>

		</div>
	</div>


	<!--=========================== login =========================== -->

	<!--=========================== footer =========================== -->

	<%@include file="components/footer.jsp"%>

	<!--=========================== footer =========================== -->
	<%@include file="components/allscripts.jsp"%>
</body>
</html>