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
<title>사람아웃</title>

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
					<h3>기업 상세정보</h3>
				</div>
				<div class="col-sm-6"></div>
			</div>
		</div>
	</div>
	<div class="container mb40">
		<div class="row">
			<div class="col-sm-4 mb30">
				<div class="contact-details">
					<h3 class="font300 mb0">기업 정보</h3>
					<hr>
					사명 : ${companyInfo.bid} <br> <br>
					매출액 : ${companyInfo.sales}<br> <br>
					홈페이지 : ${companyInfo.homepage} <br> <br>
					<ul class="list-inline">
						<li><a href="#"><i class="fa fa-facebook-official"></i></a></li>
						<li><a href="#"><i class="fa fa-twitter-square"></i></a></li>
						<li><a href="#"><i class="fa fa-linkedin-square"></i></a></li>
						<li><a href="#"><i class="fa fa-instagram"></i></a></li>
						<li><a href="#"><i class="fa fa-google-plus-official"></i></a></li>
					</ul>
				</div>
			</div>
			<div class="col-sm-6 col-sm-offset-2">
				<h3 class="font300 mb0">Leave a message</h3>
				<hr>
				<form method="post" action="#" class="finder-contact">
					<div class="row">
						<div class="col-sm-12">
							<div class="row">
								<div class="col-sm-6 mb15">
									<input type="text" name="name" class="form-control"
										placeholder="Full Name...." />
								</div>
								<div class="col-sm-6 mb15">
									<input type="text" name="email" class="form-control"
										placeholder="Email Address...." />
								</div>
							</div>
						</div>
						<div class="col-sm-12 mb15">
							<textarea name="message" class="form-control" rows="5"
								placeholder="Message...."></textarea>
						</div>
					</div>
					<div class="row mb15">
						<div class="col-sm-12 text-center">
							<div class="data-status"></div>
							<!-- data submit status -->
						</div>
					</div>
					<div class="row">
						<div class="col-sm-12 text-right">
							<button type="submit" name="submit"
								class="btn btn-primary btn-lg">Submit</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
	<div class="container mb70">
		<iframe height="450" frameborder="0" style="border: 0; width: 100%;"
			class="mb0"
			src="https://www.google.com/maps/embed/v1/place?q=place_id:ChIJWalJ2wO6j4AR4A9dNSj2ATI&key=AIzaSyAcC0a6iry-BDvy1LA4EFqlvKBGTdZELJA
"
			allowfullscreen></iframe>
	</div>
	<!--footer-->
	<c:import url="footer.jsp" />
	<!-- jQuery-->
<%-- 	<script src="<c:url value="resources/js/plugins/all.js" />"></script>
	<script src="<c:url value="resources/js/finder.custom.js" />"></script> --%>
	<script src="contact_form/contact.js" type="text/javascript"></script>
</body>
</html>