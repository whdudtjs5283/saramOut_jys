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

#textnew {
  background-color:#2D48A3;
  border-radius: 10px;
  padding: 5px; 
  width: 37px;
  height: 1px;
  font-size: 9pt;
  color: white;
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
			<h5>내 이력서 열람기업</h5>
				<table class="table">
					<thead>
					<tr>
						<tr>
							<th style="text-align: center;">회사명</th>
							<th style="text-align: center;">진행중인 공고</th>
							<th style="text-align: center;">열람일</th>
						</tr>
						
					</thead>
						<c:if test="${ !empty rcList }">
							<c:forEach items="${ rcList }" var="rc">
		
								<tr>
									<td style="text-align: center;"><span style="font-size: 11pt; color: black;">
											<c:if test="${ rc.rc_check eq '미확인' }"><span id="textnew">new</span></c:if>									
											<a href="#"><strong>${ rc.rc_company }</strong></a>
									</span>
									</td>
									<td style="text-align: center;">
										1개
									</td>
									<td style="text-align: center;">
										${ rc.rc_open_date }
									</td>
								</tr>
							</c:forEach>
						</c:if>
						<c:if test="${ empty rcList }">
							<tr>
								<td>
									<br><br>
									<span style="position: absolute; left: 378px;">기업이 열람한 이력서가 없습니다.</span><br><br><br>
								</td>
							</tr>
						</c:if>
				</table>
				<!-- 페이징 -->
					
					<div class="paging" style="text-align: center;">
								<!-- 페이징 url -->
									<c:url var="first" value="moveMemberApplyList.do?userid=${ loginMember.userid }">
										<c:param name="page" value="1"/>
									</c:url>
									<c:url var="prev" value="moveMemberApplyList.do?userid=${ loginMember.userid }">
										<c:param name="page" value="${ endPage - pageLimit }"/>
									</c:url>
							<div class="text-center mb30">
								<nav aria-label="Page navigation">
									<ul class="pagination">
										<li>
											<c:url var="prev" value="moveResumeCheckList.do?userid=${ loginMember.userid }">
												<c:param name="page" value="${ currentPage - 1 }"/>
											</c:url>
											<c:if test="${ currentPage eq 1 }">
												<span>이전</span>
											</c:if>
											<c:if test="${ currentPage ne 1 }">
												<a href="${ prev }">이전</a>
											</c:if>	
										</li>
										
										<c:forEach var="p" begin="${ startPage }" end="${ endPage }">
											<c:url var="move" value="moveResumeCheckList.do?userid=${ loginMember.userid }">
												<c:param name="page" value="${ p }"/>
											</c:url>
										
										<li class="active">
											<c:if test="${ p eq currentPage }">
												<span class="pg_current">${ p }</span>
											</c:if>
										</li>
										<li>
										<c:if test="${ p ne currentPage }">
											<a class="pg_page" href="${ move }">${ p }</a>
										</c:if></li>
										</c:forEach>
										<li>
											<c:url var="next" value="moveResumeCheckList.do?userid=${ loginMember.userid }">
												<c:param name="page" value="${ currentPage + 1 }"/>
											</c:url>
											<c:if test="${ currentPage eq endPage}">
												<span>다음</span>
											</c:if>
											<c:if test="${ currentPage ne endPage }">
												<a href="${ next }">다음</a>
											</c:if>	
										</li>
									</ul>
								</nav>
							</div>
			</div>
		</div>
	</div>

</body>
</html>








