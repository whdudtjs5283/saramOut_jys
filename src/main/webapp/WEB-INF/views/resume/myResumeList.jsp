<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.net.URLEncoder"%>
<%@ page import="java.security.SecureRandom"%>
<%@ page import="java.math.BigInteger"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>saramout</title>
<style type="text/css">
.new {
	color:gray;
}
</style>

<script type="text/javascript">
function moveNew(){
    location.href = "moveNewResume.do?userid=${ loginMember.userid }";
 }

</script>
</head>

<body>
 <c:import url="../common/header.jsp" />
 <br><br><br>
	<div class="container grid-system mb40">
		<div class="row">
			<div class="col-md-2 text-center mb10">
				<p>
					<c:if test="${ !empty resumeList[0].resume_opic }">
						<img src="${ pageContext.request.contextPath }/resources/resume/${ resumeList[0].resume_rpic }"
									style="position: absolute; left: 53px;"
									class="img-responsive img-circle pull-left" width="90"> <br>
					</c:if>
					<c:if test="${ empty resumeList[0].resume_opic }">
						<img src="${ pageContext.request.contextPath }/resources/images/기본프사.jpg"
									style="position: absolute; left: 53px;"
									class="img-responsive img-circle pull-left" width="90"> <br>
					</c:if>
					<br>
					<br>
					<br> <span style="font-size: 11pt; color: black;"><strong>${ loginMember.username }</strong>님</span>
				</p>
			</div>
			<div class="col-md-10 text-center mb10">
				<p>
					<img src="${ pageContext.request.contextPath }/resources/images/흰배경.png"
									style="position: absolute; left: 150px;"
									class="img-responsive img-circle pull-left" width="90">
					<img src="${ pageContext.request.contextPath }/resources/images/흰배경.png"
									style="position: absolute; left: 400px;"
									class="img-responsive img-circle pull-left" width="90">
					<img src="${ pageContext.request.contextPath }/resources/images/흰배경.png"
									style="position: absolute; left: 650px;"
									class="img-responsive img-circle pull-left" width="90">
				
				<br>
				<span style="font-size: 15pt; color: blue;position: absolute; left: 190px;top:65px;"><strong>${ applyCnt }</strong></span>
				<span style="font-size: 15pt; color: blue;position: absolute; left: 440px;top:65px;"><strong>${ checkCnt }</strong></span>
				<span style="font-size: 15pt; color: blue;position: absolute; left: 690px;top:65px;"><strong>${ mScrapeCnt }</strong></span>
				
				<br><br><br>
				<span style="font-size: 11pt; color: black;position: absolute; left: 165px;">지원완료</span>
				<span style="font-size: 11pt; color: black;position: absolute; left: 405px;">이력서 열람</span>
				<span style="font-size: 11pt; color: black;position: absolute; left: 645px;">스크랩 한 공고</span>
				<br>
				
				</p>
			</div>

		</div>
		<div class="row">
			<div class="col-md-2 text-left mb10">
				<p>
					<span style="font-size: 11pt; color: black;">
						<strong>이력서 관리</strong><br>
					</span>
					<span style="font-size: 9pt">
						<a class="new" href="moveNewResume.do?userid=${ loginMember.userid }">이력서 등록</a><br>
						<a class="new" href="moveMyResumeList.do?userid=${ loginMember.userid }">이력서 관리</a><br>
						<a class="new" href="moveMemberApplyList.do?userid=${ loginMember.userid }&page=1">이력서 지원내역</a><br>
						<a class="new" href="moveResumeCheckList.do?userid=${ loginMember.userid }&page=1">내 이력서 열람기업</a><br>
					</span> <br> 
					<span style="font-size: 11pt;">
						<strong><a style="color: black;" href="moveMyMScrapeList.do?userid=${ loginMember.userid }">스크랩</a></strong><br>
					</span> <br>
					<span style="font-size: 11pt; color: black;"><strong>회원정보 관리</strong><br></span>
					<span style="font-size: 9pt">
						회원정보 수정<br>
						회원탈퇴<br>
					</span>
			</div>
			<div class="col-md-10 text-left mb10">
			<h5>이력서 관리</h5>
				<table class="table">
					<thead>
					<tr>
						<tr>
							<th style="text-align: center;">이력서 제목</th>
							<th>관리</th>
						</tr>
						
					</thead>
						<c:if test="${ !empty resumeList }">
							<c:forEach items="${ resumeList }" var="resume">
		
								<tr>
									<td><br> <span style="font-size: 11pt; color: black;">
											<a href="moveDetailResume.do?resume_no=${ resume.resume_no }"><strong>${ resume.resume_title }</strong></a><br>
											마지막 수정일 : ${ resume.resume_modification_date }
									</span> <br><br>
									</td>
									<td colspan="2"><br><br>
										<span style="font-size: 11pt; position: absolute; left: 780px;">복사
											<a class="new" href="moveUpdateResume.do?resume_no=${ resume.resume_no }">수정</a>
											<a class="new" href="deleteResume.do?resume_no=${ resume.resume_no }">삭제</a>
										</span>
									</td>
								</tr>
							</c:forEach>
						</c:if>
						<c:if test="${ empty resumeList }">
							<tr>
								<td>
									<br><br>
									<span style="position: absolute; left: 378px;">등록된 이력서가 없습니다.</span><br><br><br>
									<span style="position: absolute; left: 390px;">
										<button class="btn btn-primary btn-lg" onclick="moveNew();">이력서 등록</button>
									</span>
								</td>
							</tr>
						</c:if>
				</table>
			</div>
		</div>
	</div>

</body>
</html>








