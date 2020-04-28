<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
window.onload = function(){
	document.getElementById("gogo").onclick = goupdate;
	
}

</script>
</head>
<body>
<form name="forminfo"  action="member_update" method="post" id="upform">
<c:forEach var="s" items="${datas }" >
<input type="hidden" value="${s.member_no }" name="member_no">
<c:set var="memberNo" value="${s.member_no }" />
이메일/아이디: ${s.member_email } <br>
현재 비밀번호: <input type="password" name="member_passwd1"><br>
<input type="hidden" value="${s.member_passwd }"name="member_passwd3">
비밀번호: <input type="password" name="member_passwd"><br>
비밀번호 체크: <input type="password" name="member_passwd2"><br>
이름: <input type="text" name="member_name" value="${s.member_name }"><br>
수강중인 강좌:
<c:choose>
<c:when test="${s.member_class_no == 1 }">
머신러닝
</c:when>
<c:when test="${s.member_class_no == 2 }">
프로그래밍
</c:when>
<c:when test="${s.member_class_no == 3 }">
디자인
</c:when>
<c:when test="${s.member_class_no == 4 }">
마케팅
</c:when>
<c:when test="${s.member_class_no == null }">
수강중인 강의가 없습니다
</c:when>
<c:when test="${s.member_class_no == '' }">
수강중인 강의가 없습니다
</c:when>
</c:choose>
<br> 
핸드폰번호: <input type="text" name="member_phone" id="phone" value="${s.member_phone }"><br>
</c:forEach>
<input type="button" id="gogo" onclick="goupdate()" value="수정">
</form>
</body>
<script src="resources/js/myinfo.js"></script>
</html> 