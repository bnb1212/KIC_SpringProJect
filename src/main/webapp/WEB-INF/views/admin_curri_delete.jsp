<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
<form action="admin_curri_delete" method="post">
<c:forEach var="s" items="${data }">
<input type="hidden" value="${s.curri_class_no }">
<c:set var="curri_no" value="${s.curri_class_no }" />
</c:forEach>

<input type="hidden" value="${curri_no }"  name="curri_class_no" >
<input type="text" placeholder="섹션번호를 입력하세요" name="section_no"><br>
<input type="submit" value="삭제">
</form>
</body>
</html>