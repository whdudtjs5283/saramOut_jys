<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
 	<meta name="viewport" content="width=device-width", inital-scale="1">
	<link rel="stylesheet" href="resources/assets/css/main.css" /> 
	<meta charset="utf-8" />
	<meta name="viewport">
		<content="width=device-width, initial-scale=1, user-scalable=no" />
	<link rel="stylesheet" href="resources/assets/css/main.css" />
	<!-- Scripts -->
	<script src="resources/assets/js/jquery.min.js"></script>
	<script src="resources/assets/js/jquery.dropotron.min.js"></script>
	<script src="resources/assets/js/browser.min.js"></script>
	<script src="resources/assets/js/breakpoints.min.js"></script>
	<script src="resources/assets/js/util.js"></script>
	<script src="resources/assets/js/main.js"></script>
<meta charset="UTF-8">
<title>final</title>
		<style>
			* {box-sizing: border-box}
			
			/* Add padding to containers */
			.container {
			  padding: 10px;
			}
			
			/* Full-width input fields */
			input[type=text], input[type=password] {
			  width: 30%;
			  padding: 15px;
			  margin: 5px 0 22px 0;
			  display: inline-block;
			  border: none;
			  background: #f1f1f1;
			}
			/*비밀번호 확인*/
			input[type=password2]{
			 width:30%;
			 padding:15px;
			 margin: 5px 0 22px 0;
			 display: inline-block;
			 border :none;
			 background:  #f1f1f1;
			}
			
			input[type=text]:focus, input[type=password]:focus {
			  background-color: #ddd;
			  outline: none;
			}
			/*비밀번호 확인*/
			input[type=password2]:focus{
			  background-color: #ddd;
			  outline: none;
			}
			
			/* Overwrite default styles of hr */
			hr {
			  border: 1px solid #f1f1f1;
			  margin-bottom: 25px;
			}
			
			/* Set a style for the submit/register button */
			.registerbtn {
			  
			  font-size:medium;
			  color: white;
			  margin: 8px 0;
			  border: none;
			  cursor: pointer;
			  width: 15%;
			  opacity: 1.5;
			}
			
			.registerbtn:hover {
			  opacity:1;
			}
			
			/* Add a blue text color to links */
			a {
			  color: dodgerblue;
			}
			
			/* Set a grey background color and center the text of the "sign in" section */
			.signin {
			  background-color: #f1f1f1;
			  text-align: center;
			  font-size: large;
			  width: 50%;
			  
			}
			
			label{
				font-size: medium;
				text-align: left;
				width:350px;
			}
			.emailCheckbtn{
				margin-top: 8px 0;
			}
			.emailChk{
				width: 350px;
				margin-bottom: 15px;
			}
			
		</style>
<script type="text/javascript">

	var email = false;
	var nicknamecheck = false;	
	var pw = false;
	var pw2 = false;


	var mailJ = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
	var nameJ = /^[ㄱ-ㅎ|가-힣|a-z|A-Z|0-9|\*]{2,6}$/;
	var pwJ = /^[A-Za-z0-9]{4,16}$/;

	function emailcheck(){
		var em = $("#email").val();
		console.log(em);
		 if(em ==""){
			 document.getElementById("email_check").style.color="red";
			$("#email_check").html("이메일을 입력해주세요.");
			email = false;
		 }else if(!mailJ.test(em)){
			 document.getElementById("email_check").style.color="red";
			$("#email_check").html("이메일 형식에 맞게 입력해주세요 ex)내가스터디@domain.com");
			email = false;
		}else{
					
		$.ajax({
			url : "emailCheck.do",
			type :"POST",
			data :{
				email : $("#email").val()
			},
			success : function(result){
				if(result == "ok"){
					console.log("result :" + result);
					document.getElementById("email_check").style.color="red";
					$("#email_check").html("사용중인 이메일 입니다.");
					email = false;
				}else{
					document.getElementById("email_check").style.color="blue";
					$("#email_check").html("사용가능한 이메일 입니다.");
					email = true;
/* 					
					if(mailJ.test(email)){
						$("#email_check").text("이메일 형식에 맞게 입력해주세요 ex)내가스터디@domain.com");
					}else if(email ==""){
						$("#email_check").html("이메일을 입력해주세요 :)");
					}else{
						$("#email_check").html("");
					} */
				}
					
			}, error : function(){
				console.log("실패");
			}
		});
		}
	}

	function nickNameCheck(obj){
	      var nickname = $('#nickname').val();
	      var maxByte = 20;
	      var str = obj.value;
	      var str_len = str.length;

	      var rbyte = 0;
	      var rlen = 0;
	      var one_char = "";
	      var str2 = "";
	      
	      for(var i = 0; i < str_len; i++){
	         one_char = str.charAt(i);
	         if(escape(one_char).length > 4){
	            rbyte += 3;
	         }else{
	            rbyte+=2;
	         }
	         if(rbyte <= maxByte){
	            rlen = i + 1;
	         }
	      }
	   
	      if(nickname == ""){
	         $("#nick_name").html("닉네임을 입력해주세요 :)");
	         nicknamecheck = false;
	      }else if(!nameJ.test(nickname)){
	         $("#nick_name").html("닉네임은 2~10글자 영어소문자 대문자만 가능합니다.");
	         nicknamecheck = false;
	      }else if(rbyte > maxByte){
	         $("#nick_name").html("닉네임 길이가 초과되었습니다.");
	         str2 = str.substr(0, rlen);
	         obj.value = str2;
	      }else{
	      
	      $.ajax({
	         url : "nickNameCheck.do",
	         type :"POST",
	         data :{
	            nickname : nickname
	         },
	         success : function(result){
	            if(result == "ok"){
	               console.log("result :" + result);
	               document.getElementById("nick_name").style.color="red";
	               $("#nick_name").html("사용중인 닉네임 입니다.");
	               nicknamecheck = false;
	            }else{
	               document.getElementById("nick_name").style.color="blue";
	               $("#nick_name").html("사용가능한 닉네임 입니다.");
	               nicknamecheck = true;
	               /* if(nameJ.test(nickname)){
	                  $("#nick_name").html("닉네임은 10글자까지 입력 가능합니다.");
	               }else if(email == " "){
	                  $("#nick_name").html("닉네임을 입력해주세요 :)");
	               }else{
	                  $("#nick_name").html("");
	               } */
	            }
	               
	         }, error : function(){
	            console.log("실패");
	         }
	      });
	      }
	   }
	
	// 비밀번호 유효성 검사
	// 1-1 정규식 체크
	function passwordCheck1(){
	$('#password').blur(function() {
		if (pwJ.test($('#password').val())) {
			console.log('true');
			$('#pass_word').text('');
		} else {
			console.log('false');
			$('#pass_word').text('숫자 or 문자로만 4~16자리 입력');
			$('#pass_word').css('color', 'red');
		}
	});
	}
	
	// 1-2 패스워드 일치 확인
	function passwordCheck2(){
	$('#password2').blur(function() {
		if ($('#password').val() != $(this).val()) {
			$('#pass_word2').text('비밀번호가 일치하지 않습니다 :(');
			$('#pass_word2').css('color', 'red');
		} else {
			$('#pass_word2').text('');
		}
	});
	}
	function checkvalidata(){
		
		if ($('#password').val() != $('#password2').val()) {
			$('#pass_word2').text('비밀번호가 일치하지 않습니다 :(');
			$('#pass_word2').css('color', 'red');
			pw2 = false;
		} else {
			$('#pass_word2').text('');
			pw2 = true;
		}
		
		if (pwJ.test($('#password').val())) {
			console.log('true');
			$('#pass_word').text('');
			pw = true;
		} else {
			console.log('false');
			$('#pass_word').text('숫자 or 문자로만 4~16자리 입력');
			$('#pass_word').css('color', 'red');
			pw = false;
		}
		
		if(pw == false){
			$('#password').select();
			return false;
		}else if(pw2 == false){
			$('#password2').select();
			return false;
		}else if(nicknamecheck == false){
			$('#nickname').select();
			return false;
		}else if(email == false){
			$('#email').select();
			return false;
		}
		
		console.log(email + ", " + nicknamecheck + ", " + pw + ", " + pw2);
		
		return email && nicknamecheck && pw && pw2;
	}
	
</script>

</head>
<body>

	<div id="page-wrapper">
      <!-- Header -->
	<div id="header">
		<c:import url="../common/header.jsp" />
		<!-- Nav -->
		
		</div>
	</div>
	
	
<section class="wrapper style1">
	<form action="minsert.do" method="post" onsubmit="return checkvalidata();">
   <div class="container">
   <!-- Content -->
      <div class="col-11 col-12-narrower">
      	<div id="content" align="center">
      <!-- 추가한거 -->
      	<h2 align="center">회원가입</h2>
      	<hr>
      		<div class="form-group">
		      <label for="email"><b>이메일</b></label>
		  		<input type="text" placeholder="이메일을 입력하세요. ex)내가스터디@naver.com" name="email" id="email" onblur="emailcheck()"required><br>
		  		<div id="email_check" style="color: red;"></div>
		         </div>
		         
		         <!-- <div class="emailChk" align="left">
		         <button type="button" id="emailCheck" class="emailCheckbtn">이메일 중복확인</button>
		         </div> -->
		         
		         <div class="form-group">
		         <label for="nickname"><b>닉네임</b></label>
		         <input type="text" placeholder="NICKNAME" id="nickname"name="nickname" onblur="nickNameCheck(this)"maxlength="6" required>
		         <div class="check_font" id="nick_name"style="color: red;"></div>
		         </div>
		         
		         <div class="form-group">
		         <label for="password"><b>패스워드</b></label>
		         <input type="password" placeholder="PASSWORD" id="password"name="password"onblur="passwordCheck1()"required>
		         <div class="check_font" id="pass_word"></div>
		         </div>
		         
		         <div class="form-group">
		         <label for="password2"><b>패스워드 확인</b></label>
		         <input type="password" placeholder="Confirm Password" id="password2"name="password2"onblur="passwordCheck2()"required><br>
		         <div class="check_font" id="pass_word2"></div>
		         </div>
		         
		         <hr>
		         
		         <input type="checkbox" id="check" name="check" required></input>
		         	<label for="check">이용약관과 개인정보 수집및 이용에 동의합니다.</label><br>
		         	
		         <input type="checkbox" id="check2" name="check2"required></input>
		         <label for="check2">만 14세 이상입니다.</label>
		         
		         <div class="submit" align="center">
		         <button type="submit" class="registerbtn" id="reg_submit">회원가입</button>
		         </div>
      </div><!-- content div 영역 -->
   </div><!-- class col-11영역 -->
   </div><!-- container영역 -->
   				<div class="container signin">
   					<p>이미 계정이 있으십니까?&nbsp&nbsp<a href="loginview.do">로그인</a></p>
   				</div>
   </form>
   </section>
   

   
</body>
	

</html>