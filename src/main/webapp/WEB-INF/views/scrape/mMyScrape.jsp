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
			<h5>스크랩</h5>
			<div><div class="checkbox"><input type="checkbox" id="delc" value=""><label for="delc" >
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			채용공고</label></div>
				<table class="table">
						<c:if test="${ !empty mScrapeList }">
							<c:forEach items="${ mScrapeList }" var="mScrape">
								<tr>
									<td style="width:1px;"><div class="checkbox"><input type="checkbox" id="delc2" value=""><label for="delc2"></label></div></td>
									<td>${ mScrape.mscrape_company }<br>
									
									<a href="edetail.do?recruit_num=${ mScrape.mscrape_recruit_no }&bid=${ mScrape.mscrape_recruit_bid }&userid=${ mScrape.mscrape_userid }">${ mScrape.mscrape_recruit_title }</a>
									<span style="position: absolute; left: 780px;">~ ${ mScrape.mscrape_recruit_enddate }</span><br>
									${ mScrape.mscrape_workfield } / ${ mScrape.mscrape_career }, ${ mScrape.mscrape_education }, ${ mScrape.mscrape_workarea }</td>
								</tr>
							</c:forEach>
						</c:if>
						<c:if test="${ empty mScrapeList }">
								<tr>
									<td><br><br>
										<span style="position: absolute; left: 390px;">스크랩 된 채용공고가 없습니다.</span>
									</td>
								</tr>
						</c:if>
					</table>
				</div>
			</div>
		</div>

</body>
</html>








