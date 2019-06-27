<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	
</script>

<link rel="stylesheet" type="text/css" href="resources/css/bundle.css">
<link rel="stylesheet" type="text/css" href="resources/css/style.css">

</head>
<body>

<c:import url="../common/header.jsp" />

셀렉트해서 모든 리스트 가져오기

<table 
align="center" 
cellspacing="0" 
border="1"
width="600"
class="table table-hover"
>


<tr>
	<th>등록번호</th>
	<th>업체명</th>
	<th>직종</th>
	<th>급여</th>
	<th>마감일</th>
	


	
</tr>
<c:forEach items="${list}" var="Recruit" varStatus="status">
<tr>
	<!-- <td>${status.count }</td> -->
	
	<td>${Recruit.reregistno} </td>
	<td>
	<div style="color: black; font-size: 1.2em; font-family: 돋움체;"><strong>${Recruit.cmpnynm}</strong>
	
	<a href="recruitDetail.do?joregistno=${Recruit.joregistno}">링크</a>
	</div>
	</td>
	
	<td>  ${Recruit.jobcodenm}   
	<br> 
	<div style="color: green; font-size: -1; " > ${Recruit.worktmnm} 
	&nbsp; ${Recruit.emplymstlecmmnmm}
	&nbsp; 경력여부 : ${Recruit.careercndnm}
	 </div> 
	
	</td>
	
	
	
	<td>${Recruit.hopewage}</td>
	<td>${Recruit.rceptclosnm}</td>
	
	
</tr>
</c:forEach>
</table>


</body>
</html>