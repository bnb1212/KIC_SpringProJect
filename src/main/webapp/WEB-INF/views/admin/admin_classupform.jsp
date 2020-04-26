<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="admin_class_update" method="post">

강의번호: <input type="hidden" name="class_no" value="${datas.class_no }">${datas.class_no }<br> 

강의이름: <input type="text" name="class_name"  value="${datas.class_name }"><br>

강의정보: <textarea rows="5" cols="15" name="class_info">${datas.class_info }</textarea><br>

인원제한: <input type="text" name="class_limit" value="${datas.class_limit }"><br>

강의가격: <input type="text" name="class_price"  value="${datas.class_price }"><br>

카테고리: <input type="text" name="class_category" value="${datas.class_category }"><br>
<br>

<input type="submit" value="수정">
</form>

</body>
</html>