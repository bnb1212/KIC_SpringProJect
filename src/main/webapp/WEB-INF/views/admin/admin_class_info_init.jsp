<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="admin_class_info_insert" method="post">
	
	<input type="hidden" value="FOR WHO" name="classinfo_for">
	강의설명1: <textarea rows="" cols="" name="classinfo_fors_one"></textarea><br><br>
	강의설명2: <textarea rows="" cols="" name="classinfo_forc_one"></textarea><br><br>
	강의설명3: <textarea rows="" cols="" name="classinfo_fors_two"></textarea><br><br>
	강의설명4: <textarea rows="" cols="" name="classinfo_forc_two"></textarea><br><br>
	강의설명5: <textarea rows="" cols="" name="classinfo_forc_three"></textarea><br><br>
	강의설명6: <textarea rows="" cols="" name="classinfo_fors_three"></textarea><br><br>
	<hr>
	<input type="hidden" value="GOAL" name="classinfo_goal">
	강의목표1: <textarea rows="" cols="" name="classinfo_goals_one"></textarea><br><br>
	강의목표2: <textarea rows="" cols="" name="classinfo_goalc_one"></textarea><br><br>
	강의목표3: <textarea rows="" cols="" name="classinfo_goals_two"></textarea><br><br>
	강의목표4: <textarea rows="" cols="" name="classinfo_goalc_two"></textarea><br><br>
	<hr>
	강의 부설명<input type="text" name="classinfo_subtitle_three"><br><br>
	강의부 목표: <textarea rows="" cols="" name="classinfo_content_three"></textarea><br><br>
	강의 코드: ${datas.class_no }<input type="hidden" value="${datas.class_no }" name="classinfo_class_no"><br><br>
	
	<input type="submit" value="추가">
	
</form>

</body>
</html>