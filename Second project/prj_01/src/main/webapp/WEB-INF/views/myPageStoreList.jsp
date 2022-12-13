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
	<td width="220px"><button onclick="goMyPageHome();" type="button" class="btn btn-primary btn-lg" style="width:100%; height:80px; background-color:gray;">
	<span style="font-size:30px; ">내 정보</span></button></td>
	
	<td width="220px"><button onclick="goMyPageBook();" type="button" class="btn btn-primary btn-lg" style="width:100%; height:80px; background-color:gray;">
	<span style="font-size:30px; font-weight:;">예매 내역</span></button></td>
	
	<td width="220px"><button onclick="goMyPageStore();" type="button" class="btn btn-primary btn-lg" style="width:100%; height:80px; background-color:#FF5A5A;">
	<span style="font-size:30px; font-weight:;">내 상품</span></button></td>
	
	<td width="220px"><button onclick="goMyPageBasket();" type="button" class="btn btn-primary btn-lg" style="width:100%; height:80px; background-color:gray;">
	<span style="font-size:30px; font-weight:;">장바구니</span></button></td>
	</tr>
	<tr>
	</tr>

</table>


<table align="center" width="1200px">
<tr style="background-color:#FFF2E6;">
<td width="20%" align="center" style="font-size:30px;">구매일</td>
<td width="25%" align="center" style="font-size:30px;">상품명</td>
<td width="15%" align="center" style="font-size:30px;">가격</td>
<td width="40%" align="center" style="font-size:30px;">쿠폰번호</td>

</table>



<%@include file="/WEB-INF/views/commonFooter.jsp" %>
</body>
</html>