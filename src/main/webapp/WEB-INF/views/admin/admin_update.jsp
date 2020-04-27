<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="admin_update" method="post">

회원번호:<input type="hidden" name="member_no" value="${datas.member_no }"> ${datas.member_no }<br>
회원이름: <input type="text" name="member_name" value="${datas.member_name }"><br>
회원아이디: <input type="hidden" name="member_email" value="${datas.member_email }"> ${datas.member_email }<br>
비밀번호: <input type="text" name="member_passwd" value="${datas.member_passwd }"><br>
<input type="hidden" name="member_class_no" value="${datas.member_class_no }">
회원전화번호: <input type="text" name="member_phone"  value="${datas.member_phone }"><br>
<input type="submit" value="수정">
</form>
</body>
</html>