<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="kr">

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>NaverLoginSDK</title>
	
<script type="text/javascript"
  src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.2.js"
  charset="utf-8"></script>
<script type="text/javascript"
  src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
<style type="text/css">
html, div, body, h3 {
  margin: 0;
  padding: 0;
}

h3 {
  display: inline-block;
  padding: 0.6em;
}
</style>

</head>
<body>

<br><br>



  <div
    style="background-color: #15a181; width: 100%; height: 50px; text-align: center; color: white;">
    <h3>Naver_Login Success</h3>
  </div>
  <br>
  <h2 style="text-align: center" id="email"></h2>

  
  
  <br><br>
  
  <script type="text/javascript">
	$(document).ready(function() {
	var id =  ${result}.response.id;
	var email =  ${result}.response.email;
    $("#email").html("환영합니다. "+email+"님");
   		console.log(email);
   		
   		setTimeout(function(){
   			location.href= "checklogin.do?email="+ email
   		},2000);
    });
	
	//location.href= "checklogin.do?email="+ email
			
			
  //location.href = "${pageContext.request.contextPath}/";
	/* var naver_id_login = new naver_id_login("{xVUZFTBT7Q9aPfbhZC4i}","http://192.168.120.56:8867/fnp/callback.do");
	
	naver_id_login.get_naver_userprofile("naverSignInCallback()");
	
	function naverSignInCallback(){
		var email = naver_id_login.getProfileData("email")+"@n";
		var nickname = naver_id_login.getProfileData("nickname");
		
		
	}
	 */
</script>
</head>
<body>

  <div
    style="background-color: #15a181; width: 100%; height: 50px; text-align: center; color: white;">
    <h3>Naver_Login Success</h3>
  </div>
  <br>
  <h2 style="text-align: center" id="email"></h2>
<!--   <script>
   $(function () {
      $("body").hide();
      $("body").fadeIn(1000);  // 1초 뒤에 사라 지자 
     
      setTimeout(function(){$("body").fadeOut(1000);},1000);
     
      setTimeout(function(){location.href= "/fnp/checklogin.do?email="email},1000);
// 1초 뒤에 메인 화면 으로 가자  
    
    });
  </script> -->
	

</body>
</html>