<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" errorPage="common/error.jsp"%>
<%@ page import="java.net.URLEncoder"%>
<%@ page import="java.security.SecureRandom"%>
<%@ page import="java.math.BigInteger"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<title>사람아웃</title>
<script src="<c:url value="resources/js/jquery-3.3.1.min.js" />"></script>

<script type="text/javascript">
	function readURL(input) {
		if (input.files && input.files[0]) {
			var reader = new FileReader();
			reader.onload = function(e) {
				$('#blah').attr('src', e.target.result);
			}

			reader.readAsDataURL(input.files[0]);
		}
	}
</script>
</head>
<body>
	<!-- Preloader -->
	<div id="preloader"></div>
	<c:import url="header.jsp" />

	<div class="page-bread mb70">
		<div class="container">
			<div class="row">
				<div class="col-sm-6">
					<h3>기업 상세 정보 수정</h3>
				</div>
				<div class="col-sm-6"></div>
			</div>
		</div>
	</div>


	<div class="container mb30">
		<div class="row">


			<form action="cupdate.do" method="post" enctype="multipart/form-data"
				id="form1" runat="server">
				<div>
					<input type="hidden" name="bid" value="${loginMember2.getBid()}">
				</div>



				<div class="col-sm-4 mb40">
					<label>업종</label> <br> <select class="form-control"
						name="company_type" id="company_type"
						value="${companyinfo.company_type}">
						<option value="생산/제조">생산/제조</option>
						<option value="무역/운송">무역/운송</option>
						<option value="판매/유통">판매/유통</option>
						<option value="건설/토목">건설/토목</option>
						<option value="금융/보험">금융/보험</option>
						<option value="IT/인터넷">IT/인터넷</option>
						<option value="의료/제약">의료/제약</option>
						<option value="교육">교육</option>
						<option value="서비스">서비스</option>
						<option value="미디어/광고">미디어/광고</option>
						<option value="예술/디자인">예술/디자인</option>
						<option value="기관/협회">기관/협회</option>
						<option value="기타">기타</option>
					</select>
				</div>
				<div class="col-sm-4 mb40">
					<label>매출액</label> (억 원) <br> <input type="number"
						class="form-control" name="sales" id="sales"
						value="${companyinfo.sales}">
				</div>
				<div class="col-sm-4 mb40">
					<label>대표자명</label> <br> <input type="text"
						class="form-control" name="represent" id="represent"
						value="${companyinfo.represent}">
				</div>
				<div class="col-sm-4 mb40">
					<label>사원수</label> (명) <br> <input type="number"
						class="form-control" name="employees" id="employees"
						value="${companyinfo.employees}">
				</div>

				<div class="col-sm-4 mb40">
					<label>설립일</label> <br> <input type="date"
						class="form-control" name="establish" id="establish"
						value="${companyinfo.establish}">
				</div>

				<div class="col-sm-4 mb40">
					<label>홈페이지</label> <input type="url" class="form-control"
						name="homepage" id="homepage" value="${companyinfo.homepage}">
				</div>

			<div class="col-sm-4 mb30">
					<img id="blah" src="#" alt="your image" class="img-responsive mb15"
						width="200"> <input type="file" name="image" id="image"
						onchange="readURL(this);" value="${companyinfo.image}">
				</div> 

			<div>
					<input type="hidden" name="renameimage"
						value="${companyinfo.renameimage}">
				</div> 


				<div class="col-sm-6 mb40"></div>
				<div class="col-sm-2 mb40">
					<button type="submit" class="btn btn-primary btn-lg">기업 정보
						등록</button>
					<div class="col-sm-12 mb40"></div>
					<div class="col-sm-12 mb40"></div>
					<div class="col-sm-12 mb40"></div>
					<div class="col-sm-12 mb40"></div>
					<div class="col-sm-12 mb40"></div>
					<div class="col-sm-12 mb40"></div>
				</div>
			</form>
		</div>
	</div>

	<!--footer-->
	<c:import url="footer.jsp" />

</body>
</html>