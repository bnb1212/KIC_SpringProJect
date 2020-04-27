<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="admin_class_insert" method="post">
	강의 제목: <input type="text" name="class_name"><br><br>
	
	강의 정보: <textarea name="class_info"></textarea><br><br>
	
	인원 제한: <input type="text" name="class_limit"><br><br>
	
	강의 가격: <input type="text" name="class_price"><br><br>
	
	카테고리: <input type="text" name="class_category"><br><br>
	
	<input type="submit" value="추가">
</form>

</body>
</html>