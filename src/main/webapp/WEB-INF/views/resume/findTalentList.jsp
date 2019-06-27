<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>saramout</title>

<script type="text/javascript" src="${ pageContext.request.contextPath }/resources/js/jquery-3.3.1.min.js"></script>
<script type="text/javascript">

</script>
</head>
<body>
<div id="preloader"></div>
   <c:import url="../common/header2.jsp" />
	
		<div class="page-bread mb70">
	      <div class="container">
	         <div class="row">
	            <div class="col-sm-6">
	               <h3>인재검색</h3>
	            </div>
	            <div class="col-sm-6"></div>
	         </div>
	      </div>
	   </div>
	   <div class="container mb70">
		<div class="row">
			<form>
				<div class="col-md-3 col-sm-6">
					<div class="form-group">
						<input type="text" class="form-control" placeholder="Keywords...">
					</div>
				</div>
				<div class="col-md-3 col-sm-6">
					<div class="form-group">
						<select class="form-control" title="Location">
							<option>Paris</option>
							<option>London</option>
							<option>New York</option>
							<option>Tokyo</option>
						</select>
					</div>
				</div>
				<div class="col-md-3 col-sm-6">
					<div class="form-group">
						<select class="form-control" title="Category">
							<option>Restaurants</option>
							<option>Jobs</option>
							<option>Property</option>
							<option>Automotive</option>
						</select>
					</div>
				</div>
				<div class="col-md-3 col-sm-6">
					<input type="button" class="btn btn-primary btn-block"
						value="Search">
				</div>
			</form>
		</div>
	</div>
	   
	   <div class="container" >
	   <span>총 <span style="color:blue;">${ listCount }</span>개</span>
	   <br><hr>
	   <span style="position: absolute; left:250px;">이름</span>
	   <span style="position: absolute; left:700px;">이력서 요약</span>
	   <span style="position: absolute; left:1200px;">수정일</span>
	   <br><hr>
	
		<c:forEach items="${ talentList }" var="talent">
			<c:if test="${ !empty talent.resume_open_yn }">
				<table>
					<tr>
						<td rowspan="4"><img src="${ pageContext.request.contextPath }/resources/resume/${ talent.resume_rpic }" style="width:50px; height:68px;">&nbsp;&nbsp;&nbsp;</td>
						<td rowspan="4">${ talent.resume_username }<br>
						${ talent.resume_usergender }, ${ talent.resume_userbirthday }&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
					</tr>
					<tr>
						<td><a href="moveDetailResume.do?resume_no=${ talent.resume_no }&bid=${ loginMember2.bid }"><strong>${ talent.resume_title }</strong></a></td>
						<td style="position: absolute; left:1200px;"><br>${ talent.resume_modification_date }</td>
					</tr>
					<tr>
						<td>${ talent.resume_school }(${ talent.resume_school_classification }) ${ talent.resume_major }</td>
					</tr>
					<tr>
						<td>${ talent.resume_hope_salary }만원이상 / 
							<c:forTokens items="${ talent.resume_employment_form }" delims=","  var="form">
			                  ${ form }
			               	</c:forTokens>
			            </td>
					</tr>
				</table>
					<br>
	 		</c:if>
		</c:forEach>
			
							<div class="text-center mb30">
								<nav aria-label="Page navigation">
									<ul class="pagination">
										<li>
											<c:url var="prev" value="moveFindTalentList.do">
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
											<c:url var="move" value="moveFindTalentList.do">
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
											<c:url var="next" value="moveFindTalentList.do">
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
<%--  <thead>
        <tr>
            <th scope="col">글번호</th>
            <th scope="col">제목</th>
            <th scope="col">조회수</th>
            <th scope="col">작성일</th>
        </tr>
    </thead>
    <tbody>
        <c:choose>
            <c:when test="${fn:length(list) > 0}">
                <c:forEach items="${list }" var="row">
                    <tr>
                        <td>${row.IDX }</td>
                        <td>${row.TITLE }</td>
                        <td>${row.HIT_CNT }</td>
                        <td>${row.CREA_DTM }</td>
                    </tr>
                </c:forEach>
            </c:when>
            <c:otherwise>
                <tr>
                    <td colspan="4">조회된 결과가 없습니다.</td>
                </tr>
            </c:otherwise>
        </c:choose>
    </tbody>
 --%>


</body>
</html>