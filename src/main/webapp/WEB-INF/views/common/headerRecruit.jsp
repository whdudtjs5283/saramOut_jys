<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
	<nav class="navbar navbar-default navbar-fixed-top" id="headerNav">
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
							<li><a href="recruitlist.do">서울시 일자리 정보 데이터베이스 입력</a></li>
							<li><a href="workinfoList.do?page=1"> 서울시 일자리 정보 리스트출력</a></li>
							<li><a href="aa.do">기업리스트</a></li>
								<li><a href="companyProfile.do">기업 정보 등록</a></li>
							<li><a href="companyProfile2.do">기업 정보 수정</a></li>
							<li><a href="add-listing.do">공고등록</a></li>
							<li><a href="employmentDetail.do">공고 상세</a></li>
							<li><a href="eupdate.do">채용공고 수정</a></li>
							<li><a href="employmentList.do">MY 채용공고 리스트</a></li>
							<li><a href="allEmploymentList.do">채용공고 리스트 개인용</a></li>
							
							<li><a href="moveAjax.do">Ajax Test</a></li>
							<li><a>고객센터</a></li>
							<li><a
								href="https://kauth.kakao.com/oauth/
	authorize?client_id={c5f5052213a85b983eb8585005025c2c}&redirect_uri=http://{localhost:8089/saramout}}&response_type=code">카카오
									로그인</a></li>
							<li><a href="add-listing.do">Add Listing</a></li>
							<li><a href="listing-grid.do">Listing Grid fullwidth</a></li>
							<li><a href="listing-grid-sidebar.do">Listing Grid +
									Sidebar</a></li>
							<li><a href="listing-map.do">With Map</a></li>
							<li><a href="listing-row.do">Row full width</a></li>
							<li><a href="listing-row-sidebar.do">Row + Sidebar</a></li>
							<li><a href="single-listing.do">Listing Detail</a></li>
							<li><a href="agents.do">Agent Listing</a></li>
							<li><a href="single-agent.do">Agent Detail</a></li>
							<li><a href="profile.do">My Profile</a></li>
						</ul></li>
						

						
						
						
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">공채 <span class="caret"></span></a>
						<ul class="dropdown-menu">

							<li><a href="aa.do">기업리스트</a></li>
								<li><a href="companyProfile.do">기업 정보 등록</a></li>
							<li><a href="companyProfile2.do">기업 정보 수정</a></li>
							<li><a href="add-listing.do">공고등록</a></li>
							<li><a href="employmentDetail.do">공고 상세</a></li>
							<li><a href="eupdate.do">채용공고 수정</a></li>
							<li><a href="employmentList.do">MY 채용공고 리스트</a></li>
							<li><a href="allEmploymentList.do">채용공고 리스트</a></li>
							<li><a href="register.do">회원가입</a></li>
								
							<li class="divider"></li>
							<li><a href="typography.do">Typography</a></li>
						<li><a href="views/common/blog">블로그</a></li>
							
							
						</ul></li>
					<li><a href="contact.do">추천정보</a></li>

					<c:if test="${empty loginMember }">
						<li><a href="login1.do">로그인</a></li>

						<li class="button-navbar">
						<a href="enroll.do"><iclass="fa fa-plus"></i> 회원가입</a></li>
						
					</c:if>
					<c:if test="${!empty loginMember }">

						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown" role="button" aria-haspopup="true"
							aria-expanded="false">${loginMember.username }님 <span
								class="caret"></span></a>
							<ul class="dropdown-menu">

								<li><a href="about.do">마이페이지</a></li>
								<li><a href="about.do">내이력서 보기</a></li>
								<li><a href="moveMyResumeList.do?userid=${ loginMember.userid }">이력서 목록</a></li>
								<li><a href="moveNewResume.do?userid=${ loginMember.userid }">새 이력서 등록</a></li>
								
								
								
							</ul></li>
						<li class="button-navbar"><a href="logout.do">로그아웃</a></li>
					</c:if>
				</ul>
			</div>
			<!--/.nav-collapse -->
		</div>
		<!--/.container-fluid -->

	</nav>
	


</body>
</html>








