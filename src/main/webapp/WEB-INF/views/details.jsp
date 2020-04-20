<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="<c:url value="resources/css/bootstrap.css" />"
	rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
	integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
	crossorigin="anonymous"></script>
<script src="resources/js/bootstrap.min.js"></script>
</head>
<body>
상세 소개 페이지 입니다.

<!-- 


<table border="1" style="border-collapse: collapse;">
	<tr><th>클래스번호</th><th>for</th><th>fors_one</th><th>forc_one</th></tr>
	<c:forEach var="i" items="${datas}">
	
	<tr>
		<td>${i.classinfo_no}</td>
	
		<td>${i.classinfo_for}</td>
		<td>${i.classinfo_fors_one}</td>
		<td>${i.classinfo_forc_one}</td>
	
	</tr>
	
	</c:forEach>
</table>

 -->

<br><br>
<!-- 

<table border="1"  style="border-collapse: collapse;">
	<tr><th>클래스번호</th>
	<c:forEach var="i" items="${datas}">

	<tr>
		<td>${i.classinfo_no}</td>
	</tr>
	
	</c:forEach>
	

	<tr><th>for</th>
	<c:forEach var="i" items="${datas}">
	
	<tr>
		<td>${i.classinfo_for}</td>
	</tr>
	
	</c:forEach>
	
		<tr><th>fors_one</th>
	<c:forEach var="i" items="${datas}">
	
	<tr>
		<td>${i.classinfo_fors_one}</td>
	</tr>
	
	</c:forEach>
	
		<tr><th>forc_one</th>
	<c:forEach var="i" items="${datas}">
	
	<tr>
		<td>${i.classinfo_forc_one}</td>
	</tr>
	
	</c:forEach>
	
</table>
 -->


<br><br>
<!--  

<table border="1"  style="border-collapse: collapse;">


	
	<c:forEach var="i" items="${datas}">
	
	<tr>
		<td>${i.classinfo_for}</td>
	</tr>
	
	</c:forEach>
	
	
	
</table>

<br><br>


<table border="1"  style="border-collapse: collapse;">


	<tr><th>fors_one</th>
	<c:forEach var="i" items="${datas}">
	
	<tr>
		<td>${i.classinfo_fors_one}</td>
	</tr>
	
	</c:forEach>
	
	
	
</table>

<br><br>


<table border="1"  style="border-collapse: collapse;">


	<tr><th>forc_one</th>
	<c:forEach var="i" items="${datas}">
	
	<tr>
		<td>${i.classinfo_forc_one}</td>
	</tr>
	
	</c:forEach>
	
	
	
</table>
-->

<div class="container" style="background-color: Yellow">
		<div class="row"align="center">

			<section class="col" >
				<h1>
<table border="1"  style="border-collapse: collapse;">
	<c:forEach var="i" items="${datas}">
	<tr>
		<td>${i.classinfo_for}</td>
	</tr>
	</c:forEach>
</table>
				</h1>
			</section>
		

		</div>
		<div class="row" align="center">
			<section class="col">
			<h3>
				<table  style="border-collapse: collapse;">


	
	<c:forEach var="i" items="${datas}">
	
	<tr>
		<td>---${i.classinfo_fors_one}---</td>
	</tr>
	
	</c:forEach>
	
	
	
</table>
</h3>
			</section>
		</div>
		
			<div class="row" align="center">
			<section class="col">
			<h5>
				<table  style="border-collapse: collapse;">


	
	<c:forEach var="i" items="${datas}">
	
	<tr>
	<br>
		<td>${i.classinfo_forc_one}</td>
	</tr>
	
	</c:forEach>
	
	
	
</table>
</h5>
			</section>
		</div>
	</div>
	
	
	
	<br><br>
	
	
	
	
	<div class="container" style="background-color: green">
		<div class="row"align="center">

			<section class="col" >
				<h1>
<table border="1"  style="border-collapse: collapse;">
	<c:forEach var="i" items="${datas}">
	<tr>
		<td>${i.classinfo_goal}</td>
	</tr>
	</c:forEach>
</table>
				</h1>
			</section>
		

		</div>
		<div class="row" align="center">
			<section class="col">
			<h3>
				<table  style="border-collapse: collapse;" >


	
	<c:forEach var="i" items="${datas}">
	
	<tr>
		<td>---${i.classinfo_goals_one}---</td>
	</tr>
	
	</c:forEach>
	
	
	
</table>
</h3>
			</section>
		</div>
		
			<div class="row" align="center">
			<section class="col">
			<h5>
				<table  style="border-collapse: collapse;">


	
	<c:forEach var="i" items="${datas}">
	
	<tr>
	<br>
		<td>${i.classinfo_goalc_one}</td>
	</tr>
	
	</c:forEach>
	
	
	
</table>
</h5>
			</section>
		</div>
	</div>
	
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
		integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
		crossorigin="anonymous"></script>


</body>
</html>