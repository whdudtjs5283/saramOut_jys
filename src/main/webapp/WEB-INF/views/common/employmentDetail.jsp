<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" errorPage="common/error.jsp" %>
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


<!-- 그래프관련 -->
<!--d3js CDN-->
<script src="https://d3js.org/d3.v4.min.js"></script>
<!--다운 받아서 포함 시키기-->
<link rel="stylesheet" href="/css/billboard.css">
<script src = "js/billboard.js"></script>

<script src="<c:url value="resources/js/billboard.js" />"></script>
<script src="<c:url value="resources/css/billboard.css" />"></script>

<!-- 그래프 관련 끝 -->


<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->


<title>사람아웃</title>
<style type="text/css">
img{ cursor:pointer; }
</style>
</head>

<script type="text/javascript" src="${ pageContext.request.contextPath }/resources/js/jquery-3.3.1.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<script type="text/javascript">

function openWin(){
	var url ="applyEmp.do?userid=${loginMember.userid}&recruit_num=${employment.recruit_num}";
	window.open(url, "", "width=700, height=500, left=600");
	
}


// 5월24일 추가

$(function(){
    $('#btnLike2').on('click', function(){
       alert("채용공고 스크랩은 개인회원 전용입니다.");
    });
});

$(document).ready(function () {
    
    var isLike = false;
    
    $('#btnLike').on('click', function(){
       let flag = isLike ? 'minus' : 'plus';
       $.ajax({
          method: "POST",
          url: "mscrape.do",
          data: { flag: flag, userid: '${ loginMember.userid }', recruit_num: '${employment.recruit_num}'}
       })
       .done(function(msg) {
          $('#likeCount').text(msg);
          isLike = !isLike;
          if(isLike) {
             document.getElementById("btnLike").src = "${ pageContext.request.contextPath }/resources/images/star2.png";
             console.log(isLike);
          } else {
             document.getElementById("btnLike").src = "${ pageContext.request.contextPath }/resources/images/star1.png";
             console.log(isLike);
          }
          
          $('#btnLike').css('background-size', 'contain');
       });
    });
   });
    


</script>
  
  





<body>
	<!-- Preloader -->
	<div id="preloader"></div>
	<c:import url="header.jsp" />
	
	<br><br>

	
	
	<br>

	<div class="listing-detail-header mb50">
		<div class="container">
			<span style="font-size:18pt; color:black;"><strong>${employment.recruit_title}</strong></span>
         
         <c:if test="${ empty loginMember.userid }">
            <img src="${ pageContext.request.contextPath }/resources/images/star1.png" id="btnLike2" style="width:30px;height:30px;">
            <span id="likeCount" style="color:white;">1</span>
         </c:if>
         <c:if test="${ !empty loginMember.userid }">
            <c:if test="${ loginMember.userid eq mScrape.mscrape_userid and employment.recruit_num eq mScrape.mscrape_recruit_no and !empty mScrape.mscrape_like}">
              <img src="${ pageContext.request.contextPath }/resources/images/star2.png" id="btnLike" style="width:30px;height:30px;">
               <span id="likeCount" style="color:white;">1</span>
            </c:if>
            <c:if test="${ loginMember.userid ne mScrape.mscrape_userid }">
               <img src="${ pageContext.request.contextPath }/resources/images/star1.png" id="btnLike" style="width:30px;height:30px;">
               <span id="likeCount" style="color:white;">1</span>
            </c:if>   
         </c:if>
			<h3>${companyInfo.bid} 회사이름 ${employment.bid } </h3>
			<h5>
				<i class="fa fa-home"></i> &nbsp; ${companyInfo.homepage}
				
			</h5>
			<p></p>
			<p>시작일: ${employment.startdate} 마감일: ${employment.enddate}</p>
			<p>마감일까지 4일 남았습니다.</p>
			<br>
			<h5>업종 :</h5>${companyInfo.company_type}
			<br>
			<h5>
				<i class="	fa fa-krw"></i> 매출액 :
			</h5>${companyInfo.sales}
			<br>
			<h5>
				<i class="fa fa-users"></i> 사원수 :
			</h5>${companyInfo.employees}

			<br>
			<h5>대표자명 :</h5>${companyInfo.represent}
			<br>
			<h5>설립일 :</h5>${companyInfo.establish}
			
			
			${companyInfo.bid}${companyInfo.bid}${companyInfo.bid}${companyInfo.bid}
		</div>
		
		<div class="col-sm-9"></div>
		
		
		<div class="buttons">
			<!-- <i class="fa fa-star text-warning"></i> -->
			
			<a  class="btn btn-yellow btn-sm">스크랩</a> 
			

			<button onclick="openWin()"
				class="btn btn-primary btn-lg">지원하기</button>
				공고 번호 ${employment.recruit_num}
				
			
					</div>
		
		
		
	</div>
	<hr>

	<div class="container mb30">
		<div class="row">
			<div class="col-sm-8 mb40">
				<h3 class="left-title mb25">채용 정보</h3>
				<p>모집부문 : ${employment.work_field}</p>
				<p>고용형태 : ${employment.work_type}</p>
				<p>근무지역 : ${employment.work_area}</p>
				<p>급여 : ${employment.salary}</p>
				<p>학력 : ${employment.education}</p>
				<p>경력 : ${employment.career}</p>
				<p>우대사항 : ${employment.prefer}</p>
				<p>복리후생 : ${employment.benefits}</p>
				<p>업무정보 : ${employment.work_detail}</p>

				<br>
				<h3 class="left-title mb25">태그</h3>
				<ul class="list-inline tags-list mb25">
					<li><a href="#"><i class="fa fa-check-circle"></i> 정규직</a></li>
					<li><a href="#"><i class="fa fa-check-circle"></i> IT</a></li>
					<li><a href="#"><i class="fa fa-check-circle"></i> 컴퓨터</a></li>
					<li><a href="#"><i class="fa fa-check-circle"></i> JAVA</a></li>
					<li><a href="#"><i class="fa fa-check-circle"></i> 경력무관</a></li>
					<li><a href="#"><i class="fa fa-check-circle"></i> 주5일근무</a></li>
					<li><a href="#"><i class="fa fa-check-circle"></i> 성과금</a></li>
					<li><a href="#"><i class="fa fa-check-circle"></i> 상여금</a></li>
					<li><a href="#"><i class="fa fa-check-circle"></i> 해외연수</a></li>
				</ul>
				
				
				<h3 class="left-title mb25">지원 현황</h3>
				
					<!-- 지원현황 그래프 -->
	
	남성지원자 ${employment.mapply} <br>
	여성지원자 ${employment.fapply}
	
	 <body>
	 
    <div id="pie"></div>
    
  </body>
  
  
  <!--  지원현황그래프 끝 -->
  

				
				
		<!-- 		<iframe height="350" frameborder="0" style="border: 0; width: 100%;"
					class="mb30"
					src="https://www.google.com/maps/embed/v1/place?q=place_id:ChIJWalJ2wO6j4AR4A9dNSj2ATI&key=AIzaSyAcC0a6iry-BDvy1LA4EFqlvKBGTdZELJA
                            "
					allowfullscreen></iframe> -->

			</div>

			<div class="col-sm-4">
				<h3 class="left-title mb25">지원 현황</h3>

				<div class="mb40">
					<h2 class="font300 mb25">
						<i class="fa fa-heart-o text-danger"></i> ${employment.count} <small>명 지원</small>
					</h2>
					<h2 class="font300 mb25"></h2>
				</div>
				<div class="mb40">
					<div class="working-hours">
						<div class="day clearfix">
							<span class="name">Mon</span><span class="hours">07:00 AM
								- 07:00 PM</span>
						</div>
						<!-- /.day -->

						<div class="day clearfix">
							<span class="name">Tue</span><span class="hours">07:00 AM
								- 07:00 PM</span>
						</div>
						<!-- /.day -->

						<div class="day clearfix">
							<span class="name">Wed</span><span class="hours">07:00 AM
								- 07:00 PM</span>
						</div>
						<!-- /.day -->

						<div class="day clearfix">
							<span class="name">Thu</span><span class="hours">07:00 AM
								- 07:00 PM</span>
						</div>
						<!-- /.day -->

						<div class="day clearfix">
							<span class="name">Fri</span><span class="hours">07:00 AM
								- 07:00 PM</span>
						</div>
						<!-- /.day -->

						<div class="day clearfix">
							<span class="name">Sat</span><span class="hours">07:00 AM
								- 02:00 PM</span>
						</div>
						<!-- /.day -->

						<div class="day clearfix">
							<span class="name">Sun</span><span class="hours">Closed</span>
						</div>
						<!-- /.day -->

					</div>
				</div>
				<div class="mb40">
					<h3 class="left-title mb25">채용 문의</h3>
					<form>
						<div class="form-group">
							<label for="name">채용담당자 : </label> <label for="">박건영</label>
						</div>
						<div class="form-group">
							<label for="text">전화번호 : </label> <label for="">010-000-0000</label>
						</div>
						<div class="form-group">
							<label for="email">이메일 : </label> <label for="">saramout@kh.kr</label>
						</div>
						<div class="form-group">
							<label for="msg">문의내용</label>
							<textarea class="form-control" rows="6" id="msg"></textarea>
						</div>
						<div class="text-right">
							<button type="button" class="btn btn-primary">전송</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	
	
	
	<br>
	
	<!-- 그래프 관련 -->
	
	<script>


	var sales = ${companyInfo.sales};
	var employees = ${companyInfo.employees};
	var salary = ${employment.salary};
	
	
var chart = bb.generate({
    bindto: "#chart",
    
    data: {
    	
        type: "bar",
        
        
        columns: [
            ["매출액", sales, 300],
            ["사원수", employees, 100],
            ["급여수준", salary, 100],
            ["업력", 130, 100]
        ]
    }
});



var mapply = ${employment.mapply};
var fapply = ${employment.fapply};


var chart = bb.generate({
    bindto: "#pie",
    data: {
        type: "pie",
        columns: [
            ["남성지원자 비율", mapply],
            ["여성지원자 비율", fapply]
        ]
    }
});
</script>
	
	<!-- 그래프 끝 -->



	<!--footer-->
	<c:import url="footer.jsp" />
	<!-- jQuery-->
	<%-- 	<script src="<c:url value="resources/js/plugins/all.js" />"></script>
	<script src="<c:url value="resources/js/finder.custom.js" />"></script> --%>
	<!-- <script src="https://unpkg.com/ionicons@4.5.5/dist/ionicons.js"></script> -->
	
	
	
	
</body>



</html>