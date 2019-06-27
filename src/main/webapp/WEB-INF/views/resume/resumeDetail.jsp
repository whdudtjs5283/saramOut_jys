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
    	var url =
   "trans.do?introduce=${transresume.resume_introduce_document}&introduce2=${transresume2.resume_introduce_document}&introduce3=${transresume3.resume_introduce_document}";
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
               <h3>이력서 </h3> 
             
 
            </div>
         </div>
      </div>
   </div>
   
   <!-- 여기서부터 -->
	<div>
		<h4>언어 선택</h4>
		<a href="trans2.do?introduce=${transresume.resume_introduce_document}&introduce2=
		${transresume2.resume_introduce_document}&introduce3=${transresume3.resume_introduce_document}">aa</a>

		<button type="button" class="btn-flag btn-lg"
			onclick="location.href ='trans2.do?introduce=${transresume.resume_introduce_document}&introduce2=
		${transresume2.resume_introduce_document}&introduce3=${transresume3.resume_introduce_document}'">
			<img src="resources/svg/korea.svg" alt="Breaking Borders Logo"
				height="20" width="20">&nbsp;&nbsp;&nbsp; 한국어
		</button>

		<button class="btn-flag btn-lg"
			onclick="location.href = 'trans2.do?introduce=${transresume.resume_introduce_document}&introduce2=
		${transresume2.resume_introduce_document}&introduce3=${transresume3.resume_introduce_document}' ">
			<img src="resources/svg/us.svg" alt="Breaking Borders Logo"
				height="20" width="20">&nbsp;&nbsp;&nbsp; English
		</button>

		<button class="btn-flag btn-lg"
			onclick="location.href = 'trans2.do?introduce=${transresume.resume_introduce_document}&introduce2=
		${transresume2.resume_introduce_document}&introduce3=${transresume3.resume_introduce_document}' ">
			<img src="resources/svg/japan.svg" alt="Breaking Borders Logo"
				height="20" width="20">&nbsp;&nbsp;&nbsp; 日本語
		</button>

		<button class="btn-flag btn-lg"
			onclick="location.href = 'trans2.do?introduce=${transresume.resume_introduce_document}&introduce2=
		${transresume2.resume_introduce_document}&introduce3=${transresume3.resume_introduce_document}' ">
			<img src="resources/svg/china.svg" alt="Breaking Borders Logo"
				height="20" width="20">&nbsp;&nbsp;&nbsp; 中国語
		</button>
	</div>
	<hr class="my-hr2">

	<br>
	<br>
	
<!-- 여기까지  -->


<!--  -->


   
   &nbsp;&nbsp;&nbsp; <a href="trans2.do?introduce=${transresume.resume_introduce_document}&introduce2=
	${transresume2.resume_introduce_document}&introduce3=${transresume3.resume_introduce_document}
	&resume_no=${resume.resume_no}">English Version</a>
	
	<br><br>
   

   <div class="container" >

        <div class="row">
            <div class="col-sm-12">
               <h4>${ resume.resume_title }</h4>
            <table class="table" id="personal">
                     <tr><td rowspan="4" style="width:130px;">
                     	<c:if test="${ !empty resume.resume_opic }">
                     		<img src="${ pageContext.request.contextPath }/resources/resume/${ resume.resume_rpic }" style="width:120px; height:150px;">
                     	</c:if>
                     	<c:if test="${ empty resume.resume_opic }">
                     		<img src="${ pageContext.request.contextPath }/resources/images/기본프사2.jpg" style="width:120px; height:150px;">
                     	</c:if>
                     		</td><td style="width:80px;">${ resume.resume_username }</td><td>${ resume.resume_usergender } ${ resume.resume_userbirthday }
                     </td></tr>
                     <tr><td>휴대폰</td><td>${ resume.resume_userphone }</td></tr>
                     <tr><td>이메일</td><td>${ resume.resume_useremail }</td></tr>
                     <tr><td>주소</td><td>${ resume.resume_userfulladdress }</td></tr>
                  </table>
               
                           <br><br>
               <strong style="font-size:18px">학력</strong>
               <div class="form-group">
                  <table class="table">
                     <tr>
						<td>
							<c:forEach items="${ resumeList }" var="resume2">
								<c:if test="${ resume.resume_no eq resume2.resume_no }">
									<div style="float:left;">
										<c:forEach items="${ resume2.resume_entrance_date }" var="ent">
											${ ent } ~ <br>
										</c:forEach>
									</div>
									<div style="float:left;">
										<c:forEach items="${ resume2.resume_graduate_date }" var="gra">
											${ gra }&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
										</c:forEach>
									</div>
									<div style="float:left;">
										<c:forEach items="${ resume2.resume_school }" var="school">
											${ school }<br>
										</c:forEach>
									</div>
									<div style="float:left;">
										<c:forEach items="${ resume2.resume_school_classification }" var="schoolc">
											(${ schoolc })&nbsp;<br>
										</c:forEach>
									</div>
									<div style="float:left;">
										<c:forEach items="${ resume2.resume_major }" var="schoolm">
											${ schoolm }&nbsp;<br>
										</c:forEach>
									</div>
									<div style="float:left;">
										<c:forEach items="${ resume2.resume_graduate_yn }" var="gray">
											${ gray }<br>
										</c:forEach>
									</div>
									<br>
								</c:if>   
							</c:forEach>
						</td>
					</tr>
                  </table>
               </div>
            
               <br><br>
               <span><strong style="font-size:18px">경력</strong> 총 3년 2개월</span>
               <div class="form-group"> 
                 <table class="table">
                    <tr>
						<td>
							<c:forEach items="${ resumeList }" var="resume2">
								<c:if test="${ resume.resume_no eq resume2.resume_no }">
									<div style="float:left;">
										<c:forEach items="${ resume2.resume_hire_date }" var="hire">
											${ hire } ~ <br>
										</c:forEach> 
									</div>
									<div style="float:left;">
										<c:forEach items="${ resume2.resume_retirement_date }" var="retire">
											${ retire }&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
										</c:forEach>
									</div>
									<div style="float:left;">
										<c:forEach items="${ resume2.resume_company }" var="com">
											${ com }<br>
										</c:forEach>
									</div>
									<div style="float:left;">
										<c:forEach items="${ resume2.resume_work_contents }" var="con">
											(${ con })&nbsp;<br>
										</c:forEach>
									</div>
									<br>
								</c:if>   
							</c:forEach>
						</td>
					</tr>
                 </table>         
               </div>
               <br><br>
               
               
               <strong style="font-size:18px;">자격증</strong>
               <div class="form-group"> 
                 <table class="table">
                  	 <tr>
						<td>
							<c:forEach items="${ resumeList }" var="resume2">
								<c:if test="${ resume.resume_no eq resume2.resume_no }">
									<div style="float:left;">
										<c:forEach items="${ resume2.resume_acquisition_date }" var="acq">
											${ acq }&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
										</c:forEach> 
									</div>
									<div style="float:left;">
										<c:forEach items="${ resume2.resume_license }" var="lic">
											${ lic }&nbsp;<br>
										</c:forEach>
									</div>
									<div style="float:left;">
										<c:forEach items="${ resume2.resume_publication_place }" var="pub">
											${ pub }<br>
										</c:forEach>
									</div>
									<br>
								</c:if>   
							</c:forEach>
						</td>
					</tr>
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
				
	
	<a href="trans2.do?introduce=${transresume.resume_introduce_document}&introduce2=
	${transresume2.resume_introduce_document}&introduce3=${transresume3.resume_introduce_document}
	&resume_no=${resume.resume_no}">번역기능 이동 Trans Function</a>
				

         
         
         <br><br><br>
         
          <div class="mb30">

            <h4>자기소개서</h4>
            <div class="form-group">
               <textarea class="form-control" rows="8" name="work_detail" readonly>
               ${transresume3.resume_introduce_document}</textarea>
               <div class="textarea-resize"></div>
            </div>
         </div>
       





         
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





















