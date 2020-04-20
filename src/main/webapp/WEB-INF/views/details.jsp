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
상세 소개 페이지 입니다.

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
</body>
</html>