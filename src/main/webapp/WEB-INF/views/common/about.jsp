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
<!--         <link href="css/bundle.css" rel="stylesheet">
        <link href="css/style.css" rel="stylesheet"> -->

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
					<h3>About us</h3>
				</div>
				<div class="col-sm-6"></div>
			</div>
		</div>
	</div>
	<div class="container mb40">
		<div class="row">
			<div class="col-sm-8 col-sm-offset-2 text-center center-heading mb40">
				<h2>Who we are?</h2>
				<p>Sed ut perspiciatis unde omnis iste natus error sit
					voluptatem accusantium doloremque laudantium, totam rem aperiam,
					eaque ipsa quae ab illo inventore veritatis et quasi architecto
					beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia
					voluptas sit aspernatur aut odit aut fugit.</p>
			</div>
		</div>
		<div class="row mb40">
			<div class="col-sm-4 mb30 text-center icon-box">
				<i class="fa fa-envelope"></i>
				<h4 class="font300">Email Support</h4>
				<p>It is a long established fact that a reader will be
					distracted by the readable content of a page when looking at its
					layout.</p>
			</div>
			<!--/col-->
			<div class="col-sm-4 mb30 text-center icon-box">
				<i class="fa fa-code-fork"></i>
				<h4 class="font300">Modern Framework</h4>
				<p>It is a long established fact that a reader will be
					distracted by the readable content of a page when looking at its
					layout.</p>
			</div>
			<!--/col-->
			<div class="col-sm-4 mb30 text-center icon-box">
				<i class="fa fa-code"></i>
				<h4 class="font300">Free updates</h4>
				<p>It is a long established fact that a reader will be
					distracted by the readable content of a page when looking at its
					layout.</p>
			</div>
			<!--/col-->
		</div>
		<hr class="mb70">
		<div class="row">
			<div class="col-sm-8 col-sm-offset-2 text-center center-heading mb40">
				<h2>Meet the team</h2>
			</div>
		</div>
		<div class="row">
			<div class="col-sm-3 mb30">
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
					<h3 class="font300 mb0">John Doe</h3>
					<em>Project Manager</em>
				</div>
			</div>
			<!--/col-->
			<div class="col-sm-3 mb30">
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
					<h3 class="font300 mb0">Emily Doe</h3>
					<em>Project Manager</em>
				</div>
			</div>
			<!--/col-->
			<div class="col-sm-3 mb30">
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
					<h3 class="font300 mb0">Jonathan Doe</h3>
					<em>Project Manager</em>
				</div>
			</div>
			<!--/col-->
			<div class="col-sm-3 mb30">
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
					<h3 class="font300 mb0">Nikita Miller</h3>
					<em>Project Manager</em>
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
	<!-- 	<script src="js/plugins/all.js"></script>
	<script src="js/finder.custom.js"></script> -->

<%-- 	<script src="<c:url value="resources/js/plugins/all.js" />"></script>
	<script src="<c:url value="resources/js/finder.custom.js" />"></script> --%>
</body>
</html>