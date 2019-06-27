<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
					<h3>F.A.Q</h3>
				</div>
				<div class="col-sm-6"></div>
			</div>
		</div>
	</div>
	<div class="container mb30">
		<div class="row">
			<div class="col-sm-6 col-sm-offset-3 text-center center-heading mb40">
				<h2>Frequently Asked Questions</h2>
				<p>
					It is a long established fact that a reader will be distracted by
					the readable content of a page when looking at its layout. Mail us
					<a href="#" class="link-underline">support@finder.com</a>
				</p>
			</div>
		</div>
		<div class="row">
			<div class="col-sm-4 mb40">
				<h4 class="font300">Nulla blandit eu eros nec ultrices?</h4>
				<p>It is a long established fact that a reader will be
					distracted by the readable content of a page when looking at its
					layout.</p>
			</div>
			<!--/col-->
			<div class="col-sm-4 mb40">
				<h4 class="font300">Nulla blandit eu eros nec ultrices?</h4>
				<p>It is a long established fact that a reader will be
					distracted by the readable content of a page when looking at its
					layout.</p>
			</div>
			<!--/col-->
			<div class="col-sm-4 mb40">
				<h4 class="font300">Nulla blandit eu eros nec ultrices?</h4>
				<p>It is a long established fact that a reader will be
					distracted by the readable content of a page when looking at its
					layout.</p>
			</div>
			<!--/col-->
		</div>
		<div class="row">
			<div class="col-sm-4 mb40">
				<h4 class="font300">Nulla blandit eu eros nec ultrices?</h4>
				<p>It is a long established fact that a reader will be
					distracted by the readable content of a page when looking at its
					layout.</p>
			</div>
			<!--/col-->
			<div class="col-sm-4 mb40">
				<h4 class="font300">Nulla blandit eu eros nec ultrices?</h4>
				<p>It is a long established fact that a reader will be
					distracted by the readable content of a page when looking at its
					layout.</p>
			</div>
			<!--/col-->
			<div class="col-sm-4 mb40">
				<h4 class="font300">Nulla blandit eu eros nec ultrices?</h4>
				<p>It is a long established fact that a reader will be
					distracted by the readable content of a page when looking at its
					layout.</p>
			</div>
			<!--/col-->
		</div>
		<div class="row">
			<div class="col-sm-4 mb40">
				<h4 class="font300">Nulla blandit eu eros nec ultrices?</h4>
				<p>It is a long established fact that a reader will be
					distracted by the readable content of a page when looking at its
					layout.</p>
			</div>
			<!--/col-->
			<div class="col-sm-4 mb40">
				<h4 class="font300">Nulla blandit eu eros nec ultrices?</h4>
				<p>It is a long established fact that a reader will be
					distracted by the readable content of a page when looking at its
					layout.</p>
			</div>
			<!--/col-->
			<div class="col-sm-4 mb40">
				<h4 class="font300">Nulla blandit eu eros nec ultrices?</h4>
				<p>It is a long established fact that a reader will be
					distracted by the readable content of a page when looking at its
					layout.</p>
			</div>
			<!--/col-->
		</div>
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
					<!--                        <div class="download-app-card">
                                                    <div class="download-overlay">
                                                        <h1>Download Our Mobile App</h1>
                                                        <p>Available at Play store and app store. It's Free!</p>
                                                        <a href="#"><img src="resources/images/google-play.png" alt=""></a>
                                                        <a href="#"><img src="resources/images/appstore.png" alt=""></a>
                                                    </div>
                                                </div>-->
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