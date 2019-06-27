<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>saramOut</title>
<style type="text/css">
   
table td {
   padding: 1px;
   margin: 5px;
}

.file_input_textbox {
    float:left;
    height:29px;
}
.file_input_div {
    position:relative;
    width:101px;
    height:125px;
    overflow:hidden;
}


.file_input_hidden {
    font-size:29px;
    position:absolute;
    width:101px;
    height:125px;
    right:0px;
    top:0px;
    opacity:0;
    filter: alpha(opacity=0);
    -ms-filter: alpha(opacity=0);
    cursor:pointer;
}

.container2 {
  position: relative;
  width: 50%;
}

.file_input_img_btn {
  opacity: 1;
  display: block;
  width: 100%;
  height: auto;
  transition: .5s ease;
  backface-visibility: hidden;
}

.middle {
  transition: .5s ease;
  opacity: 0;
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  -ms-transform: translate(-50%, -50%);
  text-align: center;
}

.container2:hover .image {
  opacity: 0.3;
}

.container2:hover .middle {
  opacity: 1;
}

.pictext {
  background-color: black;
  color: white;
  width: 110px;
  height: 150px;
  font-size: 15px;
  opacity: 0.7;
  text-align:center;
}
</style>
<script type="text/javascript" src="${ pageContext.request.contextPath }/resources/js/jquery-3.3.1.min.js"></script>
<script type="text/javascript">

 function moveDetail(){
      location.href = "moveDetailResume.do?resume_no=${ resume.resume_no }";
   }
   function moveBack(){
      window.history.go(-1)
   }
   
   $(function() {
		$("#addSchool").click(function () { 
	   		if($("input:text[name='resume_school']").length < 5){
			var row = "<tr>"; 
				row += "<td><select name='resume_school_classification' class='form-controll'>";
				row += "<option value='고등학교'>고등학교</option>";
				row += "<option value='2~3년제 대학'>2~3년제 대학</option>";
				row += "<option value='4년제 대학'>4년제 대학</option>";
				row += "<option value='대학원'>대학원</option></td>";
				row += "<td><input type='text' size='20' name='resume_school' value='학교명'></td>";
				row += "<td><input type='text' size='20' name='resume_major' value='학과'></td>";
				row += "<td><input type='text' size='20' name='resume_entrance_date' value='입학일'></td>";
				row += "<td><input type='text' size='20' name='resume_graduate_date' value='졸업일'></td>";
				row += "<td><select name='resume_graduate_yn' style='width:100px;' class='form-control'>";
				row += "<option value='졸업'>졸업</option>";
				row += "<option value='졸업예정'>졸업예정</option>";
				row += "<option value='재학중'>재학중</option>";
				row += "<option value='중퇴'>중퇴</option>";
				row += "<option value='휴학'>휴학</option></select></td>";
				
				row += "<td><span>삭제</span></td>";
				row += "</tr>"; 
				
				$("#school").append(row); 
				} else { alert("학력은 5개까지 추가 가능합니다.") }s
	   		});
		
		$("#school").on("click", "span", function() {
							$(this).closest("tr").remove();
			}); 
		
		
		});

	$(function() {
		$("#addCareer").click(function () { 
	   		if($("input:text[name='resume_company']").length < 5){
			var row = "<tr>"; 
				row += "<td><input type='text' size='24' name='resume_company' value='회사명'> ";		
				row += "<input type='text' size='23' name='resume_department' value='부서명'> ";
				row += "<input type='text' size='10' name='resume_grade' value='직급'> ";
				row += "<input type='text' size='15' name='resume_hire_date' value='입사일'> ";
				row += "<input type='text' size='15' name='resume_retirement_date' value='퇴사일'> "
				row += "<input type='text' size='15' name='resume_hold_company_yn' value='재직여부'>";
				row += "<span>삭제</span>";
				row += "<input type='text' style='width:889px;' name='resume_work_contents' value='간단업무'></td>";
				row += "</tr>";
				$("#career").append(row); 
				} else { alert("경력은 5개까지 추가 가능합니다.") }
	   		});
		
		$("#career").on("click", "span", function() {
							$(this).closest("tr").remove();
							
			}); 
		});
		
	$(function() {
		$("#addLicense").click(function () { 
	   		if($("input:text[name='resume_license']").length < 5){
			var row = "<tr>"; 
				row += "<td><input type='text' size='50' name='resume_license' value='자격증명'></td>";
				row += "<td><input type='text' size='50' name='resume_publication_place' value='발행처'></td>";
				row += "<td><input type='text' size='25' name='resume_acquisition_date' value='취득일'></td>";
				row += "<td><span>삭제</span></td>";
				row += "</tr>";
				
				$("#license").append(row); 
				} else { alert("자격증은 5개까지 추가 가능합니다.") }
	   		});
		
		$("#license").on("click", "span", function() {
							$(this).closest("tr").remove();
			}); 
		});
		
		$(document).on('keyup', '#intro', function(e){
		    var textarea01 = $(this).val();
		    $('#cntSPAN').text(getBytes(textarea01));    
		}); 
		 
		function getBytes(str){
		    var cnt = 0;
		    for(var i =0; i<str.length;i++) {
		        cnt += (str.charCodeAt(i) >128) ? 2 : 1;
		    }
		    return cnt;
		}

		function chkword(obj, maxByte) {
			 
		    var strValue = obj.value;
		    var strLen = strValue.length;
		    var totalByte = 0;
		    var len = 0;
		    var oneChar = "";
		    var str2 = "";

		    for (var i = 0; i < strLen; i++) {
		        oneChar = strValue.charAt(i);
		        if (escape(oneChar).length > 4) {
		            totalByte += 2;
		        } else {
		            totalByte++;
		        }

		        // 입력한 문자 길이보다 넘치면 잘라내기 위해 저장
		        if (totalByte <= maxByte) {
		            len = i + 1;
		        }
		    }


		//넘어가는 글자는 자른다.
		if (totalByte > maxByte) {
		    alert(maxByte + "byte를 초과 입력 할 수 없습니다.");
		    str2 = strValue.substr(0, len);
		    obj.value = str2;
		    chkword(obj, 4000);
			}
		}
   
  function readURL(input) {
		if (input.files && input.files[0]) {
			var reader = new FileReader();
			reader.onload = function(e) {
				$('#pic').attr('src', e.target.result);
			}

			reader.readAsDataURL(input.files[0]);
		}
	}
</script>
</head>
<body>
 <!-- Preloader -->
   <div id="preloader"></div>
   <c:import url="../common/header.jsp" />

   <div class="page-bread mb70">
      <div class="container">
         <div class="row">
            <div class="col-sm-6">
               <h3>이력서 수정</h3>
            </div>
            <div class="col-sm-6"></div>
         </div>
      </div>
   </div>
      <div class="container" >
      <form action="updateResume.do" method="post" enctype="multipart/form-data">

      <input type="hidden" name="resume_userid" value="${ resume.resume_userid }">
      <input type="hidden" name="resume_no" value="${ resume.resume_no }">
      <input type="hidden" name="resume_rpic" value="${ resume.resume_rpic }">
      <input type="hidden" name="opic2" value="${ resume.resume_opic }">
      <input type="hidden" name="resume_employment_form">

         <div class="row">
            <div class="col-sm-12">

            <table>
               <tr>
                  <td colspan="4"><input type="text" style="width:673px;" name="resume_title" value="${ resume.resume_title }"></td>
                  <td rowspan="3">
                 		<c:if test="${ !empty resume.resume_opic }">
		                  <div class="container2">
							<div class="file_input_div">
							    <img id="pic" src="${ pageContext.request.contextPath }/resources/resume/${ resume.resume_rpic }" 
							    		style="width:101px; height:125px;" class="file_input_img_btn" alt="open" />
							    <div class="middle">
							    <div class="pictext"><br><br>사진<br>변경</div>
							  </div>
							    <input type="file" name="opic" class="file_input_hidden" onchange="readURL(this);" 
							    onchange="javascript: document.getElementById('fileName').value = this.value"/>
							  </div>
							</div>
						</c:if>
						<c:if test="${ empty resume.resume_opic }">
							 <div class="container2">
							<div class="file_input_div">
							    <img id="pic" src="${ pageContext.request.contextPath }/resources/images/사진등록.jpg" 
							    		style="width:101px; height:125px;" class="file_input_img_btn" alt="open" />
							    <div class="middle">
							    <div class="pictext"><br><br>사진<br>변경</div>
							  </div>
							    <input type="file" name="opic" class="file_input_hidden" onchange="readURL(this);" 
							    onchange="javascript: document.getElementById('fileName').value = this.value"/>
							  </div>
							</div>
						</c:if>
                  </td>
               </tr>
               <tr>
                  <td><input type="text" name="resume_username" value="${ resume.resume_username }"></td>
                  <td><input type="text" name="resume_userbirthday" value="${ resume.resume_userbirthday }"></td>
                  <td><input type="text" name="resume_usergender" value="${ resume.resume_usergender }"></td>
                  <td><input type="email" name="resume_useremail" value="${ resume.resume_useremail }"></td>
               </tr>
               <tr>
                  <td><input type="text" name="resume_userphone" value="${ resume.resume_userphone }"></td>
                  <td colspan="3"><input type="text" name="resume_userfulladdress" size="67.5" value="${ resume.resume_userfulladdress }"></td>
               </tr>
                  </table>
                         <br><br>
               <strong style="font-size:18px">학력</strong>
               <div class="form-group">
                  <table id="school">
                  
                  </table>
                  <span id="addSchool" onclick="school();">+ 학력추가</span>
               </div>
               
<%--                <strong style="font-size:18px">학력</strong>
               <div class="form-group">
                  <table>
                     <tr>
                  <td>
                  		<select name="resume_school_classification" class="form-control">
                           <option value="고등학교" ${resume.resume_school_classification eq '고등학교' ? 'selected="selected"' : '' } >고등학교</option>
                           <option value="2~3년제 대학" ${resume.resume_school_classification eq '2~3년제 대학' ? 'selected="selected"' : '' }>2~3년제 대학</option>
                           <option value="4년제 대학" ${resume.resume_school_classification eq '4년제 대학' ? 'selected="selected"' : '' }>4년제 대학</option>
                           <option value="대학원" ${resume.resume_school_classification eq '대학원' ? 'selected="selected"' : '' }>대학원</option>
                        </select>
                  </td>
                  <td><input type="text" size="20" name="resume_school" value="${ resume.resume_school }"></td>
                  <td><input type="text" size="20" name="resume_major" value="${ resume.resume_major }"></td>
                  <td><input type="text" size="15" name="resume_entrance_date" value="${ resume.resume_entrance_date }"></td>
                  <td><input type="text" size="15" name="resume_graduate_date" value="${ resume.resume_graduate_date }"></td>
                  <td>
                     <select name="resume_graduate_yn" style="width:100px;" class="form-control">
                                <option value="졸업" ${resume.resume_graduate_yn eq '졸업' ? 'selected="selected"' : '' }>졸업</option>
                                <option value="졸업예정" ${resume.resume_graduate_yn eq '졸업예정' ? 'selected="selected"' : '' }>졸업예정</option>
                                <option value="재학중" ${resume.resume_graduate_yn eq '재학중' ? 'selected="selected"' : '' }>재학중</option>
                                <option value="중퇴" ${resume.resume_graduate_yn eq '중퇴' ? 'selected="selected"' : '' }>중퇴</option>
                                <option value="휴학" ${resume.resume_graduate_yn eq '휴학' ? 'selected="selected"' : '' }>휴학</option>
                          </select>
                     </td>
               </tr>
               <tr><td colspan="6" style="text-align:center;">+ 학력추가</td></tr>
                  </table>
               </div> --%>
               <br><br>
               <span><strong style="font-size:18px">경력</strong> 총 3년 2개월</span>
               <div class="form-group"> 
                 <table>
                    <tr>
                  <td><input type="text" size="20" name="resume_company" value="${ resume.resume_company }"></td>
                  <td><input type="text" size="25" name="resume_department" value="${ resume.resume_department }"></td>
                  <td><input type="text" size="20" name="resume_grade" value="${ resume.resume_grade }"></td>
                  <td><input type="text" size="15" name="resume_hire_date" value="${ resume.resume_hire_date }"></td>
                  <td><input type="text" size="15" name="resume_retirement_date" value="${ resume.resume_retirement_date }"></td>
                  <td><input type="text" size="15" name="resume_hold_company_yn" value="재직여부"></td>
               </tr>
               <tr><td colspan="6" style="text-align:center;"><input type="text" size="127" name="resume_work_contents" value="${ resume.resume_work_contents }"></td></tr>
               <tr><td colspan="6" style="text-align:center;">+ 경력추가</td></tr>
                 </table>
               </div>
               <br><br>
               
               
               <strong style="font-size:18px;">자격증</strong>
               <div class="form-group"> 
                 <table>
                    <tr>
                  <td><input type="text" size="50" name="resume_license" value="${ resume.resume_license }"></td>
                  <td><input type="text" size="50" name="resume_publication_place" value="${ resume.resume_publication_place }"></td>
                  <td><input type="text" size="25" name="resume_acquisition_date" value="${ resume.resume_acquisition_date }"></td>
               </tr>
               <tr><td colspan="3" style="text-align:center;">+ 자격증추가</td></tr>
                 </table>
               </div>
               <br><br>
 
             <strong style="font-size:18px;">희망근무조건</strong>
               <div class="form-group"> 
                 <c:forTokens items="${ resume.resume_employment_form }" delims=","  var="form">
                  <c:if test="${form eq '정규직' }">
                     <c:set var="check0" value="checked"/>
                  </c:if>
                  <c:if test="${form eq '인턴직' }">
                     <c:set var="check1" value="checked"/>
                  </c:if>      
                  <c:if test="${form eq '계약직' }">
                     <c:set var="check2" value="checked"/>
                  </c:if>
                  <c:if test="${form eq '프리랜서' }">
                     <c:set var="check3" value="checked"/>
                  </c:if>      
               </c:forTokens>
                 <table>
                    <tr>
                  <td>
                     <div class="checkbox">
                        <input type="checkbox" name="resume_employment_form" id="wjdrb" value="정규직" ${ check0 }> <label for="wjdrb">정규직&nbsp;&nbsp;</label>
                     </div>
                  </td>
                  <td>
                     <div class="checkbox">
                        <input type="checkbox" name="resume_employment_form" id="dlsxjs" value="인턴직" ${ check1 }> <label for="dlsxjs">인턴직&nbsp;&nbsp;</label>
                     </div>
                  </td>
                  <td>
                     <div class="checkbox">
                        <input type="checkbox" name="resume_employment_form" id="rPdir" value="계약직" ${ check2 }> <label for="rPdir">계약직&nbsp;&nbsp;</label>
                     </div>
                  </td>
                  <td>
                     <div class="checkbox">
                        <input type="checkbox" name="resume_employment_form" id="vmfl" value="프리랜서" ${ check3 }> <label for="vmfl">프리랜서&nbsp;&nbsp;</label>
                     </div>
                  </td>            
                  <td><input type="text" size="4" name="resume_hope_salary" value="${ resume.resume_hope_salary }"> 만원 이상</td>
               </tr>
                 </table>
               </div>
               <br><br>
               <!-- /.form-group -->

            </div>

         </div>

         <div class="mb30">

             <strong style="font-size:18px">자기소개서</strong>&nbsp;&nbsp;&nbsp;<span id="cntSPAN" >0</span>&nbsp;<span>/ 3000 bytes</span>
            <div class="form-group">
               <textarea id="intro" onkeyup="chkword(this, 3000)" class="form-control" rows="8" name="resume_introduce_document" style="resize: vertical;">${ resume.resume_introduce_document }</textarea>
               <div class="textarea-resize"></div>
            </div>
         </div>
            <table>
            <tr>
               <td>
               <c:if test="${ !empty resume.resume_open_yn }">
                  <c:set var="check" value="checked"/>
               </c:if>
               <div class="checkbox">
                     <input type="checkbox" name="resume_open_yn" id="rm" value="공개" ${ check }> <label for="rm">이력서 공개하기</label>
                     &nbsp;&nbsp;&nbsp;&nbsp;이력서를 공개하시면 기업에서 이력서를 열람 후 취업제의를 받으실 수 있습니다.
                  </div>
               
            </tr>
         </table>
         <input type="hidden" name="resume_open_yn">
         
         <table>
            <tr><td><input type="submit" class="btn btn-primary" value="수정완료">&nbsp;<input type="reset" value="수정취소" class="btn btn-primary" onclick="moveBack();"></td></tr>
         </table>
         <br><br>
           </form>
      </div>
   
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





















