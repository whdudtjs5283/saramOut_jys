<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8" errorPage="common/error.jsp"%>
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
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
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
               <h3>채용공고</h3>
            </div>
            <div class="col-sm-6"></div>
         </div>
      </div>
   </div>
   <form action="add-listing.do" method="post">
   <div class="container" >

      <div class="mb50">
         <h4>제목</h4>
         <div class="form-group">
            <input class="form-control" type="text" name="recruit_title">
         </div>
      </div>

      <div class="mb40">

         <div class="row">
            <div class="col-sm-6">
               <h4>모집부문</h4>
               <div class="form-group">
                  <input class="form-control" type="text" placeholder="모집부문" name="work_field">
               </div>
               <h4>고용형태</h4>
               <div class="form-group">
                  <select name="work_type" class="form-control">
                     <option value="정규직">정규직</option>
                     <option value="비정규직">비정규직</option>
                  </select>
               </div>
               <h4>근무 지역</h4>
               <div class="form-group"> 
                  <select name="work_area" class="form-control">
                     <option value="서울">서울</option>
                     <option value="경기/인천">경기/인천<option>
                     <option value="충청">충청</option>
                     <option value="경상">경상</option>
                     <option value="전라">전라</option>
                     <option value="강원/제주">강원/제주</option>
                     <option value="해외">해외</option>
                  </select>
               </div>
               <h4>급여</h4>
               <div class="form-group-icon mb15">
                  <i class="fa fa-dollar"></i> <input type="text"
                     name="salary" placeholder="급여">
               </div>


               <!-- /.form-group -->

               <div class="form-group">
                  <h4>공고 시작일 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                     &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                     &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;공고 마감일</h4>
                  <input type="datetime-local" name="startdate"> &nbsp; &nbsp; &nbsp;
                  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <input
                     type="datetime-local" name="enddate">
               </div>
            </div>
            <div class="col-sm-6">
               <h4>학력</h4>
               <div class="form-group">
                  <select name="education" class="form-control">
                     <option value="고졸">고졸</option>
                     <option value="초대졸">초대졸</option>
                     <option value="대졸">대졸</option>
                     <option value="대학원졸">대학원졸</option>
                     <option value="학력무관">학력무관</option>
                  </select>
               </div>
               <h4>경력</h4>
               <div class="form-group">
                  <select name="career" class="form-control">
                     <option value="신입">신입</option>
                     <option value="2년 이상">2년 이상</option>
                     <option value="3년 이상">3년 이상</option>
                     <option value="5년 이상">5년 이상</option>
                     <option value="10년 이상">10년 이상</option>
                  </select>
               </div>
               <h4>우대사항</h4>
               <div class="form-group">
                  <input class="form-control" type="text" placeholder="우대사항" name="prefer">
               </div>
               <h4>복리후생</h4>
               <div class="form-group">
                  <input class="form-control" type="text" placeholder="복리후생" name="benefits">
               </div>
               <h4>채용인원</h4>
               <div class="form-group">
                  <input class="form-control" type="number" name="hire_personnel">
               </div>

            </div>
         </div>

         <div class="mb30">

            <h4>업무내용</h4>
            <div class="form-group">
               <textarea class="form-control" placeholder="업무 내용" rows="8" name="work_detail"></textarea>
               <div class="textarea-resize"></div>
            </div>

         </div>
	         <div class="form-group">
	        	 <input type="hidden" name="bid" value="${loginMember2.bid }">
	         </div>
	         
      </div>

      <div class="mb30">


         <!-- <div class="mb40">
            <h2 class="left-title">Add Photos</h2>
            <form id="my-awesome-dropzone" action="add-listing.do"
               class="dropzone"></form>
         </div> -->
			 <div class="form-group">
               <input type="number" name="count">
            </div>\
            
         <div class="text-right mb40">
            <input type="submit" class="btn btn-lg btn-primary" value="채용공고 등록">
         </div>
      </div>


   </div>
	</form>
   <!--footer-->
   <c:import url="footer.jsp" />
   <!-- jQuery-->
   <%--    <script src="<c:url value="resources/js/plugins/all.js" />"></script>
   <script src="<c:url value="resources/js/finder.custom.js" />"></script> --%>


</body>
</html>