<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="components/allcss.jsp"%>
<meta charset="UTF-8">
<title>User Registration</title>
</head>
<body>
	<!--=========================== header =========================== -->

	<header>
		<%@include file="components/navbar.jsp"%>
	</header>

	<!--=========================== header =========================== -->
	<div class="container p-5">


		<div class="row">


			<div class="col-md-8 offset-md-2 p-2">

				<div class="card pt-2 card-shadow">

					<div class="card-body p-2 mt-4">

						<p class="fs-5 text-center mt-5 text-info">
							Registered already?<a class="text-light bg-primary clink p-2 m-2"
								href="user-login.jsp">Login</a>
						</p>
						<div class="form-group mt-4 p-5">
							<form id="registration" action="registration" method="post">

								<input class="col-md-12 p-2 mt-2" value="" type="text"
									name="fname" placeholder="First Name" required> <input
									class="col-md-12 p-2 mt-2" value="" type="text" name="lname"
									placeholder="Last Name" required> <input
									class="col-md-12 p-2 mt-2" value="" type="date" name="dob"
									placeholder="Date of Birth" required> <input
									class="col-md-12 p-2 mt-2" value="" type="tel" name="phone"
									placeholder="Your Contact Number" required> <input
									class="col-md-12 p-2 mt-2" value="" type="email" name="email"
									placeholder="Enter Your Email" required> <input
									class="col-md-12 p-2 mt-2" value="" type="email"
									name="confirmemail" placeholder="Confirm Email" required>
								<input class="col-md-12 p-2 mt-2" value="" type="password"
									name="pwd" placeholder="Enter Your Password" required>
								<input class="col-md-12 p-2 mt-2" value="" type="password"
									name="confirmpwd" placeholder="Confirm Password" required>
								<label for="attach-file" class="fs-6 text-center mt-5">You
									can attach your profile picture here</label> <input value=""
									type="file" class="form-control-file p-2 mt-2" name="image"
									id="attach-file"> <input
									class="btn btn-prmary bg-success col-md-12 p-2 mt-5"
									type="submit" name="submit" value="Register">
							</form>
						</div>

					</div>

				</div>

			</div>


		</div>

	</div>
	<!--=========================== footer =========================== -->

	<%@include file="components/footer.jsp"%>

	<!--=========================== footer =========================== -->

	<!--=========================== scripts =========================== -->

	<%@include file="components/allscripts.jsp"%>

	<!--=========================== scripts =========================== -->
</body>
</html>