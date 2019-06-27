<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/jquery-3.3.1.min.js"></script>
<script>
$(document).on('click','#findId',function(){
	var username = $('#username').val();
 	var email = $('#email').val();


 	var postData = {'username' : username , 'email' : email};

	$.ajax({
        url:'searchajax.do',
        type:'POST',
        data: postData,
        contentType: "application/x-www-form-urlencoded; charset=UTF-8",
        dataType : "text",

        success:function(data){
        	console.log(data);
        	var userid = data
        	
       	 		 $("#searchajax").append("<h1>"+"회원님의 정보로 등록된 아이디는 : "+userid+" 입니다.</h1>")

        },
        error: function (XMLHttpRequest, textStatus, errorThrown){

        	alert('정보를 다시 입력해주시길 바랍니다.' );
        }
    });
});

</script>
	

</head>

 <style type="text/css">
 
#search{

  align: center;
  
}

 </style>

<body>


<jsp:include page="../common/header.jsp" />


<br><br><br><br><br><br>




<form method="post" id="form" name="form" >

<table border="1" align="center">
<tr height="20"><th width="150" >가입자 이름</th>
<td><input type="text" name="username" id="username" required></td></tr>

<br><br>

<tr height="20"><th width="150" >가입시 입력한 이메일</th>
<td><input type="text" name="email" id="email" required></td></tr>

<td><button id="findId">아이디 찾기</button></td>

<br><br>

<span id="searchajax"></span>

</table>



</form>



</body>
</html>