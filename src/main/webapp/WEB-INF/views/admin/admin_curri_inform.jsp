<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="admin_curri_insert" method="post">
	
		강의 번호: ${datas.class_no } <input type="hidden" value="${datas.class_no }" name="curri_class_no"><br>
		세션 번호: <input type="text" name="section_no"><br>
		목표 제목: <input type="text" name="goal_title"><br>
		<input type="submit" value="추가"> <input type="button" value="추가 취소" onclick="history.go(-1)">
	</form>
</body>
</html>