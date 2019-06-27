<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!--d3js CDN-->
<script src="https://d3js.org/d3.v4.min.js"></script>
<!--다운 받아서 포함 시키기-->
<link rel="stylesheet" href="/css/billboard.css">
<script src = "js/billboard.js"></script>

<script src="<c:url value="resources/js/billboard.js" />"></script>
<script src="<c:url value="resources/css/billboard.css" />"></script>


<title>saramout</title>
</head>
<body>

 <head>
    <title>billboard</title>
    <script src="https://d3js.org/d3.v4.min.js"></script>
    <link rel="stylesheet" href="/css/billboard.css">
    <script src = "js/billboard.js"></script>
  </head>
  
  <body>
    <div id="chart"></div>
  </body>
  
  <br><br>
  
  <body>
    <div id="scatter"></div>
  </body>
  
  <br><br>
  
  <body>
    <div id="pie"></div>
  </body>
  
  
  
</body>
<script>
var chart = bb.generate({
    bindto: "#chart",
    data: {
        type: "bar",
        columns: [
            ["동종산업군", 400, 300, 100, 170, 150, 250],
            ["현재기업", 130, 100, 140, 35, 110, 50]
        ]
    }
});

var chart = bb.generate({
    bindto: "#scatter",
    data: {
        type: "scatter",
        columns: [
            ["data1", 400, 300, 100, 170, 150, 250],
            ["data2", 130, 100, 140, 35, 110, 50]
        ]
    }
});


var chart = bb.generate({
    bindto: "#pie",
    data: {
        type: "pie",
        columns: [
            ["남성지원자 비율", 8],
            ["여성지원자 비율", 1]
        ]
    }
});
</script>

</body>
</html>