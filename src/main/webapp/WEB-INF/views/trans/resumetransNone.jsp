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


<!--  밑에 두줄 스크립트가 있어야 우클릭 슬라이드가 작동함 -->
<script src="<c:url value="resources/js/plugins/all.js" />"></script>
<script src="<c:url value="resources/js/finder.custom.js" />"></script>

<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="resources/css/bundle.css">
<link rel="stylesheet" type="text/css" href="resources/css/style.css">
</head>
<body>


<c:import url="../common/header.jsp" />

<!--  스크롤 번역 시작 -->


		 <div class="page-bread mb70">
      <div class="container">
         <div class="row">
            <div class="col-sm-6">
               <h3>영문 이력서</h3>
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
               <textarea class="form-control" rows="8" name="work_detail" readonly>${introduce}</textarea>
               <div class="textarea-resize"></div>
            </div>
         </div>
         
       

       





         
                          

</body>
</html>