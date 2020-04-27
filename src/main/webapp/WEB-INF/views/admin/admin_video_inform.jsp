<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="admin_video_insert" method="post">
영상주소 : <input type="text" name="video_url"><br>
강의번호: ${datas.class_no } <input type="hidden" value="${datas.class_no }" name="video_class_no"><br>
섹션번호 : <input type="text" name="section_no"><br>
오더넘버 : <input type="text" name="order_no"><br>
영상제목 : <input type="text" name="video_title"><br>
영상정보 : <input type="text" name="video_info"><br>
<input type="submit" value="추가">

</form>
</body>
</html>