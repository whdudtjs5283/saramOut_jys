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
					<h3>Typography</h3>
				</div>
				<div class="col-sm-6"></div>
			</div>
		</div>
	</div>
	<div class="container">
		<div class="row mb30">
			<div class="col-sm-6 mb40">
				<h2 class="left-title">Headings</h2>
				<h1>H1 Heading</h1>
				<h2>H2 Heading</h2>
				<h3>H3 Heading</h3>
				<h4>H4 Heading</h4>
				<h5>H5 Heading</h5>
				<h6>H6 Heading</h6>
			</div>
			<div class="col-sm-6 mb40">
				<h2 class="left-title">Sub Headings</h2>
				<h1>
					H1 Heading <small>Sub heading</small>
				</h1>
				<h2>
					H2 Heading <small>Sub heading</small>
				</h2>
				<h3>
					H3 Heading <small>Sub heading</small>
				</h3>
				<h4>
					H4 Heading <small>Sub heading</small>
				</h4>
				<h5>
					H5 Heading <small>Sub heading</small>
				</h5>
				<h6>
					H6 Heading <small>Sub heading</small>
				</h6>
			</div>
		</div>
		<div class="row mb30">
			<div class="col-sm-6 mb40">
				<h2 class="left-title">Paragraphs</h2>
				<p>Doloremque laudantium, totam rem aperiam, eaque ipsa quae ab
					illo inventore.</p>
				<p class="text-muted">Doloremque laudantium, totam rem aperiam,
					eaque ipsa quae ab illo inventore.</p>
				<p class="text-danger">Doloremque laudantium, totam rem aperiam,
					eaque ipsa quae ab illo inventore.</p>
				<p class="text-primary">Doloremque laudantium, totam rem
					aperiam, eaque ipsa quae ab illo inventore.</p>
				<p class="text-warning">Doloremque laudantium, totam rem
					aperiam, eaque ipsa quae ab illo inventore.</p>
			</div>
			<div class="col-sm-6 mb40">
				<h2 class="left-title">Text alignments</h2>
				<p class="text-left">1.Left- Doloremque laudantium, totam rem
					aperiam, eaque ipsa quae ab illo inventore.</p>
				<p class="text-center">1.Center- Doloremque laudantium, totam
					rem aperiam, eaque ipsa quae ab illo inventore.</p>
				<p class="text-right">1.Right- Doloremque laudantium, eaque ipsa
					quae ab illo inventore.</p>
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