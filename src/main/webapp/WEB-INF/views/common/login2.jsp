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
<title>사람아웃</title>


</head>
<body>
	<!-- Preloader -->
	<div id="preloader"></div>
	
	<c:import url="header2.jsp" />

	<div class="page-bread mb70">
		<div class="container">
			<div class="row">
				<div class="col-sm-6">
					<h3>로그인</h3>
				</div>
				<div class="col-sm-6"></div>
			</div>
		</div>
	</div>
	<div class="container mb70">
		<div class="row">
			<div class="col-sm-4 col-sm-offset-4">
				<div class="border-card">
				<div>&nbsp;
				
				<a href="login1.do" class="btn btn-lg btn-white">개인 회원</a>&nbsp; &nbsp; &nbsp; &nbsp;
					<a href="#" class="btn btn-lg btn-navy">기업 회원</a>  
				</div>
				<hr>
					<h4 class="font300 mb0 text-center">로그인이 필요한 서비스입니다.</h4>
					<hr>
					
					
					<form action="login2.do" method="post">
						<div class='form-group-icon mb15'>
						
						
			<i class='fa fa-envelope'></i> 
			<input type="text" class='form-control' placeholder="아이디" name="bid">
						</div>
						
			<div class='form-group-icon mb15'> <i class='fa fa-lock'></i> 
			
			<input type="password" class='form-control' placeholder="비밀번호" name="userpwd">
						</div>
						
			<div class="checkbox">
				<input type="checkbox" id="rm"> <label for="rm"> 아이디 저장 </label>
						</div>
						<input type="submit" value="로그인"
							class='btn btn-default btn-lg btn-block'>
					</form>
					
					
					
					<hr>
					
					
					<br>
					
					
					
					<div class="col-sm-4 mb40">
					
					
				<a href="enroll2.do"><h5>회원가입</h5></a>
				</div>
								<div class="col-sm-4 mb40">
		
					<a><h5>아이디 찾기</h5></a> &nbsp; 
				</div>
				
					<div class="col-sm-4 mb40">
		
					<a><h5>암호 찾기</h5></a> &nbsp; 
				</div>
				
			
				</div>
			</div>
		</div>
	</div>
	

		<%-- 
		<c:if test="${!empty loginMember2 }">
			<table id="loginfrm">
				<tr>
					<th>${loginMember2.username }님</th>
					<th><a href="logout.do">로그아웃</a></th>
				</tr>
				<c:url var="mi" value="myinfo.do">
					<!-- name 속성의 이름이 반드시 vo의 필드명과 같아야 함 -->
					<c:param name="userid" value="${loginMember2.bid }" />
				</c:url>
				<tr>
					<th><a href="${mi }">내 정보보기</a></th>
					<th><a href="bwrite.do">게시글쓰기</a></th>
				</tr>
				<tr>
					<th><a>메일확인</a></th>
					<th><a>쪽지확인</a></th>
				</tr>
			</table>
		</c:if> --%>

	<!--footer-->
	<c:import url="footer2.jsp" />
	<!-- jQuery-->
<%-- 	<script src="<c:url value="resources/js/plugins/all.js" />"></script>
	<script src="<c:url value="resources/js/finder.custom.js" />"></script> --%>
</body>
</html>