<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8" errorPage="common/error.jsp"%>
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
<style type="text/css">
#map {
   width: 700px;
   align: center;
   margin-left: auto;
   margin-right: auto;
}
</style>

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
</script>

<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript"
   src="//dapi.kakao.com/v2/maps/sdk.js?appkey=829545152ddea49d6fd9d93b02729a56&libraries=services">
   
</script>


<body>
   <!-- Preloader -->
   <div id="preloader"></div>
   <c:import url="header.jsp" />

   <div class="listing-detail-header mb50">
      <div class="container">
         <h2 class="font300">${employment.recruit_title}</h2>
         <h3>${employment.company }</h3>
         <h5>
            <i class="fa fa-home"></i> &nbsp; ${companyInfo.homepage}

         </h5>
         <p></p>
         <p>시작일: ${employment.startdate} 마감일: ${employment.enddate}</p>
         <p>마감일까지 4일 남았습니다.</p>
         <br>
         <h5>업종 : ${companyInfo.company_type}</h5>
         <br>
         <h5>
            <i class="   fa fa-krw"></i> 매출액 : ${companyInfo.sales} 억(원)
         </h5>
         <br>
         <h5>
            <i class="fa fa-users"></i> 사원수 : ${companyInfo.employees} 명
         </h5>

         <br>
         <h5>대표자명 : ${companyInfo.represent}</h5>
         <br>
         <h5>설립일 : ${companyInfo.establish}</h5>


      </div>


      <div class="col-sm-9"></div>
      <div class="buttons">
         <!-- <i class="fa fa-star text-warning"></i> -->
         <a href="#reviews" class="btn btn-yellow btn-sm">스크랩</a> <a href="#"
            class="btn btn-primary btn-lg">지원하기</a> <a
            class="btn btn-default btn-xl page-scroll" data-toggle="modal"
            title="듀오매칭을 이용하기위해 내 여행정보를 활성화 합니다." href="#aboutModal1">지금 등록!</a>
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
            
            <div id="map" style="width: 600px; height: 350px; align: center;"></div>
            
            <input type="hidden" id="ThisAddress" value="${employment.work_area}" />
            ${employment.work_area}

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
                  이력서를 작성하거나 미리 작성한 이력서를 바로 보내기 가능<br> 열심히 작성해서 이력서를 보내자구
               </p>
               <h5 class="text-center">주의) 허위 및 타인의 정보를 무단으로 도용하면 제재의 원인이 될 수
                  있다고</h5>
               <div class="col-lg-10 col-lg-offset-1 text-center">
                  <form class="contact-form row" action="/travelduo/miinsert"
                     method="post" enctype="multipart/form-data">

                     <div class="text-center col-xs-12 col-sm-6">

                        <div id="imagePreview" class="btn center-block"></div>
                        <br> <input type="submit" data-toggle="modal"
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
                           나가기&nbsp;&nbsp;
                           <ion-icon ios="ios-close" md="md-close"></ion-icon>
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






   <!--footer-->
   <c:import url="footer.jsp" />
   <!-- jQuery-->
   <%--    <script src="<c:url value="resources/js/plugins/all.js" />"></script>
   <script src="<c:url value="resources/js/finder.custom.js" />"></script> --%>
   <!-- <script src="https://unpkg.com/ionicons@4.5.5/dist/ionicons.js"></script> -->
</body>
</html>