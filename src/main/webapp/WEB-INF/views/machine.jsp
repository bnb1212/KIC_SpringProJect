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
	<header class="container index-header" style="white-space: nowrap;">
		<section class="row">
			<div class="col-sm pad-horizontal">
				<div class="gnb">
					<a class='logo' href="index.jsp"
						style="display: inline-block; padding: 0 .5rem 8px;"> 로고 </a>
					<button type="button" class="btn btn-primary" style="float: right">menu</button>
				</div>
			</div>
		</section>
	</header>
<h2 align="center">머신러닝</h2>


	<div class="container" style="background-color: #D7FFF1">
		<div class="row" >

			<section class="col">
			<h3>
				<table border="1"  width= "250"  style="border-collapse: collapse;">
	<tr><th>클래스이름</th>
	<c:forEach var="i" items="${datas}">
	<c:if test="${i.class_name eq '머신러닝심화'}">
	<tr>
		<td><a href="detail?classinfo_class_no=${i.class_no}">${i.class_name}</a></td>
	</tr>
	</c:if>
	</c:forEach>
	
	
	<tr><th>클래스정보</th>
	<c:forEach var="i" items="${datas}">
	<c:if test="${i.class_name eq '머신러닝심화'}">
	<tr>
		<td>${i.class_info}</td>
	</tr>
	</c:if>
	</c:forEach>
	
		<tr><th>클래스가격</th>
	<c:forEach var="i" items="${datas}">
	<c:if test="${i.class_name eq '머신러닝심화'}">
	<tr>
		<td>${i.class_price}</td>
	</tr>
	</c:if>
	</c:forEach>
	
		<tr><th>카테고리</th>
	<c:forEach var="i" items="${datas}">
	<c:if test="${i.class_name eq '머신러닝심화'}">
	<tr>
		<td>${i.class_category}</td>
	</tr>
	</c:if>
	</c:forEach>
	
</table>
</h3>
			</section>
			<section class="col">
				<h3>
				
				<table border="1"  width= "250" style="border-collapse: collapse;">
	<tr><th>클래스이름</th>
	<c:forEach var="i" items="${datas}">
	<c:if test="${i.class_name eq 'TensorFlow'}">
	<tr>
		<td><a href="detail?classinfo_class_no=${i.class_no}">${i.class_name}</a></td>
	</tr>
	</c:if>
	</c:forEach>
	
	
	<tr><th>클래스정보</th>
	<c:forEach var="i" items="${datas}">
	<c:if test="${i.class_name eq 'TensorFlow'}">
	<tr>
		<td>${i.class_info}</td>
	</tr>
	</c:if>
	</c:forEach>
	
		<tr><th>클래스가격</th>
	<c:forEach var="i" items="${datas}">
	<c:if test="${i.class_name eq 'TensorFlow'}">
	<tr>
		<td>${i.class_price}</td>
	</tr>
	</c:if>
	</c:forEach>
	
		<tr><th>카테고리</th>
	<c:forEach var="i" items="${datas}">
	<c:if test="${i.class_name eq 'TensorFlow'}">
	<tr>
		<td>${i.class_category}</td>
	</tr>
	</c:if>
	</c:forEach>
	
</table>
				
				</h3>
			</section>

			<section class="col">
				<h3>
					
				<table border="1" width="250" style="border-collapse: collapse;">
	<tr><th>클래스이름</th>
	<c:forEach var="i" items="${datas}">
	<c:if test="${i.class_name eq 'TensorFlow'}">
	<tr>
		<td><a href="detail?classinfo_class_no=${i.class_no}">${i.class_name}</a></td>
	</tr>
	</c:if>
	</c:forEach>
	
	
	<tr><th>클래스정보</th>
	<c:forEach var="i" items="${datas}">
	<c:if test="${i.class_name eq 'TensorFlow'}">
	<tr>
		<td>${i.class_info}</td>
	</tr>
	</c:if>
	</c:forEach>
	
		<tr><th>클래스가격</th>
	<c:forEach var="i" items="${datas}">
	<c:if test="${i.class_name eq 'TensorFlow'}">
	<tr>
		<td>${i.class_price}</td>
	</tr>
	</c:if>
	</c:forEach>
	
		<tr><th>카테고리</th>
	<c:forEach var="i" items="${datas}">
	<c:if test="${i.class_name eq 'TensorFlow'}">
	<tr>
		<td>${i.class_category}</td>
	</tr>
	</c:if>
	</c:forEach>
	
</table>
				</h3>
			</section>


		</div>
		<div class="row">
			<section class="col">
			<h1><a href="machine">머신러닝</a></h1>

			</section>
			<section class="col">
			<h1>
			<a href="design">디자인</a><br>
			</h1>
			</section>
			
			<section class="col">
			<h1>
				<a href="english">영어</a><br>
			</h1>
			</section>
		</div>
	</div>




	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
		integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
		crossorigin="anonymous"></script>

</body>
</html>