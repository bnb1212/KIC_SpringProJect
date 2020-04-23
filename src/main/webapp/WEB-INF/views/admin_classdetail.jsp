<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">

	 function delvideo() {
		 url = "admin_video_delete";
			window.open(url, "get", "width=300,height=200,top=400,left=300");
	}


</script>
</head>
<body>
	<table border="1">
		<tr>
			<th>강의 번호</th>
			<th>강의 이름</th>
			<th>강의 정보</th>
			<th>인원 제한</th>
			<th>강의 가격</th>
			<th>카테고리</th>
		</tr>
		<tr>
			<td>${datas.class_no}</td>
			<td>${datas.class_name}</td>
			<td>${datas.class_info}</td>
			<td>${datas.class_limit}</td>
			<td>${datas.class_price}</td>
			<td>${datas.class_category}</td>
		</tr>
	</table>
	<a href="admin_class_update?no=${datas.class_no}">강의 수정</a>
	<a href="admin_class_delete?no=${datas.class_no}">강의 삭제</a>
	<hr>
	<br>
	<table border="1">
		<tr>
			<th>FOR WHO</th>
			<th>강의 설명1</th>
			<th>강의 설명2</th>
		</tr>
		<tr>
			<td>${datas.classinfo_for}</td>
			<td>${datas.classinfo_fors_one}</td>
			<td>${datas.classinfo_forc_one}</td>
		</tr>
		<tr>
			<th>강의 설명3</th>
			<th>강의 설명4</th>
			<th>강의 설명5</th>
		</tr>
		<tr>
			<td>${datas.classinfo_fors_two}</td>
			<td>${datas.classinfo_forc_two}</td>
			<td>${datas.classinfo_fors_three}</td>
		</tr>
		<tr>
			<th colspan="3">강의설명6</th>
		</tr>
		<tr>
			<td colspan="3">${datas.classinfo_forc_three}</td>
		</tr>
	</table>
	<br>
	<table border="1">
		<tr>
			<th>GOAL</th>
			<th>강의 목표1</th>
			<th>강의 목표2</th>
		</tr>
		<tr>
			<td>${datas.classinfo_goal}</td>
			<td>${datas.classinfo_goals_one}</td>
			<td>${datas.classinfo_goalc_one}</td>
		</tr>
		<tr>
			<th>강의 목표3</th>
			<th>강의 목표4</th>
			<th>강의 부설명</th>
		</tr>
		<tr>
			<td>${datas.classinfo_goals_two}</td>
			<td>${datas.classinfo_goalc_two}</td>
			<td>${datas.classinfo_subtitle_three}</td>
		</tr>
		<tr>
			<th colspan="3">강의 부목표</th>
		</tr>
		<tr>
			<td colspan="3">${datas.classinfo_content_three}</td>
		</tr>
	</table>
	<br>
	<a href="admin_class_info_insert?no=${datas.class_no}">강의 내용 추가</a>
	<a href="admin_class_info_update?no=${datas.classinfo_no}">강의 내용 수정</a>
	<a href="admin_class_info_delete?no=${datas.classinfo_no}">강의 내용 삭제</a>
	<hr>
	<br>
	<form>
		<table border="1">
			<tr>
				<th>영상 번호</th>
				<th>영상 주소</th>
				<th>강의 번호</th>
				<th>섹션 번호</th>
				<th>정렬 순서</th>
				<th>업로드 시간</th>
				<th>영상 제목</th>
				<th>영상 정보</th>
			</tr>
			
			<c:forEach var="s" items="${videos}">
				<tr>
					<td><a href="admin_video_update?no=${s.video_no }">${s.video_no }</a></td>
					<c:set var="videoNo" value="${s.video_no }" />
					<td>${s.video_url}</td>
					<td>${s.video_class_no}</td>
					<td>${s.section_no}</td>
					<td>${s.order_no }
					<td>${s.upload_date}</td>
					<td>${s.video_title}</td>
					<td>${s.video_info}</td>
				</tr>
			</c:forEach>
		</table>
		
		<a href="admin_video_insert?no=${datas.class_no}">영상 추가</a> &nbsp;&nbsp;&nbsp;  <a href="#" onclick="delvideo()">영상 삭제</a>
	</form>

</body>
</html>