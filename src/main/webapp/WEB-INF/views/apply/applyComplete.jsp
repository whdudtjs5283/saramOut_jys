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
<!--   <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1"> -->
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<title>Finder - Listing</title>

<!-- plugins -->
<link rel="stylesheet" type="text/css" href="resources/css/bundle.css">
<link rel="stylesheet" type="text/css" href="resources/css/style.css">
<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
</head>
<body class="misc-page">
   <!-- Preloader -->
   <div id="preloader"></div>
   <div class="display-table">
      <div class="vertical-middle">
         <div class="container">
            <div class="row">
               <div class="col-sm-6 col-sm-offset-3 text-center">
                  <div class="error-box">
                                   <div class="how-work-card">
                        <div class="row">
          
                                <i class="fa fa-check-circle"></i>
                      
                             <div class="col-sm-8">                                                        
                            </div>
                        </div>
                    </div>
                     <h2 class="font300">전송 완료</h2>
                     <p>성공적으로 ${loginMember.username} 님의 이력서가 전송 되었습니다. 지원해주셔서 감사합니다.</p>
                     <a href="edetail.do?recruit_num=${ employment.recruit_num }&bid=${employment.bid}" class="text-warning">돌아가기</a>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
   
   <!-- jQuery-->
   <script src="<c:url value="resources/js/plugins/all.js" />"></script>
   <script src="<c:url value="resources/js/finder.custom.js" />"></script>
</body>
</html>