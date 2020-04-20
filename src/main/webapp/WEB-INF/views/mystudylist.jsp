<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:choose>
		<c:when test="${fn:length(list) > 0}">
			<table border="1">
				<c:forEach var="m" items="${list }">
					<tr>
						<td>${m.class_no }</td>
						<td>${m.class_name }</td>
						<td>${m.class_info }</td>
					</tr>
				</c:forEach>
			</table>
		</c:when>
		<c:when test="${fn:length(list) == 0}">
        신청하신 스터디가 없습니다.
    </c:when>
	</c:choose>


</body>
</html>