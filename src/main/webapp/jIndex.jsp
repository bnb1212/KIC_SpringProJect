<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
//로그인했다고 가정하려고 만든거.
session.setAttribute("member_no", "1");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">
$( document ).ready(function(){
	$('input').click(function(){
		var frm = $("#category");
		var cate = $("#cate_name")
		cate.val($(this).val())
		$("#category").submit();
	});
})
</script>
</head>
<body>
<form id="category" method="post" action="myStudylist">
<input type="button" value="머신러닝" name="c"><br>
<input type="button" value="프로그래밍" name="c"><br>
<input type="button" value="디자인" name="c"><br>
<input type="button" value="마케팅" name="c"><br>
<input type="hidden" id="cate_name" name="cate">
<input type="hidden" id="mem_no" name="mem" value="<%=session.getAttribute("member_no") %>">
</form>

</body>
</html>

