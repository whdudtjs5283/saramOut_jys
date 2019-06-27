<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" errorPage="common/error.jsp" %>
<%@ page import="java.net.URLEncoder"%>
<%@ page import="java.security.SecureRandom"%>
<%@ page import="java.math.BigInteger"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<title>사람아웃</title>
</head>

<script type="text/javascript">



function openWin(){
	var url ="applyEmp.do?userid=${loginMember.userid}";
	window.open(url, "", "width=700, height=500, left=600");
	
}




</script>
  
  





<body>
	<!-- Preloader -->
	<div id="preloader"></div>
	<c:import url="header.jsp" />
	
	<br><br>
	${loginMember.userid} 멤버 유저아이디 테스트
	
	
	<br>

	<div class="listing-detail-header mb50">
		<div class="container">
			<h2 class="font300">${employment.recruit_title}</h2>
			<h3>${companyInfo.bid} 회사이름 ${employment.bid } </h3>
			<h5>
				<i class="fa fa-home"></i> &nbsp; ${companyInfo.homepage}
				
			</h5>
			<p></p>
			<p>시작일: ${employment.startdate} 마감일: ${employment.enddate}</p>
			<p>마감일까지 4일 남았습니다.</p>
			<br>
			<h5>업종 :</h5>${companyInfo.company_type}
			<br>
			<h5>
				<i class="	fa fa-krw"></i> 매출액 :
			</h5>${companyInfo.sales}
			<br>
			<h5>
				<i class="fa fa-users"></i> 사원수 :
			</h5>${companyInfo.employees}

			<br>
			<h5>대표자명 :</h5>${companyInfo.represent}
			<br>
			<h5>설립일 :</h5>${companyInfo.establish}
			
			
			${companyInfo.bid}${companyInfo.bid}${companyInfo.bid}${companyInfo.bid}
		</div>
		
		<div class="col-sm-9"></div>
		
		
		<div class="buttons">
			<!-- <i class="fa fa-star text-warning"></i> -->
			
			<a  class="btn btn-yellow btn-sm">스크랩</a> 
			

			<button onclick="openWin()"
				class="btn btn-primary btn-lg">지원하기</button>
				공고 번호 ${employment.recruit_num}
				
					<a class="btn btn-default btn-xl page-scroll" data-toggle="modal"
							title="듀오매칭을 이용하기위해 내 여행정보를 활성화 합니다." href="#aboutModal1">지금
							등록!</a>
		</div>
		
		
		
	</div>
	<hr>

	<div class="container mb30">
		<div class="row">
			<div class="col-sm-8 mb40">
				<h3 class="left-title mb25">채용 정보</h3>
				<p>모집부문 : ${employment.work_field}</p>
				<p>고용형태 : ${employment.work_type}</p>
				<p>근무지역 : ${employment.work_area}</p>
				<p>급여 : ${employment.salary}</p>
				<p>학력 : ${employment.education}</p>
				<p>경력 : ${employment.career}</p>
				<p>우대사항 : ${employment.prefer}</p>
				<p>복리후생 : ${employment.benefits}</p>
				<p>업무정보 : ${employment.work_detail}</p>

				<br>
				<h3 class="left-title mb25">태그</h3>
				<ul class="list-inline tags-list mb25">
					<li><a href="#"><i class="fa fa-check-circle"></i> 정규직</a></li>
					<li><a href="#"><i class="fa fa-check-circle"></i> IT</a></li>
					<li><a href="#"><i class="fa fa-check-circle"></i> 컴퓨터</a></li>
					<li><a href="#"><i class="fa fa-check-circle"></i> JAVA</a></li>
					<li><a href="#"><i class="fa fa-check-circle"></i> 경력무관</a></li>
					<li><a href="#"><i class="fa fa-check-circle"></i> 주5일근무</a></li>
					<li><a href="#"><i class="fa fa-check-circle"></i> 성과금</a></li>
					<li><a href="#"><i class="fa fa-check-circle"></i> 상여금</a></li>
					<li><a href="#"><i class="fa fa-check-circle"></i> 해외연수</a></li>
				</ul>
				<h3 class="left-title mb25">기업 위치</h3>
				<iframe height="350" frameborder="0" style="border: 0; width: 100%;"
					class="mb30"
					src="https://www.google.com/maps/embed/v1/place?q=place_id:ChIJWalJ2wO6j4AR4A9dNSj2ATI&key=AIzaSyAcC0a6iry-BDvy1LA4EFqlvKBGTdZELJA
                            "
					allowfullscreen></iframe>

			</div>

			<div class="col-sm-4">
				<h3 class="left-title mb25">지원 현황</h3>

				<div class="mb40">
					<h2 class="font300 mb25">
						<i class="fa fa-heart-o text-danger"></i> 413 <small>명 지원</small>
					</h2>
					<h2 class="font300 mb25"></h2>
				</div>
				<div class="mb40">
					<div class="working-hours">
						<div class="day clearfix">
							<span class="name">Mon</span><span class="hours">07:00 AM
								- 07:00 PM</span>
						</div>
						<!-- /.day -->

						<div class="day clearfix">
							<span class="name">Tue</span><span class="hours">07:00 AM
								- 07:00 PM</span>
						</div>
						<!-- /.day -->

						<div class="day clearfix">
							<span class="name">Wed</span><span class="hours">07:00 AM
								- 07:00 PM</span>
						</div>
						<!-- /.day -->

						<div class="day clearfix">
							<span class="name">Thu</span><span class="hours">07:00 AM
								- 07:00 PM</span>
						</div>
						<!-- /.day -->

						<div class="day clearfix">
							<span class="name">Fri</span><span class="hours">07:00 AM
								- 07:00 PM</span>
						</div>
						<!-- /.day -->

						<div class="day clearfix">
							<span class="name">Sat</span><span class="hours">07:00 AM
								- 02:00 PM</span>
						</div>
						<!-- /.day -->

						<div class="day clearfix">
							<span class="name">Sun</span><span class="hours">Closed</span>
						</div>
						<!-- /.day -->

					</div>
				</div>
				<div class="mb40">
					<h3 class="left-title mb25">채용 문의</h3>
					<form>
						<div class="form-group">
							<label for="name">채용담당자 : </label> <label for="">박건영</label>
						</div>
						<div class="form-group">
							<label for="text">전화번호 : </label> <label for="">010-000-0000</label>
						</div>
						<div class="form-group">
							<label for="email">이메일 : </label> <label for="">saramout@kh.kr</label>
						</div>
						<div class="form-group">
							<label for="msg">문의내용</label>
							<textarea class="form-control" rows="6" id="msg"></textarea>
						</div>
						<div class="text-right">
							<button type="button" class="btn btn-primary">전송</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	
	
	
	<!-- 내 여행정보 등록-->

	<div id="aboutModal1" class="modal fade" tabindex="-1" role="dialog"
		aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-body">
					<h2 class="text-center">지원 하기</h2>
					<p class="text-center" align="right">
					이력서를 작성하거나 미리 작성한 이력서를 바로 보내기 가능<br>
					열심히 작성해서 이력서를 보내자구
					</p>
					<h5 class="text-center">주의) 허위 및 타인의 정보를 무단으로 도용하면 제재의 원인이 될 수 있다고</h5>
					<div class="col-lg-10 col-lg-offset-1 text-center">
						<form class="contact-form row" action="/travelduo/miinsert"
							method="post" enctype="multipart/form-data">
							
							<div class="text-center col-xs-12 col-sm-6">

								<div id="imagePreview" class="btn center-block"></div>
								<br>
								 <input type="submit" data-toggle="modal"
									data-target="#alertModal1"
									class="btn btn-primary btn-block btn-lg" name="input"
									id="input" value="이력서 작성 페이지로 이동"> 
							
								
							</div>

							<%-- <% if(loginUser != null){ %>
							<div class="col-md-12" hidden>
								<label></label>
								<input type="text" name="userid"
									value="<%= loginUser.getUserId() %>">
								<input type hidden="text" name="gender"
									value="<%= loginUser.getGender() %>">
							</div>
							<% } %> --%>
							<div class="col-md-4 col-md-offset-4">
								<label></label> <input type="submit" data-toggle="modal"
									data-target="#alertModal1"
									class="btn btn-primary btn-block btn-lg" name="input"
									id="input" value="등록"> &nbsp;&nbsp; <br>


								<button type="button" data-toggle="modal" data-dismiss="modal"
									aria-hidden="true" class="btn btn-primary btn-lg center-block">
									나가기&nbsp;&nbsp;<ion-icon ios="ios-close" md="md-close"></ion-icon>
								</button>
							</div>
						</form>
					</div>
				</div>
				<p>
				<h6>
					<a href="http://www.bootstrapzero.com">©Javascrew bar
						&nbsp;여행가듀오 마이페이지</a>
				</h6>
				</p>

			</div>
		</div>
	</div>
	
	
	<br><br>
	
	<!-- 캐치잡 기업정보 그대로 복붙함-->
			<div class="module">
					<h3  class="sectionTitle p-01">기업정보</h3>

					<div class="panel panel-default">
						<div class="panel-body" >

							<div class="row">
								<div class="col-sm-6">
									<span><b>소재지</b></span><span>&nbsp;|&nbsp;서울&nbsp;서초구</span>
								</div>
								<div class="col-sm-6">
									<span><b>산업군</b></span><span>&nbsp;|&nbsp;IT/웹/통신</span>
								</div>

							</div>

							<br>

							<div class="row">
								<div class="col-sm-6">
									<button type="button" class="btn btn-default btn-lg btn-block" onclick="changeAvgInfo('인원')">
										<span class="f-left"><b>인원</b></span>
										<span class="f-right">
											<b id="person"></b>명
										</span>
									</button>
								</div>
								<div class="col-sm-6">
									<button type="button" class="btn btn-default btn-lg btn-block" onclick="changeAvgInfo('업력')">
										<span class="f-left"><b>업력</b></span>
										<span class="f-right">
											<b id="fondDate"></b>년
										</span>
									</button>
								</div>
							</div>

							<br>

							<div class="row">
								<div class="col-sm-6">
									<button type="button" class="btn btn-default btn-lg btn-block" onclick="changeAvgInfo('입사')">
										<span class="f-left"><b>입사</b></span>
										<span  class="f-right">
											<b id="newPerson">&nbsp;</b> &nbsp;3명 &nbsp; &nbsp;
											<b id="newPersonPercent"></b>&nbsp;%
										</span>
									</button>
								</div>
								<div class="col-sm-6">
									<button type="button" class="btn btn-default btn-lg btn-block" onclick="changeAvgInfo('퇴사')">
										<span style="float: left"><b>퇴사</b></span>
										<span style="float: right">
											<b id="outPerson">&nbsp;</b> &nbsp;명 &nbsp; &nbsp;
											<b id="outPersonPercent"></b>&nbsp;%
										</span>
									</button>
								</div>
							</div>
							<br> <br>

							<div class="row"  id="section01">
								<div class="col-md-12">

									<div class="box box-primary">
										<div class="box-header">
											<h3 class="box-title">
												<center><span id="select"></span></center>
											</h3>
										</div>
										<!-- /.box-header -->
										<div class="box-body no-padding ">
											<table class="table table-condensed">
												<tr class="row">
													<td class="col-sm-1">1.</td>
													<td class="col-sm-2">현재 기업</td>
													<td class="col-sm-7">
														<div class="progress">
															<div class="progress-bar progress-bar-danger" id="entPer"></div>
														</div>
													</td>
													<td class="col-sm-1"><span class="badge bg-red" id="numOfEnt"></span></td>
												</tr>
												<tr class="row">
													<td>2.</td>
													<td>동종 산업군</td>
													<td>
														<div class="progress">
															<div class="progress-bar progress-bar-warning "id="indPer"></div>
														</div>
													</td>
													<td><span class="badge bg-yellow" id="numOfInd"></span></td>
												</tr>
												<tr class="row">
													<td>3.</td>
													<td>전체 기업</td>
													<td>
														<div class="progress">
															<div class="progress-bar progress-bar-primary" id="toEntPer"></div>
														</div>
													</td>
													<td><span class="badge bg-light-blue" id="numOfTotEnt"></span></td>
												</tr>

											</table>
										</div>
										<!-- /.box-body -->
									</div>
									<!-- /.box -->
								</div>
							</div>
							<div class="f-right s-red-font">※최근 1년간 데이터 기준 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>
						</div>
					</div>
			</div><!-- 캐치잡 기업정보 그대로 복붙함 END 끝-->
	
	


	<!--footer-->
	<c:import url="footer.jsp" />
	<!-- jQuery-->
	<%-- 	<script src="<c:url value="resources/js/plugins/all.js" />"></script>
	<script src="<c:url value="resources/js/finder.custom.js" />"></script> --%>
	<!-- <script src="https://unpkg.com/ionicons@4.5.5/dist/ionicons.js"></script> -->
</body>
</html>