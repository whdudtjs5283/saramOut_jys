<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>saramout</title>

<script type="text/javascript" src="${ pageContext.request.contextPath }/resources/js/jquery-3.3.1.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>

<script>
     
     $(function(){
    	 $('#btnLikex').on('click', function(){
    		 alert("이력서는 기업회원만 스크랩할 수 있습니다.");
    	 });
     });
     
     $(document).ready(function () {
 
    var isLike = false;
    
    $('#btnLike').on('click', function(){
    	let flag = isLike ? 'minus' : 'plus';
    	$.ajax({
    		method: "POST",
    		url: "change.do",
    		data: { flag: flag, bid: '${ loginMember2.bid }', resume_no: '${ resume.resume_no}'}
    	})
    	.done(function(msg) {
    		$('#likeCount').text(msg);
    		isLike = !isLike;
    		if(isLike) {
    			$('#btnLike').css('background', 'url("${ pageContext.request.contextPath }/resources/images/star1.png") no-repeat');
    			console.log(isLike);
    		} else {
    			$('#btnLike').css('background', 'url("${ pageContext.request.contextPath }/resources/images/star2.png") no-repeat');
    			console.log(isLike);
    		}
    		
    		$('#btnLike').css('background-size', 'contain');
    	});
    });
   });
    
</script>
</head>
<body>
<!-- <div style="text-align: right;">
       <a class="btn btn-outline-dark heart">
           <img id="heart" src="">
       </a>
   </div>
 -->
 

bid : ${ loginMember2.bid }<br>
이력서 번호 : ${ resume.resume_no }<br>

<c:if test="${ loginMember2.bid eq eScrape.escrape_bid }">
	bid 일치
</c:if><br>
<c:if test="${ resume.resume_no eq eScrape.escrape_resume_no }">
	resume_no 일치
</c:if><br>
<c:if test="${ loginMember2.bid eq eScrape.escrape_bid && resume.resume_no eq eScrape.escrape_resume_no }">
둘다 일치
</c:if>

<c:if test="${ !empty eScrape.escrape_like }">
	<c:set var="like" value="${ eScrape.escrape_like }"/>
</c:if>
<c:if test="${ empty eScrape.escrape_like }">
	<c:set var="like" value="-1"/>
</c:if>

<c:if test="${ !empty loginMember2.bid }">
	<c:if test="${ loginMember2.bid eq eScrape.escrape_bid && resume.resume_no eq eScrape.escrape_resume_no && empty eScrape.escrape_like }">
	empty
		<div class="LikeBtn">
			<a href="#"><img src="${ pageContext.request.contextPath }/resources/images/star2.png" id="btnLike" style=""></a>
		<span id="likeCount">${ like }</span>
		</div>
	</c:if>
	<c:if test="${ loginMember2.bid eq eScrape.escrape_bid && resume.resume_no eq eScrape.escrape_resume_no && eScrape.escrape_like > 0}">
	이력서번호, bid, like > 0
		<div class="LikeBtn">
			<a href="#"><img src="${ pageContext.request.contextPath }/resources/images/star2.png" id="btnLike" style=""></a>
		<span id="likeCount">${ like }</span>
		</div>
	</c:if>
	<c:if test="${ empty eScrape.escrape_like }">
	empty
		<div class="LikeBtn">
			<a href="#"><img src="${ pageContext.request.contextPath }/resources/images/star2.png" id="btnLike" style=""></a>
		<span id="likeCount">${ like }</span>
		</div>
	</c:if>
</c:if>
<c:if test="${ empty loginMember2.bid }">
<div class="LikeBtn">
			<a href="#"><img src="${ pageContext.request.contextPath }/resources/images/star2.png" id="btnLikex" style=""></a>
		<span id="likeCount">${ like }</span>
		</div>
</c:if>
<%-- <c:if test="${ !empty loginMember2.blid }">
	<c:if test="${ loginMember2.bid eq eScrape.escrape_bid }">
		<c:if test="${ empty eScrape.escrape_like }">
			<c:if test="${ resume.resume_no eq eScrape.escrape_resume_no }">
			
			</c:if>
		</c:if>
	</c:if>
</c:if>
 --%>


<%-- 	<div class="LikeBtn">
		<a href="#"><img src="${ pageContext.request.contextPath }/resources/images/star2.png" id="btnLike" style=""></a>
		<span id="likeCount">-1</span>
	</div> --%>
	
</body>
</html>






















