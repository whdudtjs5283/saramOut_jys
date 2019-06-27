<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.net.URLEncoder"%>
<%@ page import="java.security.SecureRandom"%>
<%@ page import="java.math.BigInteger"%>

<%@ page import="java.io.BufferedReader" %>
<%@ page import="java.io.InputStreamReader" %>
<%@ page import="java.net.HttpURLConnection" %>
<%@ page import="java.net.URL" %>
<%@ page import="java.net.URLEncoder" %>
<%@ page import="org.json.simple.JSONObject" %>
<%@ page import="org.json.simple.JSONArray" %>
<%@ page import="org.json.simple.parser.JSONParser" %>
<%@ page import="org.kh.saramout.navernews.model.vo.NaverNews" %>





<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>saramout</title>

<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

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

기업회원 로그인
	<div id="preloader"></div>
	<c:import url="common/header2.jsp" />
	<hr style="clear: both;">

<br><br><br><br><br>




	<!--footer-->
	<c:import url="common/footer2.jsp" />
	<!-- jQuery-->
	<!--         <script src="js/plugins/all.js"></script>
        <script src="js/finder.custom.js"></script> -->
<%-- 	<script src="<c:url value="resources/js/plugins/all.js" />"></script>
	<script src="<c:url value="resources/js/finder.custom.js" />"></script>
 --%>



</body>
</html>