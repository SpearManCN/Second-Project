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
	function goMyPageHome(){document.goForm.action="/myPageHome.do";document.goForm.submit(); }
	function goMyPageBook(){document.goForm.action="/myPageBookList.do";document.goForm.submit(); }
	function goMyPageStore(){document.goForm.action="/myPageStoreList.do";document.goForm.submit(); }
	function goMyPageBasket(){document.goForm.action="/myPageBasket.do";document.goForm.submit(); }
	function goPwChange(){document.goForm.action="/myPagePwChange.do";document.goForm.submit(); }
</script>
















</head>
<body>
<%@include file="/WEB-INF/views/commonHeader.jsp" %>
<form name="goForm" method="post"></form>
<center>
<table width="1200px">
	<tr>
	<td align="left"><span style="font-size:50px; font-weight:bold;">My Page</span>
	<tr>
	<td><hr style="height:10px; background-color:#EDD200;">
	<tr>
	<td align="right">
</table>
</center>
<table align="center" width="1200px">
	<tr>
	<td width="220px"><button onclick="goMyPageHome();" type="button" class="btn btn-primary btn-lg" style="width:100%; height:80px; background-color:#FF5A5A;">
	<span style="font-size:30px; ">내 정보</span></button></td>
	
	<td width="220px"><button onclick="goMyPageBook();" type="button" class="btn btn-primary btn-lg" style="width:100%; height:80px; background-color:gray;">
	<span style="font-size:30px; font-weight:;">예매 내역</span></button></td>
	
	<td width="220px"><button onclick="goMyPageStore();" type="button" class="btn btn-primary btn-lg" style="width:100%; height:80px; background-color:gray;">
	<span style="font-size:30px; font-weight:;">내 상품</span></button></td>
	
	<td width="220px"><button onclick="goMyPageBasket();" type="button" class="btn btn-primary btn-lg" style="width:100%; height:80px; background-color:gray;">
	<span style="font-size:30px; font-weight:;">장바구니</span></button></td>
	</tr>
	<tr>
	</tr>

</table>


<table align="center" width="1200px">
 <tr bgcolor="#E1E1E1" height="80px"><td align="center" style="font-size:30px;">Name</td><td align="center" style="font-size:30px;">김창남</td>
</tr>
 <tr bgcolor="#F3F3F3" height="80px"><td align="center" style="font-size:30px;">Email</td><td align="center" style="font-size:30px;">a@naver.com</td>
</tr>
 <tr bgcolor="#E1E1E1" height="80px"><td align="center" style="font-size:30px;">Address</td><td align="center" style="font-size:30px;">경기도 시흥시 하중동</td>
</tr>
 <tr bgcolor="#F3F3F3" height="80px"><td align="center" style="font-size:30px;">Birth</td><td align="center" style="font-size:30px;">19951117</td>
</tr>
 <tr bgcolor="#E1E1E1" height="80px"><td align="center" style="font-size:30px;">Phone</td><td align="center" style="font-size:30px;">01087751056</td>
</tr>
 <tr bgcolor="#F3F3F3" height="80px"><td align="center" style="font-size:30px;">PW</td><td align="center" style="font-size:30px;"><button onclick="goPwChange();" type="button" class="btn btn-primary btn-lg" style="width:30%; height:100%; background-color:gray;">
	<span style="font-size:30px; font-weight:;">Change PW</span></button></td>
</tr>
</table>



<%@include file="/WEB-INF/views/commonFooter.jsp" %>
</body>
</html>