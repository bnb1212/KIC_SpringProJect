<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	
	
});

function chk(no){
	var num = no;
	//alert("a");
	
	$("#showDiv").empty();
	
	$.ajax({
		type:"get",
		url:"admin_memberdetail?no="+num,
		dataType:"json",
		success:function(memberData){
			var str = "<table border='1'>";
			var member = memberData.datas
			str += "<tr><th>회원번호</th><th>회원이름</th><th>회원아이디</th><th>비밀번호</th><th>수강중인 강좌</th><th>회원 전화번호</th></tr>";
			$(member).each(function(index, obj){
			str += "<tr>"
			str += "<td>" + obj["member_no"] + "</td>";
			str += "<td>" + obj["member_name"] + "</td>";
			str += "<td>" + obj["member_email"] + "</td>";
			str += "<td>" + obj["member_passwd"] + "</td>";
			str += "<td>" + obj["member_class_no"] + "</td>";
			str += "<td>" + obj["member_phone"] + "</td>";
			str += "</tr>"
			});
			str += "</table>";
			str += "<a href='#' onclick=update('"+num+"')>회원 수정</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;";
			str += "<a href='#' onclick=deleteok('"+num+"')>회원 삭제</a>";
			$("#showDiv").append(str);
		},error:function(){
			$("#showDiv").text("에라드래곤");
		}
	});
}



function update(num) {
	 url = "admin_update?no="+num;
		window.open(url, "get", "width=300,height=200,top=400,left=300");
}

function deleteok(num) { 
	var ac = confirm("정말 지우시겠습니까?");
	
	if(ac){
	url = "admin_delete?no="+num;
	window.open(url, "get", "width=300,height=200,top=400,left=300");
	}
	
}


</script>
<body>
<table border="1">
	<tr>
	<th>회원번호</th><th>회원이름</th><th>회원아이디</th>
	</tr>
	<c:forEach var="s" items="${datas}">
	<tr>
	  	<td>${s.member_no }</td>
	  	<td><a href="#" onclick="chk('${s.member_no}')">${s.member_name }</a></td>
	  	<td>${s.member_email }</td>
	</tr>
	</c:forEach>
</table>

<br>

<div id="showDiv">

</div>
<br>


</body>
</html>