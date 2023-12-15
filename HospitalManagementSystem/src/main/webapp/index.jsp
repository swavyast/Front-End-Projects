<%@page import="com.ml.hms.servlet.LoginServlet"%>
<%@page import="com.ml.hms.servlet.RegistrationServlet"%>
<%@page import="com.ml.hms.db.DatabaseConfiguration"%>
<%@page import="java.sql.Connection"%>
<%@page import="jakarta.servlet.http.HttpServlet.*"%>
<%@page import="jakarta.servlet.http.HttpSession"%>
<%@page import="java.util.*"%>
<%-- <%@page import="javax.servlet.ServletConrtext"%> --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="components/allcss.jsp"%>
<meta charset="UTF-8">
<title>MediHome</title>
</head>
<body>


	<!--=========================== header =========================== -->

	<header>
		<%@include file="components/navbar.jsp"%>
<div class = "container-fluid text-light bg-success text-center" style="border-top:1px solid white">
	<span class = "fs-6">
	<% 
		Object o = request.getSession().getAttribute("response");
		String result = o.toString();
		out.println(result);
	%>
	</span>
	</div>
	</header>

	<!--=========================== header =========================== -->

	<!--=========================== carousel =========================== -->

	<div id="carouselExampleIndicators" class="carousel slide"
		data-ride="carousel">
		<ol class="carousel-indicators">
			<li data-target="#carouselExampleIndicators" data-slide-to="0"
				class="active"></li>
			<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
			<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
		</ol>
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img class="d-block w-100" src="images/h1.jpg" alt="First slide">
			</div>
			<div class="carousel-item">
				<img class="d-block w-100" src="images/h2.jpg" alt="Second slide">
			</div>
			<div class="carousel-item">
				<img class="d-block w-100" src="images/h3.jpg" alt="Third slide">
			</div>
		</div>
		<a class="carousel-control-prev" href="#carouselExampleIndicators"
			role="button" data-slide="prev"> <span
			class="carousel-control-prev-icon" aria-hidden="true"></span> <span
			class="sr-only">Previous</span>
		</a> <a class="carousel-control-next" href="#carouselExampleIndicators"
			role="button" data-slide="next"> <span
			class="carousel-control-next-icon" aria-hidden="true"></span> <span
			class="sr-only">Next</span>
		</a>
	</div>

	<!--=========================== carousel =========================== -->

	<!--=========================== cards =========================== -->
<hr>
	<div class="container p-3">

		<p class="text-center fs-2">Key Features of our Hospital</p>

		<div class="row">

			<div class="col md-8 p-5">

				<div class="row">

					<div class="col-md-6">

						<div class="card card-shadow">

							<div class="card-body">

								<p class="fs-5">100% Safety</p>
								<p class="card-caption">I'll write something about this card
									in future.</p>

							</div>

						</div>

					</div>

					<div class="col-md-6">

						<div class="card card-shadow">

							<div class="card-body">

								<p class="fs-5">100% Safety</p>
								<p class="card-caption">I'll write something about this card
									in future.</p>

							</div>

						</div>
					</div>

					<div class="col-md-6 mt-2">
						<div class="card card-shadow">

							<div class="card-body">

								<p class="fs-5">100% Safety</p>
								<p class="card-caption">I'll write something about this card
									in future.</p>

							</div>

						</div>
					</div>

					<div class="col-md-6 mt-2">
						<div class="card card-shadow">

							<div class="card-body">

								<p class="fs-5">100% Safety</p>
								<p class="card-caption">I'll write something about this card
									in future.</p>

							</div>

						</div>
					</div>


				</div>

			</div>

			<div class="col md-4">

				<img class="steth" src="images/close-up-hand-with-stethoscope.jpg"
					alt="hand-with-stethoscope" width="400" height="300">

			</div>

		</div>

	</div>


	<!--=========================== cards =========================== -->


	<!--=========================== our team =========================== -->
<hr>
	<div class="container p-2">

		<p class="text-center fs-2">Our Team</p>

		<div class="row">

			<div class="col-md-3">

				<div class="card card-shadow">

					<div class="card-body">
						<img src="images/chimpmail.png" alt="chimpmaillogo">
						<p class="fs-5">100% Safety</p>
						<p class="card-caption">I'll write something about this card
							in future.</p>

					</div>

				</div>

			</div>

			<div class="col-md-3">

				<div class="card card-shadow">

					<div class="card-body">
						<img src="images/chimpmail.png" alt="chimpmaillogo">
						<p class="fs-5">100% Safety</p>
						<p class="card-caption">I'll write something about this card
							in future.</p>

					</div>

				</div>
			</div>

			<div class="col-md-3 mt-2">
				<div class="card card-shadow">

					<div class="card-body">
						<img src="images/chimpmail.png" alt="chimpmaillogo">
						<p class="fs-5">100% Safety</p>
						<p class="card-caption">I'll write something about this card
							in future.</p>

					</div>

				</div>
			</div>

			<div class="col-md-3 mt-2">
				<div class="card card-shadow">

					<div class="card-body">
						<img src="images/chimpmail.png" alt="chimpmaillogo">
						<p class="fs-5">100% Safety</p>
						<p class="card-caption">I'll write something about this card
							in future.</p>

					</div>

				</div>
			</div>


		</div>

	</div>
	<!--=========================== our team =========================== -->
	
	<!--=========================== footer =========================== -->
	
	<%@include file="components/footer.jsp"%>
	
	<!--=========================== footer =========================== -->
	
	<!--=========================== scripts =========================== -->

	<%@include file="components/allscripts.jsp"%>

	<!--=========================== scripts =========================== -->
</body>
</html>