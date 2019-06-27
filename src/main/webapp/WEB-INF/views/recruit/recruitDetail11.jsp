<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">




<title>Insert title here</title>
</head>

 <style type="text/css">
 
#news{
	width: 700px;
  align: center;
  margin-left: auto;
  margin-right: auto;
}

#navFul{
width: 700px;
  align: center;
  margin-left: auto;
  margin-right: auto;
}

#first{
width: 700px;
  align: center;
  margin-left: auto;
  margin-right: auto;
}

#map{
width: 700px;
  align: center;
  margin-left: auto;
  margin-right: auto;
}
	
 </style>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js">

</script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=829545152ddea49d6fd9d93b02729a56&libraries=services">

</script>

<script type="text/javascript">
    
    function openWin(){
    	var url ="${newsList.get(0).getLink()}";
    	window.open(url, "", "width=900, height=700, left=600");
    	
    }
</script>



<body>


<c:import url="../common/header.jsp" />

<br><br><br><br><br><br><br><br>


<div align="center"><Strong><font size="5">${recruit.cmpnynm}</Strong></font></div>


<br><br>




<!--  네비 시작부분 -->
<div id="navFul">
 
    <nav class="navbar navbar-default" id="NavTab">
        <div id="navbar" >
          <ul class="nav navbar-nav nav-tabs" >
              <li class="active"><a href="#first" > 모집정보 </a></li>
              <li><a href="#second" >기업정보</a></li>
              <li><a href="#third" >근로조건</a></li>
              
          </ul>
        </div>
	</nav>
	
	
<div class="tab-content">
  <div class="tab-pane fade active in"  id="first">
  
 
    <p> 
     <h>모집정보</h> <br><br><br>
<span><strong>모집</strong></span>    &nbsp;&nbsp;&nbsp; ${recruit.jobcodenm} <br>
<span><strong>근무시간</strong></span>   &nbsp;&nbsp;&nbsp; ${recruit.worktimenm} <br>
<span style="color:#6600ff"><strong>학력</strong>   &nbsp;&nbsp;&nbsp; ${recruit.acdmcrcmmncodese}</span> <br>
<span><strong>전형장소</strong></span> &nbsp;&nbsp;&nbsp;&nbsp;${recruit.rceptmthnm} <br>
  <span style="color:#6600ff"><strong>경력 조건 </strong> &nbsp;&nbsp;&nbsp;&nbsp;  ${recruit.careercndnm}</span>
      
       
    </p>
    <br>
   

    
  </div>
  <div class="tab-pane fade" id="second">
    <p>
    
    <h>기업정보</h> <br><br>
    기업명칭 : ${recruit.cmpnynm}<br>
      근무 예정지 주소 :  ${recruit.workpararbassadrescn}<br>
      사업 요약내용 : ${recruit.bsnssumrycn}<br>
       기업주소 : ${recruit.bassadrescn}<br>
       근무형태 : &nbsp;&nbsp;&nbsp;&nbsp;${recruit.worktmnm}<br>
       
      
    </p>
  </div>
  <div class="tab-pane fade" id="third">
  
    <p>
     <h>근로조건</h> <br><br>
    4대보험 : ${recruit.jofeinsrsbscrbnm}<br>
   	급여조건 : ${recruit.hopewage}<br>
   	 고용형태 : ${recruit.emplymstlecmmnmm}<br>
   	  직무 내용 : ${recruit.dtycn}<br>
   
    </p>
  </div>
</div>


    </div>
<!--  네비 끝 -->



<br><br><br>

 <!-- 지도 api 의 주소를 설정하는 부분과, 남은 시간 초를 설정하는 부분 -->
 
 <!-- 다음지도에 들어갈 주소 -->
	 <input type="hidden" id="ThisAddress" value="${recruit.bassadrescn}"/>
	 
	 <br>
	 
	 
	 
	 <input type="hidden" id="startTime" value="${recruit.starttime}"/>
	  <input type="hidden" id="endTime" value="${recruit.endtime}"/>
															
	 
	 
	  <!-- 지도 api 의 주소를 설정하는 부분과, 남은 시간 초를 설정하는 부분 -->




<br><br>


<!--  새로 작성중인 영역 -->

<table border="1" bordercolor="black" width ="700" height="300" align = "center" >
<tr>
	<td>
	 1줄
	 
	  <div id="map" style="width: 600px; height: 350px; align: center; " ></div>

<br><br>

	</td>
</tr>
<tr>


	<td>
	2줄 <br><br>
	직무 내용 : ${recruit.dtycn}<br> <br>
	
	담당 상담사 전화번호 :  ${recruit.mngrphonno}<br>
	공고마감 :   ${recruit.rceptclosnm}<br><br><br>
	</td>
</tr>
</table>


<!-- 이 회사와 관련된 네이버 뉴스 -->






<br><br>


<!-- 이 회사와 관련된 네이버 뉴스 -->

<br><br>








	<c:forEach items="${newsList}" var="News" varStatus="status">
<div class="post-content" id="news">
						<div class="post-header clearfix">
							<a href="#"><img width="80" src="resources/images/av1.jpg" alt=""
								class="img-responsive img-circle"></a>
							<div class="overflow-hidden">
							
								<h3>
									<a href="#">${News.title}</a>
								</h3>
								<ul class="list-inline">
								
							
							<li><a href='javascript:void(0);' onclick="openWin();"><i class="fa fa-user"></i>${News.title}</a></li>
									
				<li><a href="#"><i class="fa fa-calendar"></i> 24 July 2017</a></li>
				<li><a href="${News.originallink}"><i class="fa fa-reply-all"></i> 원문링크 </a></li>
				<li>${News.description}</li>
								</ul>
							</div>
						</div>	
	</c:forEach>
	
	<br><br>
	
	<!--  관련뉴스  시작 -->

<br><br><br><br>

		<div class="container text-center bg-grey">
			<div id="myCarousel" class="carousel slide text-center"	data-ride="carousel">

				<ol class="carousel-indicators">
					<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
					<li data-target="#myCarousel" data-slide-to="1"></li>
					<li data-target="#myCarousel" data-slide-to="2"></li>
				</ol>

				<div class="carousel-inner" role="listbox">
					<div class="item active">
						<div class="item">
							<p class="p-01 godo-font">1번기사</p>
							
							${newsList.get(0).setDescription(description)} <br>
						
						
						<h4></h4>
						</div>
					</div>
					<div class="item">
						<p class="p-01 godo-font">2번기사</p>
						
							${newsList.get(1).setDescription(description)} <br>
						
						
						
						<h4></h4>
					</div>
					<div class="item">
						<p class="p-01 godo-font">3번기사</p>
						
							${newsList.get(2).setDescription(description)} <br>
						
						
						
						<h4></h4>
					</div>
				</div>

				<a class="left carousel-control" href="#myCarousel" role="button"
					data-slide="prev"> <span
					class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
					<span class="sr-only">Previous</span>
				</a> <a class="right carousel-control" href="#myCarousel" role="button"
					data-slide="next"> <span
					class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
					<span class="sr-only">Next</span>
				</a>
			</div>
		</div>
		<!--  관련뉴스  끝 -->
	
	
	
	
	<br><br>
	
	이 채용공고와 유사한 채용공고
	
<br><br>


<!-- 공고 타이머 관련 -->


	<div id="Timer"></div>



</body>


<script type="text/javascript">


//지도 api
	
	var ps = new daum.maps.services.Places();
	//마커를 클릭하면 장소명을 표출할 인포윈도우 입니다
	var infowindow = new daum.maps.InfoWindow({zIndex:1});
	
	var container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스
	var options = { //지도를 생성할 때 필요한 기본 옵션
		center: new daum.maps.LatLng(33.450701, 126.570667), //지도의 중심좌표.
		level: 3 //지도의 레벨(확대, 축소 정도)
	};	
	var map = new daum.maps.Map(container, options); //지도 생성 및 객체 리턴

	function searchLocation(){				
		// 장소 검색 객체를 생성합니다
		var loc = $("#searchLoc").val();
		ps.keywordSearch(loc, placesSearchCB); 
	}
	
	// 키워드 검색 완료 시 호출되는 콜백함수 입니다
	function placesSearchCB (data, status, pagination) {
		if (status === daum.maps.services.Status.OK) {

	        // 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해
	        // LatLngBounds 객체에 좌표를 추가합니다
	        var bounds = new daum.maps.LatLngBounds();

	        for (var i=0; i<data.length; i++) {
	            displayMarker(data[i]);    
	            bounds.extend(new daum.maps.LatLng(data[i].y, data[i].x));
	        }       

	        // 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다
	        map.setBounds(bounds);
	    } 
	}

	// 지도에 마커를 표시하는 함수입니다
	function displayMarker(place) {
	    // 마커를 생성하고 지도에 표시합니다
	    var marker = new daum.maps.Marker({
	        map: map,
	        position: new daum.maps.LatLng(place.y, place.x) 
	    });
	    // 마커에 클릭이벤트를 등록합니다
	    daum.maps.event.addListener(marker, 'click', function() {
	        // 마커를 클릭하면 장소명이 인포윈도우에 표출됩니다
	        infowindow.setContent('<div style="padding:5px;font-size:12px;">' + place.place_name + '</div>');
	        infowindow.open(map, marker);
	    });
	}
	
	
	
	var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = {
        center: new daum.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };  

// 지도를 생성합니다    
var map = new daum.maps.Map(mapContainer, mapOption); 

// 주소-좌표 변환 객체를 생성합니다
var geocoder = new daum.maps.services.Geocoder();

//지도 확대 축소를 제어할 수 있는  줌 컨트롤을 생성합니다
var zoomControl = new daum.maps.ZoomControl();
map.addControl(zoomControl, daum.maps.ControlPosition.RIGHT);







var ThisAddress = document.getElementById("ThisAddress").value

// 주소로 좌표를 검색합니다
geocoder.addressSearch(ThisAddress, function(result, status) {

    // 정상적으로 검색이 완료됐으면 
     if (status === daum.maps.services.Status.OK) {

        var coords = new daum.maps.LatLng(result[0].y, result[0].x);

        // 결과값으로 받은 위치를 마커로 표시합니다
        var marker = new daum.maps.Marker({
            map: map,
            position: coords
        });

        // 인포윈도우로 장소에 대한 설명을 표시합니다
        var infowindow = new daum.maps.InfoWindow({
            content: '<div style="width:150px;text-align:center;padding:6px 0;"> 회사 위치 </div>'
        });
        infowindow.open(map, marker);

        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
        map.setCenter(coords);
    } 
});    


		//공고 타이머 관련

	var SetTime = "${recruit.endtime}";		// 최초 설정 시간(기본 : 초)
	
	

		function msg_time() {	// 1초씩 카운트

		
		
			//남은 시간 계산
			m = Math.floor(SetTime / 60) + "분 " + (SetTime % 60) + "초";	
			var msg = "현재 공고 마감까지 남은 시간은 <font color='red'>" + m + "</font> 입니다.";
			document.all.Timer.innerHTML = msg;		// div 영역에 보여줌 
			SetTime--;					// 1초씩 감소

			if (SetTime < 0) {			// 시간이 종료 되었으면..
				clearInterval(tid);		// 타이머 해제
				alert("종료");

			}
		}

		window.onload = function TimerStart(){ tid=setInterval('msg_time()',1000) };


		$(function(){
		    $('ul.nav-tabs a').click(function (e) {
		      e.preventDefault()
		      $(this).tab('show')
		    })
		})



	
</script>




</html>