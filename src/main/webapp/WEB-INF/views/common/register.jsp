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
					<h3>Sign Up</h3>
				</div>
				<div class="col-sm-6"></div>
			</div>
		</div>
	</div>
	<div class="container mb70">
		<div class="row">
			<div class="col-sm-4 col-sm-offset-4">
				<div class="border-card">
					<h3 class="font300 mb0 text-center">Create an account. It's
						Free!</h3>
					<hr>
					<form role='form'>
						<div class='form-group-icon mb15'>
							<i class='fa fa-user'></i> <input type="text"
								class='form-control' placeholder="Name">
						</div>
						<div class='form-group-icon mb15'>
							<i class='fa fa-envelope'></i> <input type="email"
								class='form-control' placeholder="Username">
						</div>
						<div class='form-group-icon mb15'>
							<i class='fa fa-lock'></i> <input type="password"
								class='form-control' placeholder="Password">
						</div>
						<div class='form-group-icon mb15'>
							<i class='fa fa-refresh'></i> <input type="password"
								class='form-control' placeholder="Confirm Password">
						</div>
						<div class="checkbox">
							<input type="checkbox" id="tm"> <label for="tm">
								Accept Terms & Conditions </label>
						</div>
						<input type="submit" value="SignUp"
							class='btn btn-primary btn-lg btn-block'>
					</form>
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