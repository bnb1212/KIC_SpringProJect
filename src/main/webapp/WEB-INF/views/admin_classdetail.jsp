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
<table border="1">
	<tr>
		<th>강의번호</th><th>강의이름</th><th>강의정보</th><th>인원제한</th><th>강의가격</th><th>카테고리</th>
	</tr>
		<tr>
			<td>${datas.class_no}</td>
			<td>${datas.class_name}</td>
			<td>${datas.class_info}</td>
			<td>${datas.class_limit}</td>
			<td>${datas.class_price}</td>	
			<td>${datas.class_category}</td>
		</tr>
</table>
<a href="admin_class_update?no=${datas.class_no}">강의 수정</a> <a href="admin_class_delete?no=${datas.class_no}">강의 삭제</a>
<br>
<br>
<table border="1">
	<tr>
		<th>쓰바...</th><th>쓰바...</th><th>쓰바...</th>
	</tr>
	<tr>
		<td>${datas.classinfo_for}</td>
		<td>${datas.classinfo_fors_one}</td>
		<td>${datas.classinfo_forc_one}</td>
		</tr>
		<tr>
		<th>쓰바...</th><th>쓰바...</th><th>쓰바...</th>
		</tr>
		<tr>
		<td>${datas.classinfo_fors_two}</td>
		<td>${datas.classinfo_forc_two}</td>
		<td>${datas.classinfo_fors_three}</td>
		</tr>
		<tr>
		<th colspan="3">쓰바...</th>
		</tr>
		<tr>
		<td colspan="3">${datas.classinfo_forc_three}</td>
		</tr>
		</table>
		<br>
<table border="1">
		<tr>
		<th>쓰바...</th><th>쓰바...</th><th>쓰바...</th>
		</tr>
		<tr>
		<td>${datas.classinfo_goal}</td>
		<td>${datas.classinfo_goals_one}</td>
		<td>${datas.classinfo_goalc_one}</td>
		</tr>
		<tr>
		<th>쓰바...</th><th>쓰바...</th><th>쓰바...</th>
		</tr>
		<tr>
		<td>${datas.classinfo_goals_two}</td>
		<td>${datas.classinfo_goalc_two}</td>
		<td>${datas.classinfo_subtitle_three}</td>
		</tr>
		<tr>
		<th colspan="3">쓰바...</th>
		</tr>
		<tr>
		<td colspan="3">${datas.classinfo_content_three}</td>
		</tr>
</table>
<br>
<a href="admin_class_insert?no=${datas.class_no}">쓰바... 추가</a> <a href="admin_class_update?no=${datas.class_no}">쓰바...수정</a> <a href="admin_class_delete?no=${datas.class_no}">쓰바... 삭제</a>

</body>
</html>