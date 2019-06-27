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
					<h3>Listing Grid</h3>
				</div>
				<div class="col-sm-6"></div>
			</div>
		</div>
	</div>
	<div class="container mb70">
		<div class="row">
			<form>
				<div class="col-md-3 col-sm-6">
					<div class="form-group">
						<input type="text" class="form-control" placeholder="Keywords...">
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
					<input type="button" class="btn btn-primary btn-block"
						value="Search">
				</div>
			</form>
		</div>
	</div>
	<div class="">
		<div class="container">
			<div class="row">
				<div
					class="col-sm-6 col-sm-offset-3 text-center center-heading mb40">
					<h2>50 Results found</h2>
					<p>List most recent places are submitted by our users. It is a
						long established fact that a reader will be distracted by the
						readable content of a page when looking at its layout.</p>

				</div>
			</div>
			<!--/row-->
			<div class="clearfix">
				<div class="pull-right">
					<div class="form-group">
						<select class="form-control" title="Sorting">
							<option>Popular</option>
							<option>Low Price</option>
							<option>Best Rating</option>
							<option>High price</option>
						</select>
					</div>
				</div>
			</div>
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
				<nav aria-label="Page navigation">
					<ul class="pagination">
						<li><a href="#" aria-label="Previous"> <span
								aria-hidden="true">Â«</span>
						</a></li>
						<li class="active"><a href="#">1</a></li>
						<li><a href="#">2</a></li>
						<li><a href="#">3</a></li>
						<li><a href="#">4</a></li>
						<li><a href="#">5</a></li>
						<li><a href="#" aria-label="Next"> <span
								aria-hidden="true">Â»</span>
						</a></li>
					</ul>
				</nav>
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