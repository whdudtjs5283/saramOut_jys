<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>


<!--  밑에 두줄 스크립트가 있어야 우클릭 슬라이드가 작동함 -->
<script src="<c:url value="resources/js/plugins/all.js" />"></script>
<script src="<c:url value="resources/js/finder.custom.js" />"></script>

<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="resources/css/bundle.css">
<link rel="stylesheet" type="text/css" href="resources/css/style.css">
</head>
<body>



<!--  스크롤 번역 시작 -->

<br><br><br><br>

		<div class="container text-center bg-grey">
			<div id="myCarousel" class="carousel slide text-center"	data-ride="carousel">

				<ol class="carousel-indicators">
				<!--  li 부분에 class="active" 하면 자동으로 넘어감-->
					<li data-target="#myCarousel" data-slide-to="0"></li>
					<li data-target="#myCarousel" data-slide-to="1"></li>
					<li data-target="#myCarousel" data-slide-to="2"></li>
				</ol>

				<div class="carousel-inner" role="listbox">
					<div class="item active">
						<div class="item">
							<p class="p-01 godo-font">English Version 영문번역</p>
							
							${introduce}
						
						
						<h4></h4>
						</div>
					</div>
					<div class="item">
						<p class="p-01 godo-font">니혼진 일어 번역</p>
						
							${introduce2}
						
						
						
						<h4></h4>
					</div>
					<div class="item">
						<p class="p-01 godo-font">중국어 번역</p>
						
							${introduce3}
						
						
						
						<h4></h4>
					</div>
				</div>

				<a class="left carousel-control" href="#myCarousel" role="button"
					data-slide="prev"> <span
					class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
					<span class="sr-only">Previous</span>
				</a> <a class="right carousel-control" href="#myCarousel" role="button"
					data-slide="next"> <span
					class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
					<span class="sr-only">Next</span>
				</a>
			</div>
		</div>
		<!--  하단 기업순위  끝 -->


</body>
</html>