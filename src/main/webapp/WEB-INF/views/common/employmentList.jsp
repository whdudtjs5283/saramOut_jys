<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.net.URLEncoder"%>
<%@ page import="java.security.SecureRandom"%>
<%@ page import="java.math.BigInteger"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>saramout</title>
</head>
<body>
<div id="preloader"></div>
   <c:import url="header.jsp" />
<br><br><br>
<table>
      <c:forEach items="${ employmentList }" var="employment">
      <tr>
         <td><a href="edetail.do?recruit_num=${ employment.recruit_num }">${ employment.recruit_title }</a></td>
         <td>&nbsp;&nbsp;</td>
         <td><a href="eupdate.do?recruit_num=${employment.recruit_num }">수정</a></td>
         <td>&nbsp;&nbsp;</td>
         <td><a href="edel.do?recruit_num=${employment.recruit_num }">삭제</a></td>   
      </tr>      
      </c:forEach>
</table>
</body>
</html>