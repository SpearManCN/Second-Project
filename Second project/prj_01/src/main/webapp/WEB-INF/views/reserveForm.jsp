<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">





<script>
	function goReserveDetail(){document.goForm.action="/reserveDetail.do"; document.goForm.submit();}
</script>





</head>
<body>
<%@include file="/WEB-INF/views/commonHeader.jsp" %>
<form name="goForm" method="post"></form>

<center>
<table width="1200px">
	<tr>
	<td align="left"><span style="font-size:50px; font-weight:bold;">Reserve</span>
	<tr>
	<td><hr style="height:10px; background-color:#EDD200;">
	<tr>
</table>
</center>


<table align="center" width="1200px">
<tr><td>
<table width="400px">
<tr><td>
<select class="form-select" size="8" aria-label="size 3 select example" width="500px">
  <option selected>영화 선택</option>
  <option value="1">One</option>
  <option value="2">Two</option>
  <option value="3">Three</option>
    <option value="1">One</option>
  <option value="2">Two</option>
  <option value="3">Three</option>
    <option value="1">One</option>
  <option value="2">Two</option>
  <option value="3">Three</option>
    <option value="1">One</option>
  <option value="2">Two</option>
  <option value="3">Three</option>
    <option value="1">One</option>
  <option value="2">Two</option>
  <option value="3">Three</option>
    <option value="1">One</option>
  <option value="2">Two</option>
  <option value="3">Three</option>
    <option value="1">One</option>
  <option value="2">Two</option>
  <option value="3">Three</option>
</select>
</table>

<td>
<table width="400px">
<tr><td>
<select class="form-select" size="8" aria-label="size 3 select example" width="500px">
  <option selected>날짜 선택</option>
  <option value="1">One</option>
  <option value="2">Two</option>
  <option value="3">Three</option>
    <option value="1">One</option>
  <option value="2">Two</option>
  <option value="3">Three</option>
    <option value="1">One</option>
  <option value="2">Two</option>
  <option value="3">Three</option>
  
</select>
</table>

<td>
<table width="400px">
<tr><td>
<select class="form-select" size="8" aria-label="size 3 select example" width="500px">
  <option selected>상영관/시간 선택</option>
  <option value="1">One</option>
  <option value="2">Two</option>
  <option value="3">Three</option>
    <option value="1">One</option>
  <option value="2">Two</option>
  <option value="3">Three</option>
    <option value="1">One</option>
  <option value="2">Two</option>
  <option value="3">Three</option>
    <option value="1">One</option>
  <option value="2">Two</option>
  <option value="3">Three</option>
    <option value="1">One</option>
  <option value="2">Two</option>
  <option value="3">Three</option>
</select>
</table>


</table>

<table width="1200px">
<tr><td>
<div align="right"><button onclick="goReserveDetail();" type="button" class="btn btn-primary btn-lg" style="width:18%; height:60px; background-color:#FF5A5A;">
	<span style="font-size:25px; font-weight:; color:white;">좌석 선택</span></button></div></table>



<%@include file="/WEB-INF/views/commonFooter.jsp" %>
</body>
</html>