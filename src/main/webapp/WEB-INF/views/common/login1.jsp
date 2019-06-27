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
	<c:import url="header.jsp" />

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
				<div>
					 &nbsp;<a href="#" class="btn btn-lg btn-navy">개인 회원</a> &nbsp; &nbsp; &nbsp; &nbsp;
					<a href="login2page.do" class="btn btn-lg btn-white">기업 회원</a>  
				</div>
				<hr>
				
					<h4 class="font300 mb0 text-center">
					로그인이 필요한 서비스입니다. 
					
					</h4>
					
					<hr>
					
					
					<form action="login.do" method="post">
						<div class='form-group-icon mb15'>
							<i class='fa fa-envelope'></i> 
							<input type="text"
								class='form-control' placeholder="아이디" name="userid">
						</div>
						<div class='form-group-icon mb15'>
							<i class='fa fa-lock'></i> 
							
							<input type="password"
								class='form-control' placeholder="비밀번호" name="userpwd">
						</div>
						
						
						
						
						<div class="checkbox">
							<input type="checkbox" id="rm"> <label for="rm">
								아이디 저장 </label>
						</div>
						<input type="submit" value="로그인"
							class='btn btn-default btn-lg btn-block'>
					</form>
					
					
					
					<hr>
					
					<div class='buttons-login' align="center">

							<!-- 네이버 로긴  -->

							
			<a href="${url}">
		<img style="width: 180px; height: 40px;" src="https://developers.naver.com/doc/review_201802/CK_bEFnWMeEBjXpQ5o8N_20180202_7aot50.png"/></a>

					</div>
					
					
					
					<!-- 카카오 로그인 -->
					<div align="center">
                  
                        <tr style="border-top: 1px dashed #aaa;">
                           <td class="socialtag" style="vertical-align: middle; padding-top: 40px; text-align: center;">
         
         
         <a href="https://kauth.kakao.com/oauth/authorize?client_id=b7a0af592b47924451e65f0afd308d4f&redirect_uri=http://localhost:8089/saramout/kakaologin.do&response_type=code">
                              <img style="width: 180px; height: 40px; margin:0;" src="resources/images/kakao1.png"/></a>
                              
                             
                           
                           </td>
                        </tr>
          
                  </div>
					
					
					<br>
					
					<div class="col-sm-4 mb40">
				<a href="enroll.do"><h5>회원가입</h5></a>
				</div>
				
					<div class="col-sm-4 mb40">
		
					<a href="searchidPage.do"><h5>아이디 찾기</h5></a> &nbsp; 
				</div>
				
					<div class="col-sm-4 mb40">
		
					<a><h5>암호 찾기</h5></a> &nbsp; 
				</div>
			
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