<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="admin_video_update" method="post">

영상번호: ${datas.video_no } <input type="hidden" value="${datas.video_no }" name="video_no"><br>
영상주소 : <input type="text" name="video_url" value="${datas.video_url }"><br>
강의번호: ${datas.video_class_no } <input type="hidden" value="${datas.video_class_no }" name="video_class_no"><br>
섹션번호 : <input type="text" name="section_no" value="${datas.section_no }"><br>
정렬순서 : <input type="text" name="order_no" value="${datas.order_no }"><br>
등록시간 :  ${datas.upload_date }<input type="hidden" name="upload_date"><br>
영상제목 : <input type="text" name="video_title" value="${datas.video_title }"><br>
영상정보 : <input type="text" name="video_info" value="${datas.video_info }"><br>

<input type="submit" value="수정">

</form>
</body>
</html>