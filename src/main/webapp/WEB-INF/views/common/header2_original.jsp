<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" errorPage="common/error.jsp"%>
<%@ page import="java.net.URLEncoder"%>
<%@ page import="java.security.SecureRandom"%>
<%@ page import="java.math.BigInteger"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<head>
<meta charset="UTF-8">
<title>saramout</title>

<!-- <meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1"> -->
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

<!-- plugins -->

<link rel="stylesheet" type="text/css" href="resources/css/bundle.css">
<link rel="stylesheet" type="text/css" href="resources/css/style.css">
<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
</head>
</head>
<body>

	<!-- Static navbar -->
	<nav class="navbar navbar-default navbar-fixed-top">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#navbar" aria-expanded="false"
					aria-controls="navbar">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="main.do"><img
					src="resources/images/logo.png" alt=""></a>
			</div>
			<div id="navbar" class="navbar-collapse collapse">
				<ul class="nav navbar-nav navbar-right">
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">홈 <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="index.do">Home 1</a></li>
							<li><a href="index-2.do">Home 2</a></li>
							<li><a href="index-3.do">Home 3</a></li>

						</ul></li>
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">개인회원<span class="caret"></span></a>
						<ul class="dropdown-menu">
						<li><a href="main.do">home</a></li>
							<li><a href="recruitlist.do">서울시 일자리 정보</a></li>
							<li><a href="workinfoList.do"> 서울시 일자리 정보 리스트출력</a></li>
							<li><a href="moveAjax.do">Ajax Test</a></li>
							<li><a>고객센터</a></li>
							<li><a
								href="https://kauth.kakao.com/oauth/
	authorize?client_id={c5f5052213a85b983eb8585005025c2c}&redirect_uri=http://{localhost:8089/saramout}}&response_type=code">카카오
									로그인</a></li>
							<li><a href="add-listing.do">공고등록</a></li>
							<li><a href="listing-grid.do">Listing Grid fullwidth</a></li>
							<li><a href="listing-grid-sidebar.do">Listing Grid +
									Sidebar</a></li>
							<li><a href="listing-map.do">With Map</a></li>
							<li><a href="listing-row.do">Row full width</a></li>
							<li><a href="listing-row-sidebar.do">Row + Sidebar</a></li>
							<li><a href="employmentDetail.do">공고 상세</a></li>
							<li><a href="agents.do">Agent Listing</a></li>
							<li><a href="single-agent.do">Agent Detail</a></li>
							<li><a href="companyProfile.do">기업 정보 등록</a></li>
							<li><a href="companyProfile2.do">기업 정보 수정</a></li>
						</ul></li>
					<li class="dropdown mega-li"><a href="#"
						class="dropdown-toggle" data-toggle="dropdown" role="button"
						aria-haspopup="true" aria-expanded="false">기업회원 <span
							class="caret"></span></a>
						<ul class="dropdown-menu mega-dropdown-menu">
							<li>
								<div class="container">
									<div class="row">
										<div class="col-sm-6 col-md-3">
											<h5>New York</h5>
											<ul class="list-unstyled">
												<li><a href="#">Brooklyn</a></li>
												<li><a href="#">Manhattan</a></li>
												<li><a href="#">Queens</a></li>
												<li><a href="#">Bronx</a></li>
											</ul>
										</div>
										<div class="col-sm-6 col-md-3">
											<h5>London</h5>
											<ul class="list-unstyled">
												<li><a href="#">Croydon</a></li>
												<li><a href="#">Epsom</a></li>
												<li><a href="#">Camberley</a></li>
												<li><a href="#">Bracknell</a></li>
											</ul>
										</div>
										<div class="col-sm-6 col-md-3">
											<h5>Paris</h5>
											<ul class="list-unstyled">
												<li><a href="#">Grenelle</a></li>
												<li><a href="#">Luxembourg</a></li>
												<li><a href="#">Place De La Bastille</a></li>
												<li><a href="#">Grand Palais</a></li>
											</ul>
										</div>
										<div class="col-sm-6 col-md-3">
											<h5>Madrid</h5>
											<ul class="list-unstyled">
												<li><a href="#">Centro</a></li>
												<li><a href="#">Retiro</a></li>
												<li><a href="#">Chamberi</a></li>
												<li><a href="#">Dos De Mayo Plaza</a></li>
											</ul>
										</div>
									</div>
								</div>
							</li>
						</ul></li>
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">공채 <span class="caret"></span></a>
						<ul class="dropdown-menu">

							<li><a href="about.do">About us</a></li>
							<li><a href="how-work.do">How it work</a></li>
							<li><a href="pricing.do">Pricing</a></li>
							<li><a href="faq.do">FAQ</a></li>
							<li><a href="error.do">Error 404</a></li>
							<li><a href="blog.do">Blog</a></li>
							<li><a href="register.do">회원가입</a></li>

							<li class="divider"></li>
							<li><a href="typography.do">Typography</a></li>
							<li><a href="grid-system.do">Grid system</a></li>
						</ul></li>
					<li><a href="contact.do">추천정보</a></li>

					<c:if test="${empty loginMember }">
						<li><a href="login1.do">개인회원 로그인</a></li>
						<li><a href="login2.do">기업 회원 로그인</a></li>

						<li class="button-navbar"><a href="enroll.do"><i
								class="fa fa-plus"></i> 회원가입</a></li>
					</c:if>
					<c:if test="${!empty loginMember }">

						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown" role="button" aria-haspopup="true"
							aria-expanded="false">${loginMember.username }님 <span
								class="caret"></span></a>
							<ul class="dropdown-menu">

								<li><a href="about.do">마이페이지</a></li>
								<li><a href="about.do">내이력서 보기</a></li>

							</ul></li>
						<li class="button-navbar"><a href="logout.do">로그아웃</a></li>
					</c:if>
				</ul>
			</div>
			<!--/.nav-collapse -->
		</div>
		<!--/.container-fluid -->

	</nav>
	<script src="<c:url value="resources/js/plugins/all.js" />"></script>
	<script src="<c:url value="resources/js/finder.custom.js" />"></script>


</body>
</html>








