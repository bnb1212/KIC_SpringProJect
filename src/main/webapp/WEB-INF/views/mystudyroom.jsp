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
$(document).ready(function(){
	$(".showData").empty();
	
	$(".tt").click(function(){
	$.ajax({
		type:"get",
		url:"videolist",
		dataType:"json",
		data:{"clno":$(clno).val(),"sctno":$(this).prev().text()},
		success:function(videoData){
			var str = "<table border='1'>";
			str += "해당 섹션 강의목록<br>";
			str += "<tr><th>번호</th><th>강의 제목</th>";
			var list = videoData.datas;
			var i=1;
			$(list).each(function(index,obj){
			str += "<tr>";
			str +="<td>"+i+"</td>";
			str += "<td>"+obj["video_title"]+"</td>";
			str += "</tr>";
			i++;
			});
			str+="</table>";			
			$(".showData").html(str);
			
		},
		error:function(){
			$(".showData").text("에러!!!");
		}
	})
	});
	
});
</script>
</head>
<body>
${clname }
<table border="1">
	<c:forEach var="m" items="${curries }">
		<tr>
			<td>${m.section_no }</td>
			<td class="tt">${m.goal_title }</td>
		</tr>
	</c:forEach>
</table><br>
<div class = "showData"></div>
<form id="frm">
<input type="hidden" id="clno" name="clno" value="${clno }">
</form>
</body>
</html>

