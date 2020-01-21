<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" errorPage="common/error.jsp"%>
<%@ page import="java.net.URLEncoder"%>
<%@ page import="java.security.SecureRandom"%>
<%@ page import="java.math.BigInteger"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<title>Finder - Listing</title>

<!-- plugins -->
<!-- <link rel="stylesheet" type="text/css" href="resources/css/bundle.css">
<link rel="stylesheet" type="text/css" href="resources/css/style.css"> -->
<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
</head>
<body>
	<!-- Preloader -->
	<div id="preloader"></div>
	<c:import url="header.jsp" />

	<div class="page-bread mb70">
		<div class="container">
			<div class="row">
				<div class="col-sm-6">
					<h3>Agents Listing</h3>
				</div>
				<div class="col-sm-6"></div>
			</div>
		</div>
	</div>

	<div class="">
		<div class="container">
			<div class="row">
				<div class="col-md-9 mb40">
					<div class="row">
						<div class="col-sm-4 mb30">
							<div class="team-card">
								<img src="resources/images/av1.jpg" alt="" class="img-responsive">
								<div class="team-overlay">
									<ul class="list-inline">
										<li><a href="#"><i class="fa fa-facebook"></i></a></li>
										<li><a href="#"><i class="fa fa-twitter"></i></a></li>
										<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
									</ul>
								</div>
							</div>
							<div class="team-content">
								<h3 class="font300 mb0">
									<a href="#">John Doe</a>
								</h3>
								<em>30 Listings</em>
							</div>
						</div>
						<!--/col-->
						<div class="col-sm-4 mb30">
							<div class="team-card">
								<img src="resources/images/av2.jpg" alt="" class="img-responsive">
								<div class="team-overlay">
									<ul class="list-inline">
										<li><a href="#"><i class="fa fa-facebook"></i></a></li>
										<li><a href="#"><i class="fa fa-twitter"></i></a></li>
										<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
									</ul>
								</div>
							</div>
							<div class="team-content">
								<h3 class="font300 mb0">
									<a href="#">Emily Doe</a>
								</h3>
								<em>18 Listings</em>
							</div>
						</div>
						<!--/col-->
						<div class="col-sm-4 mb30">
							<div class="team-card">
								<img src="resources/images/av3.jpg" alt="" class="img-responsive">
								<div class="team-overlay">
									<ul class="list-inline">
										<li><a href="#"><i class="fa fa-facebook"></i></a></li>
										<li><a href="#"><i class="fa fa-twitter"></i></a></li>
										<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
									</ul>
								</div>
							</div>
							<div class="team-content">
								<h3 class="font300 mb0">
									<a href="#">Jonathan Doe</a>
								</h3>
								<em>15 Listings</em>
							</div>
						</div>
						<!--/col-->

					</div>
					<div class="row">
						<div class="col-sm-4 mb30">
							<div class="team-card">
								<img src="resources/images/av4.jpg" alt="" class="img-responsive">
								<div class="team-overlay">
									<ul class="list-inline">
										<li><a href="#"><i class="fa fa-facebook"></i></a></li>
										<li><a href="#"><i class="fa fa-twitter"></i></a></li>
										<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
									</ul>
								</div>
							</div>
							<div class="team-content">
								<h3 class="font300 mb0">
									<a href="#">John Doe</a>
								</h3>
								<em>30 Listings</em>
							</div>
						</div>
						<!--/col-->
						<div class="col-sm-4 mb30">
							<div class="team-card">
								<img src="resources/images/av5.jpg" alt="" class="img-responsive">
								<div class="team-overlay">
									<ul class="list-inline">
										<li><a href="#"><i class="fa fa-facebook"></i></a></li>
										<li><a href="#"><i class="fa fa-twitter"></i></a></li>
										<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
									</ul>
								</div>
							</div>
							<div class="team-content">
								<h3 class="font300 mb0">
									<a href="#">Emily Doe</a>
								</h3>
								<em>18 Listings</em>
							</div>
						</div>
						<!--/col-->
						<div class="col-sm-4 mb30">
							<div class="team-card">
								<img src="resources/images/av6.jpg" alt="" class="img-responsive">
								<div class="team-overlay">
									<ul class="list-inline">
										<li><a href="#"><i class="fa fa-facebook"></i></a></li>
										<li><a href="#"><i class="fa fa-twitter"></i></a></li>
										<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
									</ul>
								</div>
							</div>
							<div class="team-content">
								<h3 class="font300 mb0">
									<a href="#">Jonathan Doe</a>
								</h3>
								<em>15 Listings</em>
							</div>
						</div>
						<!--/col-->

					</div>
					<div class="row">
						<div class="col-sm-4 mb30">
							<div class="team-card">
								<img src="resources/images/av1.jpg" alt="" class="img-responsive">
								<div class="team-overlay">
									<ul class="list-inline">
										<li><a href="#"><i class="fa fa-facebook"></i></a></li>
										<li><a href="#"><i class="fa fa-twitter"></i></a></li>
										<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
									</ul>
								</div>
							</div>
							<div class="team-content">
								<h3 class="font300 mb0">
									<a href="#">John Doe</a>
								</h3>
								<em>30 Listings</em>
							</div>
						</div>
						<!--/col-->
						<div class="col-sm-4 mb30">
							<div class="team-card">
								<img src="resources/images/av3.jpg" alt="" class="img-responsive">
								<div class="team-overlay">
									<ul class="list-inline">
										<li><a href="#"><i class="fa fa-facebook"></i></a></li>
										<li><a href="#"><i class="fa fa-twitter"></i></a></li>
										<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
									</ul>
								</div>
							</div>
							<div class="team-content">
								<h3 class="font300 mb0">
									<a href="#">Emily Doe</a>
								</h3>
								<em>18 Listings</em>
							</div>
						</div>
						<!--/col-->
						<div class="col-sm-4 mb30">
							<div class="team-card">
								<img src="resources/images/av2.jpg" alt="" class="img-responsive">
								<div class="team-overlay">
									<ul class="list-inline">
										<li><a href="#"><i class="fa fa-facebook"></i></a></li>
										<li><a href="#"><i class="fa fa-twitter"></i></a></li>
										<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
									</ul>
								</div>
							</div>
							<div class="team-content">
								<h3 class="font300 mb0">
									<a href="#">Jonathan Doe</a>
								</h3>
								<em>15 Listings</em>
							</div>
						</div>
						<!--/col-->

					</div>
					<div class="text-right mb30">
						<nav aria-label="Page navigation">
							<ul class="pagination">
								<li><a href="#" aria-label="Previous"> <span
										aria-hidden="true">«</span>
								</a></li>
								<li class="active"><a href="#">1</a></li>
								<li><a href="#">2</a></li>
								<li><a href="#">3</a></li>
								<li><a href="#">4</a></li>
								<li><a href="#">5</a></li>
								<li><a href="#" aria-label="Next"> <span
										aria-hidden="true">»</span>
								</a></li>
							</ul>
						</nav>
					</div>
				</div>
				<!--/col-->
				<div class="col-md-3 mb60">
					<h4 class="left-title mb20">Search Filter</h4>
					<div class="mb40">
						<form>
							<div class="form-group">
								<input type="text" class="form-control"
									placeholder="Keywords...">
							</div>
							<div class="form-group mb15">
								<select class="form-control" title="Location">
									<option>Paris</option>
									<option>London</option>
									<option>New York</option>
									<option>Tokyo</option>
								</select>
							</div>
							<div class="form-group">
								<select class="form-control" title="Category">
									<option>Restaurants</option>
									<option>Jobs</option>
									<option>Property</option>
									<option>Automotive</option>
								</select>
							</div>
							<div class="form-group">
								<input type="text" class="form-control"
									placeholder="Min Price...">
							</div>
							<input type="submit" class="btn btn-dark btn-lg btn-block"
								value="Search">
						</form>
					</div>
					<h4 class="left-title mb20">Recent Listings</h4>
					<ul class="list-unstyled recent-item-card mb40">
						<li class="media">
							<div class="media-left">
								<a href="#"> <img src="resources/images/img1.jpg" alt=""
									class="img-responsive" width="90">
								</a>
							</div>
							<div class="media-body">
								<h4>
									<a href="#">Doloremque laudantium, totam rem aperiam</a>
								</h4>
								<em>New York / Coffee</em> <span class="text-primary">$140/Person</span>
							</div>
						</li>
						<!--/li-->
						<li class="media">
							<div class="media-left">
								<a href="#"> <img src="resources/images/img2.jpg" alt=""
									class="img-responsive" width="90">
								</a>
							</div>
							<div class="media-body">
								<h4>
									<a href="#">Doloremque laudantium, totam rem aperiam</a>
								</h4>
								<em>New York / Coffee</em> <span class="text-primary">$140/Person</span>
							</div>
						</li>
						<!--/li-->
						<li class="media">
							<div class="media-left">
								<a href="#"> <img src="resources/images/img3.jpg" alt=""
									class="img-responsive" width="90">
								</a>
							</div>
							<div class="media-body">
								<h4>
									<a href="#">Doloremque laudantium, totam rem aperiam</a>
								</h4>
								<em>New York / Coffee</em> <span class="text-primary">$140/Person</span>
							</div>
						</li>
						<!--/li-->
					</ul>
					<!--/ul-->
					<h4 class="left-title mb20">Popular Tags</h4>
					<ul class="list-inline tags-list">
						<li><a href="#"><i class="fa fa-tag"></i> Shop</a></li>
						<li><a href="#"><i class="fa fa-tag"></i> Beer</a></li>
						<li><a href="#"><i class="fa fa-tag"></i> Beach</a></li>
						<li><a href="#"><i class="fa fa-tag"></i> Cinemas</a></li>
						<li><a href="#"><i class="fa fa-tag"></i> Hotel</a></li>
						<li><a href="#"><i class="fa fa-tag"></i> Dinner</a></li>
						<li><a href="#"><i class="fa fa-tag"></i> Lunch</a></li>
						<li><a href="#"><i class="fa fa-tag"></i> Taxi</a></li>
						<li><a href="#"><i class="fa fa-tag"></i> Bar & pubs</a></li>
						<li><a href="#"><i class="fa fa-tag"></i> Games</a></li>
						<li><a href="#"><i class="fa fa-tag"></i> Tickets</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>

	<!--footer-->
	<c:import url="footer.jsp" />
	<!-- jQuery-->
<%-- 	<script src="<c:url value="resources/js/plugins/all.js" />"></script>
	<script src="<c:url value="resources/js/finder.custom.js" />"></script> --%>
</body>
</html>