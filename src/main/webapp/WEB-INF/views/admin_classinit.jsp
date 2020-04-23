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
<table border="1">
	<tr>
		<th>강의번호</th><th>강의이름</th><th>강의정보</th><th>인원제한</th><th>강의가격</th><th>카테고리</th>
	</tr>
	<c:forEach var="s" items="${datas}">
	<tr>
	  	<td>${s.class_no }</td>
	  	<td><a href="admin_classdetail?no=${s.class_no }">${s.class_name }</a></td>
	  	<td>${s.class_info }</td>
	  	<td>${s.class_limit }</td>
	  	<td>${s.class_price }</td>
	  	<td>${s.class_category }</td>
	</tr>
	</c:forEach>
</table>
<a href="admin_class_insert">강의 추가</a>
</body>
</html>