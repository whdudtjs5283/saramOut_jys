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



<div class="container">
	<select name="country" multiple class="form-control">
	<option value="">Country...</option>
	<option value="AF">Afghanistan</option>
	<option value="AL">Albania</option>
	<option value="DZ">Algeria</option>
	<option value="AS">American Samoa</option>
	<option value="AD">Andorra</option>
	<option value="AG">Angola</option>
	<option value="AI">Anguilla</option>
	<option value="AG">Antigua & Barbuda</option>
	<option value="AR">Argentina</option>
	<option value="AA">Armenia</option>
	<option value="AW">Aruba</option>
	<option value="AU">Australia</option>
	<option value="AT">Austria</option>

</select>


<br/>






<h2>직종으로 검색</h2>



<form action="jobSearch.do" method="post">


<select name="category1" multiple="multiple">
        <optgroup label="Programming Languages">
            <option value="강남구">강남구</option>
            <option value="강동구">강동구</option>
            <option value="역삼동">역삼동</option>
        </optgroup>
        <optgroup label="Client-side scripting Languages">
            <option value="JavaScript">JavaScript</option>
        </optgroup>
        <optgroup label="Server-side scripting Languages">
            <option value="Perl">Perl</option>
            <option value="PHP">PHP</option>
            <option value="Ruby on Rails">Ruby on Rails</option>
        </optgroup>
        <optgroup label="Mobile Platforms">
            <option value="Android">Android</option>
            <option value="iOS (iPhone, iPad and iPod Touch)">iOS (iPhone, iPad and iPod Touch)</option>
        </optgroup>
        <optgroup label="Document Markup Languages">
            <option value="HTML">HTML</option>
            <option value="SGML">SGML</option>
        </optgroup>
</select>


<h3>지역으로 검색</h3>
<select name="category2" multiple="multiple">
        <optgroup label="Programming Languages">
            <option value="강남구">강남구</option>
            <option value="강동구">강동구</option>
            <option value="역삼동">역삼동</option>
        </optgroup>
        <optgroup label="Client-side scripting Languages">
            <option value="JavaScript">JavaScript</option>
        </optgroup>
        <optgroup label="Server-side scripting Languages">
            <option value="Perl">Perl</option>
            <option value="PHP">PHP</option>
            <option value="Ruby on Rails">Ruby on Rails</option>
        </optgroup>
        <optgroup label="Mobile Platforms">
            <option value="Android">Android</option>
            <option value="iOS (iPhone, iPad and iPod Touch)">iOS (iPhone, iPad and iPod Touch)</option>
        </optgroup>
        <optgroup label="Document Markup Languages">
            <option value="HTML">HTML</option>
            <option value="SGML">SGML</option>
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
searchOptions : {
  default      : 'Search', 
  showOptGroups: false     // show option group titles if no options remaining
},     

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