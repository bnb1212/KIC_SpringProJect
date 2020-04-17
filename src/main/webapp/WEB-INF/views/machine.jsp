<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>머신러닝</h2>
<c:forEach var="c" items="${datas }">
${c.class_name }
</c:forEach>


<table border="1" width ="150" style="border-collapse: collapse;">
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



<table border="1" width ="150" style="border-collapse: collapse;">
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


<table border="1" style="border-collapse: collapse;">
	<tr><th>클래스이름</th><th>클래스정보</th><th>클래스가격</th><th>카테고리</th></tr>
	<c:forEach var="i" items="${datas}">
	<c:if test="${i.class_name eq 'TensorFlow'}">
	<tr>
		<td><a href="detail?classinfo_class_no=${i.class_no}">${i.class_name}</a></td>
		<td>${i.class_info}</td>
		<td>${i.class_price}</td>
		<td>${i.class_category}</td>
	</tr>
	</c:if>
	
	</c:forEach>
	
</table>


<br>연습테이블<br><br>

<div style="border: 1px; float: left; width: 33%;">

<table border="1"  width="200" style="border-collapse: collapse;">
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

</div>
<div style="border: 1px; float: left; width: 33%;">

<table border="1" width="200" style="border-collapse: collapse;">
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
</div>
<div style="border: 1px solid blue; float: left; width: 33%;">
세번째 영역
</div>




</body>
</html>