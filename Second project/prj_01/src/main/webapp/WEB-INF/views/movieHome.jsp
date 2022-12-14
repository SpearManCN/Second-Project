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
function goDetail(movieNo){
	$("[name=movieNo]").val(movieNo);
	
	document.goForm.action="/movieDetail.do";
	document.goForm.submit();
}
function goReserve(movieNo){
	$("[name=movieNo]").val(movieNo);
	document.goForm.action="/reserveForm.do";
	document.goForm.submit();
}



</script>





</head>
<body>
<%@include file="/WEB-INF/views/commonHeader.jsp" %>

<form name="goForm" method="post"><input type="hidden" name="movieNo"></form>









<center>
<table width="1200px">
	<tr>
	<td align="left"><span style="font-size:50px; font-weight:bold;">Movie Chart</span>
	<tr>
	<td><hr style="height:10px; background-color:#EDD200;">
	<tr>
	<td align="right">
	<!-- 
	<select>
	<option value="0">인기순</option>
	<option value="1">평점순</option>
	<option value="2">개봉순</option>
	</select> -->
</table>
</center>

<table align="center" width="1200px">
<tr><td>
<div class="row" align="center">

<c:forEach var="movie" items="${requestScope.movieInfo}" varStatus="loopTagStatus">
	<div class="col">
	<div class="card" style="width: 18rem;">
  <img src="resources/img/mainMovie${movie.NO}.jpg" class="card-img-top" width="100px" height="300px" style="cursor:pointer" onclick="goDetail(${movie.NO});">
  <div class="card-body">
  <div style="height:70px;">
    <h5 class="card-title">${movie.NAME}</h5></div>
    <p class="card-text">예매율 : ${movie.RATE }%  평점 : ${movie.SCORE }/10  <br>개봉일 : ${movie.OPENDATE}</p>
    <input tpye="button" onclick="goReserve(${movie.NO});" class="btn btn-primary" style="width:120px" value="예매하기">
  </div>
</div>
</div>
</c:forEach>




</div>

</table>


<%@include file="/WEB-INF/views/commonFooter.jsp" %>
</body>
</html>