<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
window.onload = function(){
	document.getElementById("idok").onclick = function checkok(){
	opener.document.getElementById("idDuplication").value = "idCheck";
	opener.document.regForm.member_passwd.focus();
	window.close();
	}
}

</script>

</head>
<body>
<c:choose>
	<c:when test="${data eq 1}">
	이미 사용 중입니다.<br>
	다른 아이디를 입력해주세요<br>
	<a href="#" onclick="opener.document.regForm.member_email.focus(); window.close()">창 닫기</a>
	</c:when>
	
	<c:otherwise>
	사용 가능한 id입니다.<p/>
	<button id="idok">닫기</button>

	</c:otherwise>
	
</c:choose>



</body>
</html>