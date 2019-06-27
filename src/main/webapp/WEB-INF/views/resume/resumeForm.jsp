<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>saramOut</title>
<style type="text/css">

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

</style>
<script type="text/javascript" src="${ pageContext.request.contextPath }/resources/js/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
/* 학력추가 */
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
<style>
table td {
   padding: 1px;
   margin: 5px;
}
</style>
</head>
<body>
<!-- Preloader -->
   <div id="preloader"></div>
   <c:import url="../common/header.jsp" />

   <div class="page-bread mb70">
      <div class="container">
         <div class="row">
            <div class="col-sm-6">
               <h3>새 이력서 작성</h3>
            </div>
            <div class="col-sm-6"></div>
         </div>
      </div>
   </div>
      <div class="container" >
      <form action="resumeinsert.do" method="post" enctype="multipart/form-data">
         <input type="hidden" name="resume_userid" value="${ member.userid }">
         <input type="hidden" name="resume_rpic">

         <div class="row">
            <div class="col-sm-12">

            <table>
               <tr>
                  <td colspan="4"><input type="text" style="width:673px;" name="resume_title" value="제목"></td>
                  <td rowspan="3">
                  	<div class="file_input_div">
					    <img id="pic" src="${ pageContext.request.contextPath }/resources/images/사진등록.jpg" 
					    		style="width:101px; height:125px;" class="file_input_img_btn" alt="open" />
					    <input type="file" name="opic" class="file_input_hidden" onchange="readURL(this);" 
					    onchange="javascript: document.getElementById('fileName').value = this.value"/>
					</div>
                  
                  </td>
               </tr>
               <tr>
                  <td><input type="text" name="resume_username" value="${ member.username  }"></td>
                  <td><input type="text" name="resume_userbirthday" value="${ member.birthday  }"></td>
                  <td><input type="text" name="resume_usergender" value="${ member.gender }"></td>
                  <td><input type="email" name="resume_useremail" value="${ member.email }"></td>
               </tr>
               <tr>
                  <td><input type="text" name="resume_userphone" value="${ member.phone }"></td>
                  <td colspan="3"><input type="text" name="resume_userfulladdress" size="67.5" value="${ member.fulladdress }"></td>
               </tr>
                  </table>
                         <br><br>
               <strong style="font-size:18px">학력</strong>
               <div class="form-group">
                  <table id="school">
                  
                  </table>
                  <span id="addSchool" onclick="school();">+ 학력추가</span>
                  
               </div>
               <br><br>
               <span><strong style="font-size:18px">경력</strong> 총 3년 2개월</span>
               <div class="form-group"> 
                 <table id="career">
                 </table>
                 <span id="addCareer">+ 경력추가</span>
               </div>
               <br><br>
               
               
               <strong style="font-size:18px;">자격증</strong>
               <div class="form-group"> 
                 <table id="license">
                 </table>
                  <span id="addLicense">+ 자격증추가</span>
               </div>
               <br><br>
 
             <strong style="font-size:18px;">희망근무조건</strong>
               <div class="form-group"> 
                 <table>
                    <tr>
                  <td>
                     <div class="checkbox">
                        <input type="checkbox" name="resume_employment_form" id="wjdrb" value="정규직" > <label for="wjdrb">정규직&nbsp;&nbsp;</label>
                     </div>
                  </td>
                  <td>
                     <div class="checkbox">
                        <input type="checkbox" name="resume_employment_form" id="dlsxjs" value="인턴직"> <label for="dlsxjs">인턴직&nbsp;&nbsp;</label>
                     </div>
                  </td>
                  <td>
                     <div class="checkbox">
                        <input type="checkbox" name="resume_employment_form" id="rPdir" value="계약직"> <label for="rPdir">계약직&nbsp;&nbsp;</label>
                     </div>
                  </td>
                  <td>
                     <div class="checkbox">
                        <input type="checkbox" name="resume_employment_form" id="vmfl" value="프리랜서"> <label for="vmfl">프리랜서&nbsp;&nbsp;</label>
                     </div>
                  </td>
                  <td><input type="text" size="4" name="resume_hope_salary" value="3000"> 만원 이상</td>
               </tr>
                 </table>
                    <input type="hidden" name="resume_employment_form">
               </div>
               <br><br>
               <!-- /.form-group -->

            </div>

         </div>

         <div class="mb30">

            
            <div>
		        <strong style="font-size:18px">자기소개서</strong>&nbsp;&nbsp;&nbsp;<span id="cntSPAN" >0</span>&nbsp;<span>/ 3000 bytes</span>
		    </div>
            <div class="form-group">
               <textarea id="intro" class="form-control" onkeyup="chkword(this, 3000)" rows="8" name="resume_introduce_document" style="resize: vertical;">자기소개입니다.</textarea>
               <div class="textarea-resize"></div>
            </div>
         </div>
            <table>
            <tr>
               <td>
               <div class="checkbox">
                     <input type="checkbox" name="resume_open_yn" id="rm" value="공개"> <label for="rm">이력서 공개하기</label>
                     &nbsp;&nbsp;&nbsp;&nbsp;이력서를 공개하시면 기업에서 이력서를 열람 후 취업제의를 받으실 수 있습니다.
                  </div>
               
            </tr>
         </table>
         <input type="hidden" name="resume_open_yn">
         
         <br><br>
         <table>
            <tr><td><input type="submit" value="작성완료"></td><td><input type="reset" value="작성취소"></td></tr>
         </table>
      
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





















