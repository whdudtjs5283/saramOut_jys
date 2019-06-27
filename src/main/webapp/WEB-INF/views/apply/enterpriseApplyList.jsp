<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>saramout</title>
</head>
<body>
<table>
		<tr><th>지원일</th><th>지원자</th><th>이력서제목</th><th>채용공고명</th></tr>
		<c:forEach items="${ eApplyList }" var="apply">
		<tr>
			<td>${ apply.apply_date }</td>
			<td>${ apply.apply_username }</td>
			<td><a href="moveDetailResume.do?resume_no=${ apply.apply_resume_no }">${ apply.apply_resume_title }</a></td>
			<td>${ apply.apply_employment_no }</td>
		</tr>		
		</c:forEach>
</table>
</body>
</html>