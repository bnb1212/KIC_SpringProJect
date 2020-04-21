<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">
 function editUser(param)
    {
	var frm = $("#frm");
	var clno = $("#clno")
	clno.val(param)
	$("#frm").submit();
    };
</script>
</head>
<body>
	<c:choose>
		<c:when test="${fn:length(list) > 0}">
			<table border="1">
				<c:forEach var="m" items="${list }">
					<tr>
						<td>${m.class_no }</td>
						<td><a onclick="editUser(${m.class_no }); return false;" style="cursor:pointer">${m.class_name }</a></td> 
						<%-- <a onclick="func();" style="cursor:pointer"> --%>
						<td>${m.class_info }</td>
					</tr>
				</c:forEach>
			</table>
		</c:when>
		<c:when test="${fn:length(list) == 0}">
        신청하신 스터디가 없습니다.
    </c:when>
	</c:choose>
<form id="frm" method="post" action="myStudyroom">
<input type="hidden" id="clno" name="clno">
</form>

</body>
</html>

