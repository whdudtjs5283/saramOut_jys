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
					<h3>Jonathan Doe</h3>
				</div>
				<div class="col-sm-6"></div>
			</div>
		</div>
	</div>

	<div class="container mb30">
		<div class="row">
			<div class="col-sm-3 mb40">
				<img src="resources/images/av1.jpg" alt="" class="img-responsive mb15">
				<a href="#" class="link-underline">Change Profile</a>
			</div>
			<div class="col-sm-8 col-sm-offset-1 mb40">
				<form>
					<div class="form-group">
						<label></label> <input type="email" class="form-control"
							placeholder="John Doe">
					</div>
					<div class="form-group">
						<label>Email address</label> <input type="email"
							class="form-control" placeholder="john@gmail.com">
					</div>
					<div class="form-group">
						<label>Phone number</label> <input type="text"
							class="form-control" placeholder="01-394-4932">
					</div>
					<div class="form-group">
						<label>Address</label> <input type="text" class="form-control"
							placeholder="124, Munnawali, Jaipur, 302012">
					</div>
					<div class="form-group">
						<label>New Password</label> <input type="password"
							class="form-control">
					</div>
					<div class="form-group">
						<label>Confirm Password</label> <input type="password"
							class="form-control">
					</div>
					<div class="text-right">
						<button type="submit" class="btn btn-primary btn-lg">Update
							Profile</button>
					</div>
				</form>
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