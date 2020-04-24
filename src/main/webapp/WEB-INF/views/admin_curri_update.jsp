<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="admin_curri_update" method="post">
		강의 번호: ${datas.curri_class_no } <input type="hidden" value="${datas.curri_class_no }" name="curri_class_no"><br>
		세션번호: ${datas.section_no }<input type="hidden" value="${datas.section_no }" name="section_no"><br>		
		목표 제목: <input type="text" value="${datas.goal_title }" name="goal_title"> <br>
		
		<input type="submit" value="수정">
		<input type="button" value="수정 취소" onclick="history.go(-1)">
	</form>
</body>
</html>