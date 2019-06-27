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


<script type="text/javascript">
    $(document).ready(function() {
        $(".accordion_banner .accordion_title").click(function() {
            if($(this).next("div").is(":visible")){
            $(this).next("div").slideUp("fast");
            } else {
                $(".accordion_banner .accordion_sub").slideUp("fast");
                $(this).next("div").slideToggle("fast");
            }
        });
    });
    
    function openWin(){
    	var url ="trans.do";
    	window.open(url, "", "width=700, height=500, left=600");
    	
    }
</script>



<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<title>사람아웃</title>
<script type="text/javascript">
function moveUpdate(){
   location.href = "moveUpdateResume.do?resume_no=${ resume.resume_no }";
}
function moveDelete(){
   location.href = "deleteResume.do?resume_no=${ resume.resume_no }";
}
function moveList(){
   location.href = "moveMyResumeList.do?userid=${ loginMember.userid }";
}
</script>

<style>

</style>
</head>
<body>
 <!-- Preloader -->
   <div id="preloader"></div>
   <c:import url="../common/header.jsp" />

   <div class="page-bread mb70">
      <div class="container">
         <div class="row">
            <div class="col-sm-6">
               <h3>이력서</h3>
            </div>
         </div>
      </div>
   </div>

   <div class="container" >

         <div class="row">
            <div class="col-sm-12">
               <h4>${ resume.resume_title }</h4>
            <table class="table" id="personal">
                     <tr><td rowspan="4" style="width:130px;"><img src="${ pageContext.request.contextPath }/resources/resume/${ resume.resume_rpic }" style="width:120px; height:150px;"></td><td style="width:80px;">${ resume.resume_username }</td><td>${ resume.resume_usergender } ${ resume.resume_userbirthday }</td></tr>
                     <tr><td>휴대폰</td><td>${ resume.resume_userphone }</td></tr>
                     <tr><td>이메일</td><td>${ resume.resume_useremail }</td></tr>
                     <tr><td>주소</td><td>${ resume.resume_userfulladdress }</td></tr>
                  </table>
               
                           <br><br>
               <strong style="font-size:18px">학력</strong>
               <div class="form-group">
                  <table class="table">
                     <tr><td style="width:200px;">${ resume.resume_entrance_date } ~ ${ resume.resume_graduate_date }</td><td>${ resume.resume_school }(${ resume.resume_school_classification }) ${ resume.resume_graduate_yn }</td></tr>
                  </table>
               </div>
               <br><br>
               <span><strong style="font-size:18px">경력</strong> 총 3년 2개월</span>
               <div class="form-group"> 
                 <table class="table">
                    <tr><td style="width:200px;">${ resume.resume_hire_date } ~ ${ resume.resume_retirement_date }</td><td>${ resume.resume_company } ${ resume.resume_work_contents } 7개월</td></tr>
                 </table>
               </div>
               <br><br>
               
               
               <strong style="font-size:18px;">자격증</strong>
               <div class="form-group"> 
                 <table class="table">
                    <tr><td style="width:200px;">${ resume.resume_acquisition_date }</td><td>${ resume.resume_license } ${ resume.resume_publication_place }</td></tr>
                 </table>
               </div>
               <br><br>
 
             <strong style="font-size:18px;">희망근무조건</strong>
               <div class="form-group"> 
                 <table class="table">
                    <tr><td style="width:200px;">고용형태</td><td><c:forTokens items="${ resume.resume_employment_form }" delims=","  var="form">
                  ${ form }
               </c:forTokens></td></tr>
                    <tr><td style="width:200px;">희망연봉</td><td>${ resume.resume_hope_salary } 만원 이상</td></tr>
                 </table>
               </div>
               <br><br>

               <!-- /.form-group -->

            </div>

         </div>

         <div class="mb30">

            <h4>자기소개서</h4>
            <div class="form-group">
               <textarea class="form-control" rows="8" name="work_detail" readonly>${ resume.resume_introduce_document }</textarea>
               <div class="textarea-resize"></div>
            </div>
         </div>
         
       
         <button onclick="openWin()"
				class="btn btn-primary btn-lg">번역기능 Trans Function</button>
         
         
         <br><br><br>
         <!--  영어로 번역 테스트 -->
         
         <h10> 자기소개서 영문으로 자동변환 </h10>
          <div class="form-group">
               <textarea class="form-control" rows="8" name="work_detail" readonly>${ transresume.resume_introduce_document }</textarea>
               <div class="textarea-resize"></div>
            </div>
         </div>
         

<br><br><br>

        <h10> 자기소개서 일어로 자동변환 </h10>
          <div class="form-group">
               <textarea class="form-control" rows="8" name="work_detail" readonly>${ transresume2.resume_introduce_document }</textarea>
               <div class="textarea-resize"></div>
            </div>
         </div>
         

<br><br><br>



<!--  하단 기업순위  시작 -->
		<div class="container text-center bg-grey">
			<div id="myCarousel" class="carousel slide text-center"	data-ride="carousel">

				<ol class="carousel-indicators">
					<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
					<li data-target="#myCarousel" data-slide-to="1"></li>
					<li data-target="#myCarousel" data-slide-to="2"></li>
				</ol>

				<div class="carousel-inner" role="listbox">
					<div class="item active">
						<div class="item">
							<p class="p-01 godo-font">인기검색회사</p>
							
							<a href="enterprise/view?entIndex=91961">(주)비트컴퓨터</a><br>
						
							<a href="enterprise/view?entIndex=515379">(주)삼구아이앤씨</a><br>
						
							<a href="enterprise/view?entIndex=353293">코니악코리아유한회사</a><br>
						
							<a href="enterprise/view?entIndex=323676">(주)아키스타건축사사무소</a><br>
						
							<a href="enterprise/view?entIndex=179748">스타벅스커피코리아(주)</a><br>
						
						<h4></h4>
						</div>
					</div>
					<div class="item">
						<p class="p-01 godo-font">연봉이 높은 회사</p>
						
							<a href="enterprise/view?entIndex=367547">(주)베네비오</a><br>
						
							<a href="enterprise/view?entIndex=323676">(주)아키스타건축사사무소</a><br>
						
							<a href="enterprise/view?entIndex=353293">코니악코리아유한회사</a><br>
						
							<a href="enterprise/view?entIndex=512770">다원산전(주)</a><br>
						
							<a href="enterprise/view?entIndex=469579">주식회사이스트썬시큐리티</a><br>
						
						<h4></h4>
					</div>
					<div class="item">
						<p class="p-01 godo-font">사원수가 많은 회사</p>
						
							<a href="enterprise/view?entIndex=179748">스타벅스커피코리아(주)</a><br>
						
							<a href="enterprise/view?entIndex=220579">(주)유니에스</a><br>
						
							<a href="enterprise/view?entIndex=245116">현대모비스(주)</a><br>
						
							<a href="enterprise/view?entIndex=253708">케이텍맨파워(주)</a><br>
						
							<a href="enterprise/view?entIndex=515379">(주)삼구아이앤씨</a><br>
						
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

<br><br><br>
         
         
                        <%--    <strong style="font-size:18px;">이력서 공개여부</strong>
               <div class="form-group"> 
                 <table class="table">
                    <tr>
                       <td style="width:200px;">
                          <c:if test="${ !empty resume.resume_open_yn }">공개</c:if>
                     <c:if test="${ empty resume.resume_open_yn }">비공개</c:if>
                       </td>
                       <td>
                          <c:if test="${ !empty resume.resume_open_yn }">기업이 해당 이력서를 열람할 수 있습니다.</c:if>
                     <c:if test="${ empty resume.resume_open_yn }">기업이 해당 이력서를 열람할 수 없습니다.</c:if>
                  </td>
                    </tr>
                 </table>
               </div>
               <br><br> --%>
            
            <div class="btn-group" style="align:center;">
           <button type="button" class="btn btn-primary" onclick="moveUpdate();">수정</button>
           <button type="button" class="btn btn-primary" onclick="moveDelete();">삭제</button>
           <button type="button" class="btn btn-primary" onclick="moveList();">목록</button>
         </div>
            <br><br>
      </div>
   

</body>
</html>





















