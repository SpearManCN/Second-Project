<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">

</head>
<body>
<%@include file="/WEB-INF/views/commonHeader.jsp" %>

<center>
<table width="1200px">
	<tr>
	<td align="left"><span style="font-size:50px; font-weight:bold;">Reserve</span>
	<tr>
	<td><hr style="height:10px; background-color:#EDD200;">
	<tr>
</table>
</center>

<table align="center" width="800px">
<tr align="right"><td><sapn style="background-color:red">&nbsp;&nbsp;&nbsp;</sapn><span>예약가능</span>
<sapn style="background-color:black">&nbsp;&nbsp;&nbsp;</sapn><span>예약불가</span>

</table>
<table align="center" width="800px" style="border:1px solid black; background-color:#EAEAEA;">
	<tr height="20px">
	<td width="8%"></td>
	<td width="7%"></td>
	<td width="7%"></td>
	<td width="8%"></td>
	<td width="8%"></td>
	<td width="8%"></td>
	<td width="8%"></td>
	<td width="8%"></td>
	<td width="8%"></td>
	<td width="8%"></td>
	<td width="7%"></td>
	<td width="7%"></td>
	<td width="8%"></td>
	</tr>
	
	
	
		<tr height="120px" >
	<td></td>
	<td></td>
	<td></td>
	<td></td>
	<td></td>
	<td></td>
	
	<td colspan="5" style="font-size:20px">SCREEN</td>

	</tr>
		<tr height="60px" style="color:white; font-weight:bold; font-size:20px" align="center"> 
	<td></td>
	<td style="background-color:red;" >1</td>
	<td style="background-color:red;">2</td>
	<td></td>
	<td style="background-color:red;">3</td>
	<td style="background-color:red;">4</td>
	<td style="background-color:red;">5</td>
	<td style="background-color:red;">6</td>
	<td style="background-color:red;">7</td>
	<td></td>
	<td style="background-color:red;">8</td>
	<td style="background-color:red;">9</td>
	<td></td>
	</tr>
		<tr height="60px" style="color:white; font-weight:bold; font-size:20px" align="center">
	<td></td>
	<td style="background-color:red;">10</td>
	<td style="background-color:red;">11</td>
	<td></td>
	<td style="background-color:red;">12</td>
	<td style="background-color:red;">13</td>
	<td style="background-color:red;">14</td>
	<td style="background-color:red;">15</td>
	<td style="background-color:red;">16</td>
	<td></td>
	<td style="background-color:red;">17</td>
	<td style="background-color:red;">18</td>
	<td></td>
	</tr>
		<tr height="60px" style="color:white; font-weight:bold; font-size:20px" align="center">
	<td></td>
	<td style="background-color:red;">19</td>
	<td style="background-color:red;">20</td>
	<td></td>
	<td style="background-color:red;">21</td>
	<td style="background-color:red;">22</td>
	<td style="background-color:black;">23</td>
	<td style="background-color:red;">24</td>
	<td style="background-color:red;">25</td>
	<td></td>
	<td></td>
	<td></td>
	<td></td>
	</tr>
		<tr height="60px" style="color:white; font-weight:bold; font-size:20px" align="center">
	<td></td>
	<td></td>
	<td></td>
	<td></td>
	<td></td>
	<td></td>
	<td></td>
	<td></td>
	<td></td>
	<td></td>
	<td></td>
	<td></td>
	<td></td>
	</tr>
		
	


</table>

<table width="1200px">
<tr><td>
<div align="right">
<select class="form-select" aria-label="Default select example" style="width:200px;background-color:#FFFFE9">
  <option selected>좌석 선택</option>
  <option value="1">One</option>
  <option value="2">Two</option>
  <option value="3">Three</option>
</select>

<button onclick="goReserveDetail();" type="button" class="btn btn-primary btn-lg" style="width:18%; height:60px; background-color:#FF5A5A;">
	<span style="font-size:25px; font-weight:; color:white;">예매 완료</span></button></div></table>



<%@include file="/WEB-INF/views/commonFooter.jsp" %>
</body>
</html>