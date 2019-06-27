<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>saramOut</title>
<script type="text/javascript" src="${ pageContext.request.contextPath }/resources/js/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
/* if ($('input[name=open_yn]').is(":checked")) {
	$('input[name="resume_open_yn"]').val('공개');
} else {
    $('input[name="resume_open_yn"]').val('비공개');
}
 */

</script>
<style>
	table {
		border: 1px soild black;
		padding: 8px;
		align: center;
	}

	td {
		border:1px solid black;
		height: 40px;
	}
	td input {
		border: 0px;
	}
</style>
</head>
<body>
<c:import url="../common/header.jsp"/>
<hr style="clear:both;">
<form action="updateResume.do" method="post">
<input type="hidden" name="resume_userid" value="${ resume.resume_userid }">
<input type="hidden" name="resume_no" value="${ resume.resume_no }">

<table style="border:1px solid black;">
	<tr>
		<td colspan="4"><input type="text" size="120" name="resume_title" value="${ resume.resume_title }"></td>
		<td rowspan="3"><input type="text" name="resume_pic" value="사진추가"></td>
	</tr>
	<tr>
		<td><input type="text" name="resume_username" value="${ resume.resume_username }"></td>
		<td><input type="text" name="resume_userbirthday" value="${ resume.resume_userbirthday }"></td>
		<td><input type="text" name="resume_usergender" value="${ resume.resume_usergender }"></td>
		<td><input type="email" name="resume_useremail" value="${ resume.resume_useremail }"></td>
	</tr>
	<tr>
		<td><input type="text" name="resume_userphone" value="${ resume.resume_userphone }"></td>
		<td colspan="3"><input type="text" name="resume_userfulladdress" value="${ resume.resume_userfulladdress }"></td>
		
	</tr>
</table>
<br>
<h2>학력</h2>
<table style="border:1px solid black;">
	<tr>
		<td><input type="text" size="20" name="resume_school_classification" value="${ resume.resume_school_classification }"></td>
		<td><input type="text" size="25" name="resume_school" value="${ resume.resume_school }"></td>
		<td><input type="text" size="20" name="resume_major" value="${ resume.resume_major }"></td>
		<td><input type="text" size="15" name="resume_entrance_date" value="${ resume.resume_entrance_date }"></td>
		<td><input type="text" size="15" name="resume_graduate_date" value="${ resume.resume_graduate_date }"></td>
		<td><input type="text" size="15" name="resume_graduate_yn" value="${ resume.resume_graduate_yn }"></td>
	</tr>
	<tr><td colspan="6" style="text-align:center;">+ 학력추가</td></tr>
</table>
<h2>경력</h2>
<table style="border:1px solid black;">
	<tr>
		<td><input type="text" size="20" name="resume_company" value="${ resume.resume_company }"></td>
		<td><input type="text" size="25" name="resume_department" value="${ resume.resume_department }"></td>
		<td><input type="text" size="20" name="resume_grade" value="${ resume.resume_grade }"></td>
		<td><input type="text" size="15" name="resume_hire_date" value="${ resume.resume_hire_date }"></td>
		<td><input type="text" size="15" name="resume_retirement_date" value="${ resume.resume_retirement_date }"></td>
		<td><input type="text" size="15" name="resume_work_contents" value="${ resume.resume_work_contents }"></td>
	</tr>
	<tr><td colspan="6" style="text-align:center;">+ 경력추가</td></tr>
</table>
<h2>자격증</h2>
<table style="border:1px solid black;">
	<tr>
		<td><input type="text" size="50" name="resume_license" value="${ resume.resume_license }"></td>
		<td><input type="text" size="50" name="resume_publication_place" value="${ resume.resume_publication_place }"></td>
		<td><input type="text" size="25" name="resume_acquisition_date" value="${ resume.resume_acquisition_date }"></td>
	</tr>
	<tr><td colspan="3" style="text-align:center;">+ 자격증추가</td></tr>
</table>
<h2>희망근무조건</h2>
<table style="border:1px solid black;">
	<tr>
		<td><input type="text" size="50" name="resume_employment_form" value="${ resume.resume_employment_form }"></td>
		<td><input type="text" size="50" name="resume_hope_salary" value="${ resume.resume_hope_salary }"> 만원</td>
	</tr>
	<tr><td colspan="2" style="text-align:center;">+ 자격증추가</td></tr>
</table>
<h2>자기소개서</h2>
<table>
	<tr>
		<td><textarea cols="138" rows="10" name="resume_introduce_document" style="resize: none;">${ resume.resume_introduce_document }</textarea></td>
	</tr>
</table>
<table>
	<tr>
		<td>
		<c:if test="${ !empty resume.resume_open_yn }">
			<c:set var="check" value="checked"/>
		</c:if>
		<input type="checkbox" name="resume_open_yn" value="공개"${ check }>이력서 공개하기<br>
		&nbsp;&nbsp;&nbsp;&nbsp;이력서를 공개하시면 기업에서 이력서를 열람 후 취업제의를 받으실 수 있습니다.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
	</tr>
</table>

<input type="hidden" name="resume_open_yn">

<table>
	<tr><td><input type="submit" value="수정완료"></td><td><input type="reset" value="작성취소"></td></tr>
	
</table>
</form>
<!-- 
<div class="job-search-form">
<form>
<div class="row">
<div class="col-lg-5 col-md-6 col-xs-12">
<div class="form-group">
<input class="form-control" type="text" placeholder="Job Title or Company Name">
</div>
</div>
<div class="col-lg-3 col-md-6 col-xs-12">
<div class="form-group">
<div class="search-category-container">
<label class="styled-select">
<select>
<option value="none">Locations</option>
<option value="none">New York</option>
<option value="none">California</option>
<option value="none">Washington</option>
<option value="none">Birmingham</option>
<option value="none">Chicago</option>
<option value="none">Phoenix</option>
</select>
</label>
</div>
<i class="lni-map-marker"></i>
</div>
</div>
<div class="col-lg-3 col-md-6 col-xs-12">
 <div class="form-group">
<div class="search-category-container">
<label class="styled-select">
<select>
<option>All Categories</option>
<option>Finance</option>
<option>IT &amp; Engineering</option>
<option>Education/Training</option>
<option>Art/Design</option>
<option>Sale/Markting</option>
<option>Healthcare</option>
<option>Science</option>
<option>Food Services</option>
</select>
</label>
</div>
<i class="lni-layers"></i>
</div>
</div>
<div class="col-lg-1 col-md-6 col-xs-12">
<button type="submit" class="button"><i class="lni-search"></i></button>
</div>
</div>
</form>
</div>
 -->

</body>
</html>






















