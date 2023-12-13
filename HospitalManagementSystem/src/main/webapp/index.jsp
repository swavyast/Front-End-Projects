<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="components/allcss.jsp" %>
<meta charset="UTF-8">
<title>MediHome</title>
</head>
<body>

<!--=========================== header =========================== -->

<header>
<%@include file="components/navbar.jsp" %>
</header>

<!--=========================== header =========================== -->

<!--=========================== carousel =========================== -->

<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
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
  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>

<!--=========================== carousel =========================== -->

<!--=========================== cards =========================== -->

<div class="container p-3">

			<p class="text-center fs-2">Key Features of our Hospital</p>

			<div class="row">

				<div class="col md-8 p-5">

					<div class="row">

						<div class="col-md-6">

							<div class="card card-shadow">

								<div class="card-body">

									<p class="fs-5">100% Safety</p>
									<p class="card-caption">I'll write something about this
										card in future.</p>

								</div>

							</div>

						</div>

						<div class="col-md-6">

							<div class="card card-shadow">

								<div class="card-body">

									<p class="fs-5">100% Safety</p>
									<p class="card-caption">I'll write something about this
										card in future.</p>

								</div>

							</div>
						</div>

						<div class="col-md-6 mt-2">
							<div class="card card-shadow">

								<div class="card-body">

									<p class="fs-5">100% Safety</p>
									<p class="card-caption">I'll write something about this
										card in future.</p>

								</div>

							</div>
						</div>

						<div class="col-md-6 mt-2">
							<div class="card card-shadow">

								<div class="card-body">

									<p class="fs-5">100% Safety</p>
									<p class="card-caption">I'll write something about this
										card in future.</p>

								</div>

							</div>
						</div>


					</div>

				</div>

				<div class="col md-4">
				
					<img class = "steth" src = "images/close-up-hand-with-stethoscope.jpg" alt = "hand-with-stethoscope" width = "400" height = "300">
				
				</div>

			</div>

		</div>
		
		
<!--=========================== cards =========================== -->


<!--=========================== scripts =========================== -->

<%@include file="components/allscripts.jsp" %>

<!--=========================== scripts =========================== -->
</body>
</html>