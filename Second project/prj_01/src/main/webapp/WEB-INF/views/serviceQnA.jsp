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
	function goServiceForm(){document.goForm.action="/serviceForm.do"; document.goForm.submit();}
	function goQnA(){document.goForm.action="/serviceQnA.do"; document.goForm.submit();}
	function goQnAList(){document.goForm.action="/serviceQnAList.do"; document.goForm.submit();}

</script>



</head>
<body>
<%@include file="/WEB-INF/views/commonHeader.jsp" %>
<form name="goForm" method="post"></form>



<center>
<table width="1200px">
	<tr>
	<td align="left"><span style="font-size:50px; font-weight:bold;">Customer Service</span>
	<tr>
	<td><hr style="height:10px; background-color:#EDD200;">
	<tr>
</table>
</center>

<table align="center" width="800px">
	<tr>
	<td width="220px"><button onclick="goServiceForm();" type="button" class="btn btn-primary btn-lg" style="width:100%; height:80px; background-color:gray;">
	<span style="font-size:30px; ">자주묻는 질문</span></button></td>
	
	<td width="220px"><button onclick="goQnA();" type="button" class="btn btn-primary btn-lg" style="width:100%; height:80px; background-color:#FF5A5A;">
	<span style="font-size:30px; font-weight:;">1:1문의하기</span></button></td>
	
	<td width="220px"><button onclick="goQnAList();" type="button" class="btn btn-primary btn-lg" style="width:100%; height:80px; background-color:gray;">
	<span style="font-size:30px; font-weight:;">내 문의내역</span></button></td>
	
	</tr>
	<tr>
	</tr>

</table>

<table align="center" width="500px" >
<tr align="center">
<td width="10%" height="50px"></td>


</table>
<div height="200px"></div>
<table align="center" width="800px" height="500px"style="background-color:#F6F6F6;">
	<tr align="center" height="15%"><td>제목</td><td><input type="text" style="width:90%;"></td>
	</tr>
	<tr align="center" height="85%"><td>내용</td><td><textarea style="width:90%; height:90%"></textarea></td></tr>


</table>
<br>
<div align="center">
	<button onclick="alert('작성완료!');" type="button" class="btn btn-primary btn-lg" style="height:45px;">
	<span style="font-size:; ">작성완료</span></button>
</div>





















<%@include file="/WEB-INF/views/commonFooter.jsp" %>
</body>
</html>