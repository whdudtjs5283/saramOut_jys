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

	<!--fullscreen image-->
	<div class="fullscreen-parallax bg-parallax parallax-overlay"
		data-jarallax='{"speed": 0.2}'
		style='background-image: url(resources/images/bg2.jpg)'>
		<div class="fullscreen-inner">
			<div class="container">
				<div class="row">
					<div class="col-sm-12">
						<div class="text-center">
							<h1>Directory Listing Template</h1>
							<p class="mb20">Create your own directory website with finder
								that included modern features for directory websites</p>
							<div class='form-hero-multi'>
								<form>
									<div class='row'>
										<div class="col-md-3 col-sm-6">
											<div class="form-group">
												<input type="text" class="form-control"
													placeholder="Keywords...">
											</div>
										</div>
										<div class="col-md-3 col-sm-6">
											<div class="form-group">
												<select class="form-control" title="Location">
													<option>Paris</option>
													<option>London</option>
													<option>New York</option>
													<option>Tokyo</option>
												</select>
											</div>
										</div>
										<div class="col-md-3 col-sm-6">
											<div class="form-group">
												<select class="form-control" title="Category">
													<option>Restaurants</option>
													<option>Jobs</option>
													<option>Property</option>
													<option>Automotive</option>
												</select>
											</div>
										</div>
										<div class="col-md-3 col-sm-6">
											<input type="button" class="btn btn-dark btn-block"
												value="Search">
										</div>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="container">
		<div class="row clients-row">
			<div class="col-md-2 col-sm-4">
				<a href="#"><img src="resources/images/cl1.png" alt=""
					class="img-responsive"></a>
			</div>
			<div class="col-md-2 col-sm-4">
				<a href="#"><img src="resources/images/cl2.png" alt=""
					class="img-responsive"></a>
			</div>
			<div class="col-md-2 col-sm-4">
				<a href="#"><img src="resources/images/cl3.png" alt=""
					class="img-responsive"></a>
			</div>
			<div class="col-md-2 col-sm-4">
				<a href="#"><img src="resources/images/cl4.png" alt=""
					class="img-responsive"></a>
			</div>
			<div class="col-md-2 col-sm-4">
				<a href="#"><img src="resources/images/cl2.png" alt=""
					class="img-responsive"></a>
			</div>
			<div class="col-md-2 col-sm-4">
				<a href="#"><img src="resources/images/cl5.png" alt=""
					class="img-responsive"></a>
			</div>
		</div>
	</div>
	<div class="gray-bg pt80 pb40">
		<div class="container">
			<div class="row">
				<div
					class="col-sm-6 col-sm-offset-3 text-center center-heading mb40">
					<h2>Most Recent Places</h2>
					<p>List most recent places are submitted by our users. It is a
						long established fact that a reader will be distracted by the
						readable content of a page when looking at its layout.</p>
				</div>
			</div>
			<!--/row-->
			<div class="row">
				<div class="col-sm-6 col-md-3 mb30">
					<div class="card-overlay">
						<img src="resources/images/img1.jpg" class="img-responsive" alt="">
						<div class="card-hover">
							<div class="card-content">
								<a class="label label-primary" href="#">Drinks</a>
								<h3>
									<a href="#">Tasty Coffee</a>
								</h3>
								<ul class="list-inline mb0 rating-list">
									<li><i class="fa fa-star text-warning"></i></li>
									<li><i class="fa fa-star text-warning"></i></li>
									<li><i class="fa fa-star text-warning"></i></li>
									<li><i class="fa fa-star text-warning"></i></li>
									<li><i class="fa fa-star-half-empty text-warning"></i></li>
								</ul>
							</div>
							<!--/card-content-->
							<div class="card-icons">
								<a href="#" title="Add to Wishlist"><i class="fa fa-heart-o"></i></a>
								<a href="#" title="View Detail"><i class="fa fa-search"></i></a>
							</div>
						</div>
					</div>
				</div>
				<div class="col-sm-6 col-md-3 mb30">
					<div class="card-overlay">
						<img src="resources/images/img2.jpg" class="img-responsive" alt="">
						<div class="card-hover">
							<div class="card-content">
								<a class="label label-primary" href="#">Restaurant</a>
								<h3>
									<a href="#">Italian Food</a>
								</h3>
								<ul class="list-inline mb0 rating-list">
									<li><i class="fa fa-star text-warning"></i></li>
									<li><i class="fa fa-star text-warning"></i></li>
									<li><i class="fa fa-star text-warning"></i></li>
									<li><i class="fa fa-star text-warning"></i></li>
									<li><i class="fa fa-star-half-empty text-warning"></i></li>
								</ul>
							</div>
							<!--/card-content-->
							<div class="card-icons">
								<a href="#" title="Add to Wishlist"><i class="fa fa-heart-o"></i></a>
								<a href="#" title="View Detail"><i class="fa fa-search"></i></a>
							</div>
						</div>
					</div>
				</div>
				<div class="col-sm-6 col-md-3 mb30">
					<div class="card-overlay">
						<img src="resources/images/img3.jpg" class="img-responsive" alt="">
						<div class="card-hover">
							<div class="card-content">
								<a class="label label-primary" href="#">Vacation</a>
								<h3>
									<a href="#">Beach Life</a>
								</h3>
								<ul class="list-inline mb0 rating-list">
									<li><i class="fa fa-star text-warning"></i></li>
									<li><i class="fa fa-star text-warning"></i></li>
									<li><i class="fa fa-star text-warning"></i></li>
									<li><i class="fa fa-star text-warning"></i></li>
									<li><i class="fa fa-star text-warning"></i></li>
								</ul>
							</div>
							<!--/card-content-->
							<div class="card-icons">
								<a href="#" title="Add to Wishlist"><i class="fa fa-heart-o"></i></a>
								<a href="#" title="View Detail"><i class="fa fa-search"></i></a>
							</div>
						</div>
					</div>
				</div>
				<div class="col-sm-6 col-md-3 mb30">
					<div class="card-overlay">
						<img src="resources/images/img4.jpg" class="img-responsive" alt="">
						<div class="card-hover">
							<div class="card-content">
								<a class="label label-primary" href="#">Property</a>
								<h3>
									<a href="#">House Rent</a>
								</h3>
								<ul class="list-inline mb0 rating-list">
									<li><i class="fa fa-star text-warning"></i></li>
									<li><i class="fa fa-star text-warning"></i></li>
									<li><i class="fa fa-star text-warning"></i></li>
									<li><i class="fa fa-star text-warning"></i></li>
									<li><i class="fa fa-star-half-empty text-warning"></i></li>
								</ul>
							</div>
							<!--/card-content-->
							<div class="card-icons">
								<a href="#" title="Add to Wishlist"><i class="fa fa-heart-o"></i></a>
								<a href="#" title="View Detail"><i class="fa fa-search"></i></a>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-sm-6 col-md-3 mb30">
					<div class="card-overlay">
						<img src="resources/images/img5.jpg" class="img-responsive" alt="">
						<div class="card-hover">
							<div class="card-content">
								<a class="label label-primary" href="#">Bars</a>
								<h3>
									<a href="#">Soft Drink</a>
								</h3>
								<ul class="list-inline mb0 rating-list">
									<li><i class="fa fa-star text-warning"></i></li>
									<li><i class="fa fa-star text-warning"></i></li>
									<li><i class="fa fa-star text-warning"></i></li>
									<li><i class="fa fa-star text-warning"></i></li>
									<li><i class="fa fa-star-half-empty text-warning"></i></li>
								</ul>
							</div>
							<!--/card-content-->
							<div class="card-icons">
								<a href="#" title="Add to Wishlist"><i class="fa fa-heart-o"></i></a>
								<a href="#" title="View Detail"><i class="fa fa-search"></i></a>
							</div>
						</div>
					</div>
				</div>
				<div class="col-sm-6 col-md-3 mb30">
					<div class="card-overlay">
						<img src="resources/images/img6.jpg" class="img-responsive" alt="">
						<div class="card-hover">
							<div class="card-content">
								<a class="label label-primary" href="#">Swimming</a>
								<h3>
									<a href="#">Swimming Pools</a>
								</h3>
								<ul class="list-inline mb0 rating-list">
									<li><i class="fa fa-star text-warning"></i></li>
									<li><i class="fa fa-star text-warning"></i></li>
									<li><i class="fa fa-star text-warning"></i></li>
									<li><i class="fa fa-star text-warning"></i></li>
									<li><i class="fa fa-star-half-empty text-warning"></i></li>
								</ul>
							</div>
							<!--/card-content-->
							<div class="card-icons">
								<a href="#" title="Add to Wishlist"><i class="fa fa-heart-o"></i></a>
								<a href="#" title="View Detail"><i class="fa fa-search"></i></a>
							</div>
						</div>
					</div>
				</div>
				<div class="col-sm-6 col-md-3 mb30">
					<div class="card-overlay">
						<img src="resources/images/img7.jpg" class="img-responsive" alt="">
						<div class="card-hover">
							<div class="card-content">
								<a class="label label-primary" href="#">Electronics</a>
								<h3>
									<a href="#">Mobile Stores</a>
								</h3>
								<ul class="list-inline mb0 rating-list">
									<li><i class="fa fa-star text-warning"></i></li>
									<li><i class="fa fa-star text-warning"></i></li>
									<li><i class="fa fa-star text-warning"></i></li>
									<li><i class="fa fa-star text-warning"></i></li>
									<li><i class="fa fa-star-half-empty text-warning"></i></li>
								</ul>
							</div>
							<!--/card-content-->
							<div class="card-icons">
								<a href="#" title="Add to Wishlist"><i class="fa fa-heart-o"></i></a>
								<a href="#" title="View Detail"><i class="fa fa-search"></i></a>
							</div>
						</div>
					</div>
				</div>
				<div class="col-sm-6 col-md-3 mb30">
					<div class="card-overlay">
						<img src="resources/images/img8.jpg" class="img-responsive" alt="">
						<div class="card-hover">
							<div class="card-content">
								<a class="label label-primary" href="#">Shop</a>
								<h3>
									<a href="#">Cloth Stores</a>
								</h3>
								<ul class="list-inline mb0 rating-list">
									<li><i class="fa fa-star text-warning"></i></li>
									<li><i class="fa fa-star text-warning"></i></li>
									<li><i class="fa fa-star text-warning"></i></li>
									<li><i class="fa fa-star text-warning"></i></li>
									<li><i class="fa fa-star-half-empty text-warning"></i></li>
								</ul>
							</div>
							<!--/card-content-->
							<div class="card-icons">
								<a href="#" title="Add to Wishlist"><i class="fa fa-heart-o"></i></a>
								<a href="#" title="View Detail"><i class="fa fa-search"></i></a>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="text-center mb30">
				<a href="#" class="btn btn-lg btn-rounded btn-primary">View All
					Listing</a>
			</div>
		</div>
	</div>
	<div class="pt80 pb40">
		<div class="container">
			<div class="row">
				<div
					class="col-sm-6 col-sm-offset-3 text-center center-heading mb40">
					<h2>Browse our listing</h2>
					<p>List most recent places are submitted by our users. It is a
						long established fact that a reader will be distracted by the
						readable content of a page when looking at its layout.</p>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12 mb10">
					<ul class="list-unstyled row listing-categories">
						<li class="col-md-3 mb30">
							<div class="listing-header">
								<i class="fa fa-cutlery"></i> Restaurants
							</div>
							<ul class="list-unstyled">
								<li><a href="#"><span
										class="badge badge-default pull-right">5</span> Breakfast</a></li>
								<li><a href="#"><span
										class="badge badge-default pull-right">7</span>Brunch</a></li>
								<li><a href="#"><span
										class="badge badge-default pull-right">9</span>Lunch</a></li>
								<li><a href="#"><span
										class="badge badge-default pull-right">14</span>Dinner</a></li>
								<li class="more-link"><a href="#">View All</a></li>
							</ul>
						</li>
						<!--/li-->
						<li class="col-md-3 mb30">
							<div class="listing-header">
								<i class="fa fa-map-marker"></i> Travel
							</div>
							<ul class="list-unstyled">
								<li><a href="#"><span
										class="badge badge-default pull-right">11</span>Destinations</a></li>
								<li><a href="#"><span
										class="badge badge-default pull-right">23</span>Holidays</a></li>
								<li><a href="#"><span
										class="badge badge-default pull-right">17</span>Transportations</a></li>
								<li><a href="#"><span
										class="badge badge-default pull-right">32</span>Swimming</a></li>
								<li class="more-link"><a href="#">View All</a></li>
							</ul>
						</li>
						<!--/li-->
						<li class="col-md-3 mb30">
							<div class="listing-header">
								<i class="fa fa-home"></i> Real Estate
							</div>
							<ul class="list-unstyled">
								<li><a href="#"><span
										class="badge badge-default pull-right">33</span>Villa</a></li>
								<li><a href="#"><span
										class="badge badge-default pull-right">22</span>For Rent</a></li>
								<li><a href="#"><span
										class="badge badge-default pull-right">42</span>For Sale</a></li>
								<li><a href="#"><span
										class="badge badge-default pull-right">54</span>Apartment</a></li>
								<li class="more-link"><a href="#">View All</a></li>
							</ul>
						</li>
						<!--/li-->

						<li class="col-md-3 mb30">
							<div class="listing-header">
								<i class="fa fa-desktop"></i> Computer & Software
							</div>
							<ul class="list-unstyled">
								<li><a href="#"><span
										class="badge badge-default pull-right">21</span>Hardware</a></li>
								<li><a href="#"><span
										class="badge badge-default pull-right">9</span>Software</a></li>
								<li><a href="#"><span
										class="badge badge-default pull-right">22</span>Games</a></li>
								<li><a href="#"><span
										class="badge badge-default pull-right">122</span>Templates</a></li>
								<li class="more-link"><a href="#">View All</a></li>
							</ul>
						</li>
						<!--/li-->
						<li class="clearfix"></li>
						<li class="col-md-3 mb30">
							<div class="listing-header">
								<i class="fa fa-car"></i> Automotive
							</div>
							<ul class="list-unstyled">
								<li><a href="#"><span
										class="badge badge-default pull-right">21</span>For Buy</a></li>
								<li><a href="#"><span
										class="badge badge-default pull-right">43</span>For Sale</a></li>
								<li><a href="#"><span
										class="badge badge-default pull-right">12</span>Mechanics</a></li>
								<li><a href="#"><span
										class="badge badge-default pull-right">54</span>Gas Station</a></li>
								<li class="more-link"><a href="#">View All</a></li>
							</ul>
						</li>
						<!--/li-->
						<li class="col-md-3 mb30">
							<div class="listing-header">
								<i class="fa fa-glass"></i> Nightlife
							</div>
							<ul class="list-unstyled">
								<li><a href="#"><span
										class="badge badge-default pull-right">4</span>Bar & pubs</a></li>
								<li><a href="#"><span
										class="badge badge-default pull-right">7</span>Concert</a></li>
								<li><a href="#"><span
										class="badge badge-default pull-right">9</span>Cinemas</a></li>
								<li><a href="#"><span
										class="badge badge-default pull-right">3</span>Disco</a></li>
								<li class="more-link"><a href="#">View All</a></li>
							</ul>
						</li>
						<!--/li-->
						<li class="col-md-3 mb30">
							<div class="listing-header">
								<i class="fa fa-suitcase"></i> Jobs
							</div>
							<ul class="list-unstyled">
								<li><a href="#"><span
										class="badge badge-default pull-right">6</span>Consulting</a></li>
								<li><a href="#"><span
										class="badge badge-default pull-right">3</span>law firms</a></li>
								<li><a href="#"><span
										class="badge badge-default pull-right">9</span>Accounts</a></li>
								<li><a href="#"><span
										class="badge badge-default pull-right">8</span>Cook</a></li>
								<li class="more-link"><a href="#">View All</a></li>
							</ul>
						</li>
						<!--/li-->
						<li class="col-md-3 mb30">
							<div class="listing-header">
								<i class="fa fa-medkit"></i> Medicine
							</div>
							<ul class="list-unstyled">
								<li><a href="#"><span
										class="badge badge-default pull-right">13</span>Dental</a></li>
								<li><a href="#"><span
										class="badge badge-default pull-right">21</span>Neurology</a></li>
								<li><a href="#"><span
										class="badge badge-default pull-right">12</span>Heart</a></li>
								<li><a href="#"><span
										class="badge badge-default pull-right">16</span>Eye</a></li>
								<li class="more-link"><a href="#">View All</a></li>
							</ul>
						</li>
						<!--/li-->
						<li class="clearfix"></li>
						<li class="col-md-3 mb30">
							<div class="listing-header">
								<i class="fa fa-gamepad"></i> Sports
							</div>
							<ul class="list-unstyled">
								<li><a href="#"><span
										class="badge badge-default pull-right">1</span>Football</a></li>
								<li><a href="#"><span
										class="badge badge-default pull-right">2</span>Games</a></li>
								<li><a href="#"><span
										class="badge badge-default pull-right">3</span>Golf</a></li>
								<li><a href="#"><span
										class="badge badge-default pull-right">9</span>Tickets</a></li>
								<li class="more-link"><a href="#">View All</a></li>
							</ul>
						</li>
						<!--/li-->
						<li class="col-md-3 mb30">
							<div class="listing-header">
								<i class="fa fa-users"></i> Pets
							</div>
							<ul class="list-unstyled">
								<li><a href="#"><span
										class="badge badge-default pull-right">3</span>Dogs</a></li>
								<li><a href="#"><span
										class="badge badge-default pull-right">4</span>Cats</a></li>
								<li><a href="#"><span
										class="badge badge-default pull-right">8</span>Golf</a></li>
								<li><a href="#"><span
										class="badge badge-default pull-right">5</span>Birds</a></li>
								<li class="more-link"><a href="#">View All</a></li>
							</ul>
						</li>
						<!--/li-->
						<li class="col-md-3 mb30">
							<div class="listing-header">
								<i class="fa fa-user-o"></i> Education
							</div>
							<ul class="list-unstyled">
								<li><a href="#"><span
										class="badge badge-default pull-right">3</span>Design</a></li>
								<li><a href="#"><span
										class="badge badge-default pull-right">4</span>App Development</a></li>
								<li><a href="#"><span
										class="badge badge-default pull-right">8</span>Android</a></li>
								<li><a href="#"><span
										class="badge badge-default pull-right">5</span>AngularJs</a></li>
								<li class="more-link"><a href="#">View All</a></li>
							</ul>
						</li>
						<!--/li-->
						<li class="col-md-3 mb30">
							<div class="listing-header">
								<i class="fa fa-shopping-bag"></i> For Sale
							</div>
							<ul class="list-unstyled">
								<li><a href="#"><span
										class="badge badge-default pull-right">3</span>Cloths</a></li>
								<li><a href="#"><span
										class="badge badge-default pull-right">4</span>Accessories</a></li>
								<li><a href="#"><span
										class="badge badge-default pull-right">8</span>Decoration</a></li>
								<li><a href="#"><span
										class="badge badge-default pull-right">5</span>Auto</a></li>
								<li class="more-link"><a href="#">View All</a></li>
							</ul>
						</li>
						<!--/li-->
						<li class="clearfix"></li>
					</ul>
				</div>

			</div>
			<div class="text-center mb40">
				<a href="#" class="btn btn-lg btn-rounded btn-primary">View All
					Listing</a>
			</div>
		</div>
	</div>
	<div class="bg-faded pt80 pb40 mb70 ">
		<div class="container">
			<div class="row">
				<div class="col-sm-4 mb30">
					<div class="icon-center-card">
						<i class="fa fa-envelope-o"></i>
						<h3>Full support</h3>
						<p>Doloremque laudantium, totam rem aperiam, eaque ipsa quae
							ab illo inventore veritatis et quasi architecto beatae vitae
							dicta sunt explicabo.</p>
						<a href="#">Read More</a>
					</div>
				</div>
				<!--/col-->
				<div class="col-sm-4 mb30">
					<div class="icon-center-card">
						<i class="fa fa-map-marker"></i>
						<h3>More than 1000 places</h3>
						<p>Doloremque laudantium, totam rem aperiam, eaque ipsa quae
							ab illo inventore veritatis et quasi architecto beatae vitae
							dicta sunt explicabo.</p>
						<a href="#">Read More</a>
					</div>
				</div>
				<!--/col-->
				<div class="col-sm-4 mb30">
					<div class="icon-center-card">
						<i class="fa fa-code"></i>
						<h3>Free updated</h3>
						<p>Doloremque laudantium, totam rem aperiam, eaque ipsa quae
							ab illo inventore veritatis et quasi architecto beatae vitae
							dicta sunt explicabo.</p>
						<a href="#">Read More</a>
					</div>
				</div>
				<!--/col-->
			</div>
		</div>
	</div>
	<div class="container">
		<div class="row">
			<div class="col-sm-6 col-sm-offset-3 text-center center-heading mb40">
				<h2>Promoted Locations</h2>
				<p>It is a long established fact that a reader will be
					distracted by the readable content of a page when looking at its
					layout.</p>
			</div>
		</div>
	</div>
	<div class="owl-carousel owl-theme owl-places mb40">
		<div class="item">
			<div class="card-overlay">
				<img src="resources/images/img1.jpg" class="img-responsive" alt="">
				<div class="card-hover">
					<div class="card-content">
						<a class="label label-primary" href="#">Drinks</a>
						<h3>
							<a href="#">Tasty Coffee</a>
						</h3>
						<ul class="list-inline mb0 rating-list">
							<li><i class="fa fa-star text-warning"></i></li>
							<li><i class="fa fa-star text-warning"></i></li>
							<li><i class="fa fa-star text-warning"></i></li>
							<li><i class="fa fa-star text-warning"></i></li>
							<li><i class="fa fa-star-half-empty text-warning"></i></li>
						</ul>
					</div>
					<!--/card-content-->
					<div class="card-icons">
						<a href="#" title="Add to Wishlist"><i class="fa fa-heart-o"></i></a>
						<a href="#" title="View Detail"><i class="fa fa-search"></i></a>
					</div>
				</div>
			</div>
		</div>
		<div class="item">
			<div class="card-overlay">
				<img src="resources/images/img2.jpg" class="img-responsive" alt="">
				<div class="card-hover">
					<div class="card-content">
						<a class="label label-primary" href="#">Restaurant</a>
						<h3>
							<a href="#">Italian Food</a>
						</h3>
						<ul class="list-inline mb0 rating-list">
							<li><i class="fa fa-star text-warning"></i></li>
							<li><i class="fa fa-star text-warning"></i></li>
							<li><i class="fa fa-star text-warning"></i></li>
							<li><i class="fa fa-star text-warning"></i></li>
							<li><i class="fa fa-star-half-empty text-warning"></i></li>
						</ul>
					</div>
					<!--/card-content-->
					<div class="card-icons">
						<a href="#" title="Add to Wishlist"><i class="fa fa-heart-o"></i></a>
						<a href="#" title="View Detail"><i class="fa fa-search"></i></a>
					</div>
				</div>
			</div>
		</div>
		<div class="item">
			<div class="card-overlay">
				<img src="resources/images/img3.jpg" class="img-responsive" alt="">
				<div class="card-hover">
					<div class="card-content">
						<a class="label label-primary" href="#">Vacation</a>
						<h3>
							<a href="#">Beach Life</a>
						</h3>
						<ul class="list-inline mb0 rating-list">
							<li><i class="fa fa-star text-warning"></i></li>
							<li><i class="fa fa-star text-warning"></i></li>
							<li><i class="fa fa-star text-warning"></i></li>
							<li><i class="fa fa-star text-warning"></i></li>
							<li><i class="fa fa-star text-warning"></i></li>
						</ul>
					</div>
					<!--/card-content-->
					<div class="card-icons">
						<a href="#" title="Add to Wishlist"><i class="fa fa-heart-o"></i></a>
						<a href="#" title="View Detail"><i class="fa fa-search"></i></a>
					</div>
				</div>
			</div>
		</div>
		<div class="item">
			<div class="card-overlay">
				<img src="resources/images/img4.jpg" class="img-responsive" alt="">
				<div class="card-hover">
					<div class="card-content">
						<a class="label label-primary" href="#">Property</a>
						<h3>
							<a href="#">House Rent</a>
						</h3>
						<ul class="list-inline mb0 rating-list">
							<li><i class="fa fa-star text-warning"></i></li>
							<li><i class="fa fa-star text-warning"></i></li>
							<li><i class="fa fa-star text-warning"></i></li>
							<li><i class="fa fa-star text-warning"></i></li>
							<li><i class="fa fa-star-half-empty text-warning"></i></li>
						</ul>
					</div>
					<!--/card-content-->
					<div class="card-icons">
						<a href="#" title="Add to Wishlist"><i class="fa fa-heart-o"></i></a>
						<a href="#" title="View Detail"><i class="fa fa-search"></i></a>
					</div>
				</div>
			</div>
		</div>
		<div class="item">
			<div class="card-overlay">
				<img src="resources/images/img5.jpg" class="img-responsive" alt="">
				<div class="card-hover">
					<div class="card-content">
						<a class="label label-primary" href="#">Bars</a>
						<h3>
							<a href="#">Soft Drink</a>
						</h3>
						<ul class="list-inline mb0 rating-list">
							<li><i class="fa fa-star text-warning"></i></li>
							<li><i class="fa fa-star text-warning"></i></li>
							<li><i class="fa fa-star text-warning"></i></li>
							<li><i class="fa fa-star text-warning"></i></li>
							<li><i class="fa fa-star-half-empty text-warning"></i></li>
						</ul>
					</div>
					<!--/card-content-->
					<div class="card-icons">
						<a href="#" title="Add to Wishlist"><i class="fa fa-heart-o"></i></a>
						<a href="#" title="View Detail"><i class="fa fa-search"></i></a>
					</div>
				</div>
			</div>
		</div>
		<div class="item">
			<div class="card-overlay">
				<img src="resources/images/img6.jpg" class="img-responsive" alt="">
				<div class="card-hover">
					<div class="card-content">
						<a class="label label-primary" href="#">Swimming</a>
						<h3>
							<a href="#">Swimming Pools</a>
						</h3>
						<ul class="list-inline mb0 rating-list">
							<li><i class="fa fa-star text-warning"></i></li>
							<li><i class="fa fa-star text-warning"></i></li>
							<li><i class="fa fa-star text-warning"></i></li>
							<li><i class="fa fa-star text-warning"></i></li>
							<li><i class="fa fa-star-half-empty text-warning"></i></li>
						</ul>
					</div>
					<!--/card-content-->
					<div class="card-icons">
						<a href="#" title="Add to Wishlist"><i class="fa fa-heart-o"></i></a>
						<a href="#" title="View Detail"><i class="fa fa-search"></i></a>
					</div>
				</div>
			</div>
		</div>
		<div class="item">
			<div class="card-overlay">
				<img src="resources/images/img7.jpg" class="img-responsive" alt="">
				<div class="card-hover">
					<div class="card-content">
						<a class="label label-primary" href="#">Electronics</a>
						<h3>
							<a href="#">Mobile Stores</a>
						</h3>
						<ul class="list-inline mb0 rating-list">
							<li><i class="fa fa-star text-warning"></i></li>
							<li><i class="fa fa-star text-warning"></i></li>
							<li><i class="fa fa-star text-warning"></i></li>
							<li><i class="fa fa-star text-warning"></i></li>
							<li><i class="fa fa-star-half-empty text-warning"></i></li>
						</ul>
					</div>
					<!--/card-content-->
					<div class="card-icons">
						<a href="#" title="Add to Wishlist"><i class="fa fa-heart-o"></i></a>
						<a href="#" title="View Detail"><i class="fa fa-search"></i></a>
					</div>
				</div>
			</div>
		</div>
		<div class="item">
			<div class="card-overlay">
				<img src="resources/images/img8.jpg" class="img-responsive" alt="">
				<div class="card-hover">
					<div class="card-content">
						<a class="label label-primary" href="#">Shop</a>
						<h3>
							<a href="#">Cloth Stores</a>
						</h3>
						<ul class="list-inline mb0 rating-list">
							<li><i class="fa fa-star text-warning"></i></li>
							<li><i class="fa fa-star text-warning"></i></li>
							<li><i class="fa fa-star text-warning"></i></li>
							<li><i class="fa fa-star text-warning"></i></li>
							<li><i class="fa fa-star-half-empty text-warning"></i></li>
						</ul>
					</div>
					<!--/card-content-->
					<div class="card-icons">
						<a href="#" title="Add to Wishlist"><i class="fa fa-heart-o"></i></a>
						<a href="#" title="View Detail"><i class="fa fa-search"></i></a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="container text-center mb70">
		<h3 class="font300 mb20">Want to Promote your location</h3>
		<a href="#" class="btn btn-rounded btn-lg btn-dark">Promote Here</a>
	</div>
	<div class="gray-bg pt80 pb40">
		<div class="container">
			<div class="row">
				<div
					class="col-sm-6 col-sm-offset-3 text-center center-heading mb40">
					<h2>What our customers say</h2>
					<p>It is a long established fact that a reader will be
						distracted by the readable content of a page when looking at its
						layout.</p>
				</div>
			</div>
			<div class="row">
				<div class="col-sm-12 col-sm-offset-0">
					<div class="owl-carousel owl-theme testimonial-slider mb40">
						<div class="item">
							<div class="testimonial-card">
								<div class="content">" There are many variations of
									passages of Lorem Ipsum available, but the majority have
									suffered alteration in some form, by injected humour, or
									randomised words which don't look even slightly believable. "</div>
								<div class="testimonial-author clearfix">
									<img src="resources/images/av1.jpg" alt=""
										class="img-responsive img-circle pull-left" width="90">
									<div class="author-meta">
										<h5 class="mb0">John Doe</h5>
										<em>Finder Customer</em>
										<ul class="list-inline mb0 rating-list">
											<li><i class="fa fa-star text-warning"></i></li>
											<li><i class="fa fa-star text-warning"></i></li>
											<li><i class="fa fa-star text-warning"></i></li>
											<li><i class="fa fa-star text-warning"></i></li>
											<li><i class="fa fa-star-half-empty text-warning"></i></li>
										</ul>
									</div>
								</div>
							</div>
						</div>
						<!--/item-->
						<div class="item">
							<div class="testimonial-card">
								<div class="content">" There are many variations of
									passages of Lorem Ipsum available, but the majority have
									suffered alteration in some form, by injected humour, or
									randomised words which don't look even slightly believable. "</div>
								<div class="testimonial-author clearfix">
									<img src="resources/images/av2.jpg" alt=""
										class="img-responsive img-circle pull-left" width="90">
									<div class="author-meta">
										<h5 class="mb0">John Doe</h5>
										<em>Finder Customer</em>
										<ul class="list-inline mb0 rating-list">
											<li><i class="fa fa-star text-warning"></i></li>
											<li><i class="fa fa-star text-warning"></i></li>
											<li><i class="fa fa-star text-warning"></i></li>
											<li><i class="fa fa-star text-warning"></i></li>
											<li><i class="fa fa-star-half-empty text-warning"></i></li>
										</ul>
									</div>
								</div>
							</div>
						</div>
						<!--/item-->
						<div class="item">
							<div class="testimonial-card">
								<div class="content">" There are many variations of
									passages of Lorem Ipsum available, but the majority have
									suffered alteration in some form, by injected humour, or
									randomised words which don't look even slightly believable. "</div>
								<div class="testimonial-author clearfix">
									<img src="resources/images/av3.jpg" alt=""
										class="img-responsive img-circle pull-left" width="90">
									<div class="author-meta">
										<h5 class="mb0">John Doe</h5>
										<em>Finder Customer</em>
										<ul class="list-inline mb0 rating-list">
											<li><i class="fa fa-star text-warning"></i></li>
											<li><i class="fa fa-star text-warning"></i></li>
											<li><i class="fa fa-star text-warning"></i></li>
											<li><i class="fa fa-star text-warning"></i></li>
											<li><i class="fa fa-star-half-empty text-warning"></i></li>
										</ul>
									</div>
								</div>
							</div>
						</div>
						<!--/item-->
					</div>
					<!--/slider-->
				</div>
			</div>
		</div>
	</div>
	<div class="dark-bg pt80 pb40 mb70 bg-parallax parallax-overlay"
		data-jarallax='{"speed": 0.2}'
		style='background-image: url(resources/images/bg3.jpg)'>
		<div class="container">
			<div class="row">
				<div
					class="col-sm-6 col-sm-offset-3 text-center center-heading mb40">
					<h2>Events near you</h2>
					<p>It is a long established fact that a reader will be
						distracted by the readable content of a page when looking at its
						layout.</p>
				</div>
			</div>
			<div class="row">
				<div class="col-sm-4 mb40">
					<div class="event-card">
						<div class="date-icon">
							<div class="text-center">
								25 <span>March</span>
							</div>
						</div>
						<span><i class="fa fa-clock-o"></i> 8:00 Am - 11:00 Pm</span>
						<h4 class="mt10">
							<a href="#">Nulla faucibus convallis dui</a>
						</h4>
						<p>Ut nec vulputate enim. Nulla faucibus convallis dui. Donec
							arcu enim, scelerisque.</p>
						<div class="text-left more-link">
							<a href="#">View Detail</a>
						</div>
					</div>
				</div>
				<!--/col-->
				<div class="col-sm-4 mb40">
					<div class="event-card">
						<div class="date-icon">
							<div class="text-center">
								25 <span>March</span>
							</div>
						</div>
						<span><i class="fa fa-clock-o"></i> 8:00 Am - 11:00 Pm</span>
						<h4 class="mt10">
							<a href="#">Nulla faucibus convallis dui</a>
						</h4>
						<p>Ut nec vulputate enim. Nulla faucibus convallis dui. Donec
							arcu enim, scelerisque.</p>
						<div class="text-left more-link">
							<a href="#">View Detail</a>
						</div>
					</div>
				</div>
				<!--/col-->
				<div class="col-sm-4 mb40">
					<div class="event-card">
						<div class="date-icon">
							<div class="text-center">
								25 <span>March</span>
							</div>
						</div>
						<span><i class="fa fa-clock-o"></i> 8:00 Am - 11:00 Pm</span>
						<h4 class="mt10">
							<a href="#">Nulla faucibus convallis dui</a>
						</h4>
						<p>Ut nec vulputate enim. Nulla faucibus convallis dui. Donec
							arcu enim, scelerisque.</p>
						<div class="text-left more-link">
							<a href="#">View Detail</a>
						</div>
					</div>
				</div>
				<!--/col-->
			</div>
		</div>
	</div>
	<div class="container mb40">
		<div class="row">
			<div class="col-sm-6 col-sm-offset-3 text-center center-heading mb40">
				<h2>Latest from blog</h2>
				<p>It is a long established fact that a reader will be
					distracted by the readable content of a page when looking at its
					layout.</p>
			</div>
		</div>
		<div class="row">
			<div class="col-sm-4 mb40">
				<div class="post-card">
					<a href="#"><img src="resources/images/img2.jpg" alt=""
						class="img-responsive mb15"></a>
					<div class="post-content">
						<h4>
							<a href="#">Standard post with image</a>
						</h4>
						<p>It is a long established fact that a reader will be
							distracted by the readable content of a page when looking at its
							layout...</p>
					</div>
				</div>
			</div>
			<!--/col-->
			<div class="col-sm-4 mb40">
				<div class="post-card">
					<a href="#"><img src="resources/images/img3.jpg" alt=""
						class="img-responsive mb15"></a>
					<div class="post-content">
						<h4>
							<a href="#">Standard post with image</a>
						</h4>
						<p>It is a long established fact that a reader will be
							distracted by the readable content of a page when looking at its
							layout...</p>
					</div>
				</div>
			</div>
			<!--/col-->
			<div class="col-sm-4 mb40">
				<div class="post-card">
					<a href="#"><img src="resources/images/img4.jpg" alt=""
						class="img-responsive mb15"></a>
					<div class="post-content">
						<h4>
							<a href="#">Standard post with image</a>
						</h4>
						<p>It is a long established fact that a reader will be
							distracted by the readable content of a page when looking at its
							layout...</p>
					</div>
				</div>
			</div>
			<!--/col-->
		</div>
	</div>
	<div class="gray-bg pt40 pb40 newsletter-form">
		<div class="container">
			<div class="row">
				<div class="col-sm-6">
					<h2>Subscribe and be notified about new locations</h2>
				</div>
				<div class="col-sm-6">
					<div class="newsletter-card">
						<form>
							<input type="text" class="form-control"
								placeholder="Enter your Email..."> <input type="submit"
								value="Subscribe" class="newsletter-submit">
						</form>
					</div>
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