<%@ page language="java" contentType="text/html; charset=UTF-8"
   errorPage="common/error.jsp"%>
<%@ page import="java.net.URLEncoder"%>
<%@ page import="java.security.SecureRandom"%>
<%@ page import="java.math.BigInteger"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">

<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
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
               <h3>채용공고 리스트</h3>
            </div>
            <div class="col-sm-6"></div>
         </div>
      </div>
   </div>

         


<div class="container">
   <c:forEach items="${allEmploymentList}" var="employment">
            <div class="col-sm-6 col-md-3 mb30">
               <div class="card-overlay">
                  <img src="resources/images/img4.jpg" class="img-responsive">
                  <div class="card-hover">
                     <div class="card-content">
                        <a class="label label-primary" href="edetail.do?recruit_num=${ employment.recruit_num }&bid=${employment.bid}&userid=${ loginMember.userid }">${employment.career}</a>
                        <h3>
                           <a href="edetail.do?recruit_num=${ employment.recruit_num }&bid=${employment.bid}&userid=${ loginMember.userid }">${employment.recruit_title}</a><br>
                           <a href="edetail.do?recruit_num=${ employment.recruit_num }&bid=${employment.bid}&userid=${ loginMember.userid }">회사이름</a>
                        </h3>
                       
                     </div>
                     /card-content
                     <div class="card-icons">
                        <a href="#" title="Add to Wishlist"><i class="fa fa-heart-o"></i></a>
                     </div>
                  </div>
               </div>
            </div>
            </c:forEach>
       </div>
            
            
            
            <c:if test="${loginMember2 ne null}"> 
             <a href="add-listing.do">기업공고 글등록</a>
            </c:if>
            

            
          

       <div class="container">
         <div class="text-center mb30">
            <nav aria-label="Page navigation">
               <ul class="pagination">
                  <li><a href="#" aria-label="Previous"> <span
                        aria-hidden="true">Â«</span>
                  </a></li>
                  <li class="active"><a href="#">1</a></li>
                  <li><a href="#">2</a></li>
                  <li><a href="#">3</a></li>
                  <li><a href="#">4</a></li>
                  <li><a href="#">5</a></li>
                  <li><a href="#" aria-label="Next"> <span
                        aria-hidden="true">Â»</span>
                  </a></li>
               </ul>
            </nav>
         </div>
        </div>

   <!--footer-->
   <c:import url="footer.jsp" />
   <!-- jQuery-->
   <%--    <script src="<c:url value="resources/js/plugins/all.js" />"></script>
   <script src="<c:url value="resources/js/finder.custom.js" />"></script> --%>
</body>
</html>