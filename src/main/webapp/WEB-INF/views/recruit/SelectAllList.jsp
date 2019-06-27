<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


<!--  헤더의 하단의 .js 부분이랑 충돌나서 임의의 새로운 헤더를 만들고 그부분을 없앰 -->

<!-- 검색폼 관련 -->
<link href="${pageContext.request.contextPath}/resources/SRC2/multiselect/jquery.multiselect.css" rel="stylesheet" type="text/css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script> 
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/SRC2/multiselect/jquery.multiselect.js">
</script>




<script type="text/javascript">

	
</script>

<link rel="stylesheet" type="text/css" href="resources/css/bundle.css">
<link rel="stylesheet" type="text/css" href="resources/css/style.css">

</head>

<style type="text/css">
 
#recruit{
	width: 850px;
  align: center;
  margin-left: auto;
  margin-right: auto;
  
  /* Customized Paging */
		    .pg_wrap { clear:both; }
		    .pg_page { /* 기본페이지 */
	             width:30px !important;
	             height:30px !important;
	             font-size:13px;
	             color:#333;
	             line-height:33px;
	             padding:0;
	             background:#fff;
	             border:0;
	             border-radius:2px;
	             -moz-border-radius:2px;
	             -webkit-border-radius:2px;
	             text-align:center;
	             display:inline-block;
	             font-weight: bold;
	         }
	         .pg_page:hover {
	             background:#f2f2f2;
	              border-radius:5px;
	             -moz-border-radius:5px;
	             -webkit-border-radius:5px;
	         }
	         .pg_current { /* 현재페이지 */
	             width:30px !important;
	             height:30px !important;
	             font-size:13px;
	             color:#fff;
	             font-weight: bold;
	             line-height:33px;
	             margin:0;
	             padding:0;
	             background:#555;
	             border:0;
	             border-radius:5px;
	             -moz-border-radius:5px;
	             -webkit-border-radius:5px;
	             text-align:center;
	             display:inline-block;
	         }
	         .pg_start { /* 처음 */
	             width:30px !important;
	             height:30px !important;
	             color:#555;
	             font-weight: bold;
	             line-height:33px;
	             margin:0;
	             padding:0;
	             background:white;
	             border:1px solid #ccc;
	             border-radius:5px;
	             -moz-border-radius:5px;
	             -webkit-border-radius:5px;
	             text-align:center;
	             display:inline-block;
	         }
	         .pg_start:hover {
	             background:#fff;
	             border:1px solid #37c0fb;
	         }
	         .pg_prev { /* 이전 */
	             width:30px !important;
	             height:30px !important;
	             color:#555;
	             font-weight: bold;
	             line-height:33px;
	             margin:0 0 0 5px;
	             padding:0;
	             background:white;
	             border:1px solid #ccc;
	             border-radius:5px;
	             -moz-border-radius:5px;
	             -webkit-border-radius:5px;
	             text-align:center;
	             display:inline-block;
	         }
	         .pg_prev:hover {
	             background:#fff;
	             border:1px solid #37c0fb;
	         }
	         .pg_next { /* 다음 */
	             width:30px !important;
	             height:30px !important;
	             color:#555;
	             font-weight: bold;
	             line-height:33px;
	             margin:0 5px 0 0;
	             padding:0;
	             background:white;
	             border:1px solid #ccc;
	             border-radius:5px;
	             -moz-border-radius:5px;
	             -webkit-border-radius:5px;
	             text-align:center;
	             display:inline-block;
	         }
	         .pg_next:hover {
	             background:#fff;
	             border:1px solid #37c0fb;
	         }
	         .pg_end { /* 맨끝 */
	             width:30px !important;
	             height:30px !important;
	             color:#555;
	             font-weight: bold;
	             line-height:33px;
	             margin:0;
	             padding:0;
	             background:white;
	             border:1px solid #ccc;
	             border-radius:5px;
	             -moz-border-radius:5px;
	             -webkit-border-radius:5px;
	             text-align:center;
	             display:inline-block;
	         }
	         .pg_end:hover {
	             background:#fff;
	             border:1px solid #37c0fb;
	         }
}


	
 </style>



<body>

<c:import url="../common/headerRecruit.jsp" />


<br><br><br><br>

<!-- 검색폼 -->

<h2 style="color: black; font-size: 1.2em; font-family: 돋움체;">  지역으로 검색</h2>

<form action="locSearch.do" method="post">

<div class="container">
	<select name="loccategory" multiple class="form-control">
	<option value="종로구">종로구</option>
	<option value="중구">중구</option>
	<option value="용산구">용산구</option>
	<option value="성동구">성동구</option>
	<option value="광진구">광진구 </option>
	<option value="동대문구">동대문구</option>
	<option value="중랑구">중랑구</option>
	<option value="성북구">성북구</option>
	<option value="강북구">강북구</option>
	<option value="도봉구">도봉구</option>
	<option value="노원구">노원구</option>
	<option value="강남구">강남구</option>
	<option value="서초구">서초구</option>
	<option value="송파구">송파구</option>

</select>

	 <input type="submit" value="검색">

</form>


<br/>






<h2>직종으로 검색</h2>



<form action="jobSearch.do" method="post">


<select name="jobSearch" multiple="multiple">
        <optgroup label="서비스" >
            <option value="콜센터">콜센터</option>
            <option value="청소">청소</option>
            <option value="서빙">서빙</option>
            <option value="주방">주방</option>
            <option value="영업">영업</option>
            <option value="판매">판매</option>
            <option value="조리사">조리사</option>
        </optgroup>
        
        <optgroup label="직종">
            <option value="회계">회계</option>
            <option value="경리">경리</option>
            <option value="사무">사무</option>
            <option value="사무">상담</option>
        </optgroup>
        
        <optgroup label="교육">
            <option value="교사">교사</option>
            <option value="강사">강사</option>
            <option value="유치원">유치원</option>
        </optgroup>
        
        <optgroup label="의료">
            <option value="보호사">보호사</option>
            <option value="조무사">조무사</option>
            <option value="간호사">간호사</option>
            <option value="복지사">복지사</option>
            <option value="병원">병원</option>
            <option value="코디네이터">코디네이터</option>
        </optgroup>
        
        <optgroup label="Document Markup Languages">
            <option value="컴퓨터">컴퓨터</option>
            <option value="디자이너">디자이너</option>
        </optgroup>
</select>



		 <input type="submit" value="검색">
		 
		
		 </form>
		 
		 <!-- 직종검색 끝 -->


<script>
$('select[multiple]').multiselect({
// text to use in dummy input
placeholder   : '선택',    

// how many columns should be use to show options
columns       : 3,  

// include option search box   
search        : false,    

// search filter options
// 오류나서 주석함

/* searchOptions : {
  default      : 'Search', 
  showOptGroups: false     // show option group titles if no options remaining
},      */

// add select all option
selectAll     : false, 

// select entire optgroup   
selectGroup   : false,  

// minimum height of option overlay
minHeight     : 200,   

// maximum height of option overlay
maxHeight     : null,  

// display the checkbox to the user
showCheckbox  : true,  

// options for jquery.actual
jqActualOpts  : {},    

// maximum width of option overlay (or selector)
maxWidth      : null, 

// minimum number of items that can be selected
minSelect     : false, 

// maximum number of items that can be selected
maxSelect     : false, 

});
</script>


<!-- 검색폼 끝 -->


<br><br><br>

<table 
id="recruit"
align="center" 
cellspacing="0" 
border="1"
width="600"
class="table table-hover">


<tr>
	<th>등록번호</th>
	<th>업체명</th>
	<th>직종</th>
	<th>급여</th>
	<th>마감일</th>
	


	
</tr>
<c:forEach items="${list}" var="Recruit" varStatus="status">
<tr>
	<!-- <td>${status.count }</td> -->
	
	<td>${Recruit.reregistno} </td>
	<td>
	<div style="color: black; font-size: 1.2em; font-family: 돋움체;"><strong>${Recruit.cmpnynm}</strong>
	
	<a href="recruitDetail.do?joregistno=${Recruit.joregistno}">${Recruit.cmpnynm}</a>
	</div>
	</td>
	
	<td>  ${Recruit.jobcodenm}   
	<br> 
	<div style="color: green; font-size: -1; " > ${Recruit.worktmnm} 
	&nbsp; ${Recruit.emplymstlecmmnmm}
	&nbsp; 경력여부 : ${Recruit.careercndnm}
	 </div> 
	
	</td>
	
	
	
	<td>${Recruit.hopewage}</td>
	<td>${Recruit.rceptclosnm}</td>
	
	
</tr>
</c:forEach>
</table>

<br>

	
								
								
								<div class="paging" style="text-align: center;">
								<!-- 페이징 url -->
									<c:url var="first" value="workinfoList.do">
										<c:param name="page" value="1"/>
									</c:url>
									<c:url var="prev" value="workinfoList.do">
										<c:param name="page" value="${ endPage - pageLimit }"/>
									</c:url>
									
								<!-- 맨앞 이전 -->
									<c:if test="${ startPage ne 1 }">
										<a href="${ first }">
											맨앞  
										</a>
										<a href="${ prev }">
											이전  
										</a>
									</c:if>
									
								<!-- 페이징 숫자 처리  -->
									<c:forEach var="p" begin="${ startPage }" end="${ endPage }">
										
										<c:url var="move" value="workinfoList.do">
											<c:param name="page" value="${ p }"/>
										</c:url>
										<c:if test="${ p eq currentPage }">
											<span class="pg_current">${ p }</span>
										</c:if>
										<c:if test="${ p ne currentPage }">
											<a class="pg_page" href="${ move }">${ p }</a>
										</c:if>
									</c:forEach>
									
									
								<!-- 다음 마지막 -->
									<c:url var="next" value="workinfoList.do">
										<c:param name="page" value="${ startPage + pageLimit }"/>
									</c:url>
									<c:url var="last" value="workinfoList.do">
										<c:param name="page" value="${ maxPage }"/>
									</c:url>
									<c:if test="${ endPage ne maxPage }">
										<a class="pg_next" href="${ next }">
											다음  
										</a>
										<a class="pg_end" href="${ last }">
											마지막  
										</a>
									</c:if>
								</div>
								
							</div>
							
						</div>
					</div>
				</section>
		</div>
		
		<br><br>
							


</body>
</html>