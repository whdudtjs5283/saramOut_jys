<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사람아웃</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description"
   content="This is checkbox & radio, easy way to add checkbox-radio to your site or blog, all you need to do is add css class into your html tag, checkbox-radio do not used jQuery or javascript, It's used CSS3">
<meta name="keywords"
   content="HTML, CSS, XML, JavaScript, CSS3, ES6, Npm, tuds, Crazychicken, checkbox_radio, checkbox_radio_bootstrap, checkbox_radio_font, checkbox_radio_img_sprite">
<meta name="author" content="Tuds - Crazychicken">
<meta name="robots" content="noodp,index,follow" />
<meta name='revisit-after' content='1 days' />
<meta http-equiv="content-language" content="en" />
<meta name="google-site-verification"
   content="Dy_gqC8NYYUMm9ftEbORwOG3DABtu2x_bk8EJf5K5NE" />

<!-- <link rel="icon shortcut" type="image/png" sizes="16x16"
   href="http://t-scroll.com/theme/images/favicon.png"> -->
<meta
   content='http://tuds.ninja/checkbox-radio/images/ms-icon-310x310.png'
   property='og:image' />
<link href="https://fonts.googleapis.com/css?family=Open+Sans:400,600"
   rel="stylesheet">
<script type="text/javascript"
   src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.9.1/jquery.js"></script>

<link rel="stylesheet" href="resources/css/demo.css">

<link rel="stylesheet" type="text/css" href="resources/css/bundle.css">
<link rel="stylesheet" type="text/css" href="resources/css/style.css">

<script>
   (function(i, s, o, g, r, a, m) {
      i['GoogleAnalyticsObject'] = r;
      i[r] = i[r] || function() {
         (i[r].q = i[r].q || []).push(arguments)
      }, i[r].l = 1 * new Date();
      a = s.createElement(o), m = s.getElementsByTagName(o)[0];
      a.async = 1;
      a.src = g;
      m.parentNode.insertBefore(a, m)
   })(window, document, 'script',
         'https://www.google-analytics.com/analytics.js', 'ga');

   ga('create', 'UA-46711522-2', 'auto');
   ga('send', 'pageview');

   $(document).ready(function() {
      $('.btn-toggle').on('click', function() {
         $(this).next().slideToggle('slow');
      })
   });
   
   function ap() {
	   document.getElementById('form').submit();
	    /* javascript:self.close(); */
	}

</script>
<link rel="stylesheet" href="resources/css/checkbox_radio.css">
</head>
<body>
   
      <div class="container" style="height: auto; width: 100%; border:5px solid #4267b2;" >
                <div class="row">
                    <div class="col-md-4 mb30">
                    <br>
                    <br>

   <h3>이력서 지원하기</h3>
   <hr>
   <br>
       <table>
         <form id="form" action="apply.do" method="post">
            <input type="hidden" name="apply_bid" value="${ employment.bid }">
            <input type="hidden" name="apply_employment_no" value="${ employment.recruit_num }">
            <input type="hidden" name="apply_company" value="회사명">
            <input type="hidden" name="apply_open_yn" value="0">
            <input type="hidden" name="apply_date" value="${ resume.resume_apply_date }">
            <input type="hidden" name="apply_userid" value="${ resume.resume_userid }">
            <input type="hidden" name="apply_resume_title" value="${ resume.resume_title }">
            <input type="hidden" name="apply_username" value="${ resume.resume_username }">
               
   <c:forEach items="${ resumeList }" var="resume">
      <label class="radio"> <input type="radio" name="apply_resume_no" 
         value="${ resume.resume_no }"> <i class="icon-radio"></i> &nbsp;  &nbsp; ${ resume.resume_apply_date } &nbsp;  &nbsp;  &nbsp;
         <a href="moveDetailResume.do?resume_no=${ resume.resume_no}">${resume.resume_title}</a>
      </label>
      <hr>

   </c:forEach>
   </form>
   </table>
    &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;<button class="btn btn-primary btn-lg" onclick="ap();">지원하기</button>
   </div>
   </div>
   </div>
   


</body>
</html>