<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%--
<a href="admin_memberinit">회원 수정/삭제</a><br>
<a href="admin_message">메세지 발송</a><br>

<a href="admin_classinit">강의 추가</a>
 --%>

<!DOCTYPE html>
<html>

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>SB Admin 2 - Dashboard</title>

<!-- Custom fonts for this template-->
<link href="resources/vendor/fontawesome-free/css/all.min.css"
	rel="stylesheet" type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">

<!-- Custom styles for this template-->
<link href="resources/css/sb-admin-2.css" rel="stylesheet">
<link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
<link rel="shortcut icon" href="resources/img/favicon.ico"
	type="image/x-icon">
<link rel="icon" href="resources/img/favicon.ico" type="image/x-icon">
</head>

<body id="page-top" style="color: #000;">

	<!-- Page Wrapper -->
	<div id="wrapper">
		<!-- sidebar -->
		<%@ include file="admin_sidebar.jsp"%>
		<!-- Content Wrapper -->
		<div id="content-wrapper" class="d-flex flex-column">

			<!-- Main Content -->
			<div id="content">
				<%@ include file="admin_topbar.jsp"%>


				<!-- Begin Page Content -->
				<div class="container-fluid">
					<div
						class="d-sm-flex align-items-center justify-content-between mb-4">
						<h1 class="h3 mb-0 text-gray-800">대시보드</h1>
					</div>
					<table class="table table-bordered" id="dataTable">
						<thead>
							<tr>
								<th>강의 번호</th>
								<th>강의 이름</th>
								<th>강의 정보</th>
								<th>인원 제한</th>
								<th>강의 가격</th>
								<th>카테고리</th>
							</tr>
						</thead>
						<tr>
							<td>${datas.class_no}</td>
							<td>${datas.class_name}</td>
							<td>${datas.class_info}</td>
							<td>${datas.class_limit}</td>
							<td>${datas.class_price}</td>
							<td>${datas.class_category}</td>
						</tr>
					</table>
					<a class="btn btn-outline-success"
						href="admin_class_update?no=${datas.class_no}">강의 수정</a> <a
						class="btn btn-outline-danger"
						href="admin_class_delete?no=${datas.class_no}">강의 삭제</a>
					<hr>
					<br>
					<table class="table table-bordered" id="dataTable">
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
					<table class="table table-bordered" id="dataTable">
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
					<br> <a class="btn btn-outline-success"
						href="admin_class_info_insert?no=${datas.class_no}">강의 내용 추가</a> <a
						class="btn btn-outline-warning"
						href="admin_class_info_update?no=${datas.classinfo_no}">강의 내용
						수정</a> <a class="btn btn-outline-danger"
						href="admin_class_info_delete?no=${datas.classinfo_no}">강의 내용
						삭제</a>
					<hr>
					<br>
					<form>
						<table class="table table-bordered" id="dataTable">
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

						<a href="admin_video_insert?no=${datas.class_no}">영상 추가</a>
						&nbsp;&nbsp;&nbsp; <a href="#" onclick="delvideo()">영상 삭제</a>
					</form>
					<hr>
					<br>
					<form>
						<table class="table table-bordered" id="dataTable">
							<tr>
								<th>세션 번호</th>
								<th>목표 제목</th>
							</tr>
							<c:forEach var="s" items="${curri }">
								<tr>
									<c:set var="classNo" value="${s.curri_class_no }" />
									<td><a href="admin_curri_update?no=${s.section_no }">${s.section_no }</a></td>
									<td>${s.goal_title }</td>
								</tr>
							</c:forEach>
						</table>
						<a class="btn btn-outline-warning"
							href="admin_curri_insert?no=${datas.class_no }">커리큘럼 추가</a> <a
							class="btn btn-outline-danger" href="#"
							onclick="curridel(${classNo})">커리큘럼 삭제</a>
					</form>
				</div>
			</div>
		</div>
	</div>


</body>
<!-- Page Heading -->


<!-- Content Row -->

<!-- Content Row -->

<div class="row">

	<!-- Area Chart -->


</div>

<!-- Content Row -->

<!-- /.container-fluid -->
<!-- End of Main Content -->


<!-- End of Content Wrapper -->


<!-- End of Page Wrapper -->

<!-- Scroll to Top Button-->
<a class="scroll-to-top rounded" href="#page-top"> <i
	class="fas fa-angle-up"></i>
</a>

<!-- Logout Modal-->
<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog"
	aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
				<button class="close" type="button" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">×</span>
				</button>
			</div>
			<div class="modal-body">로그아웃 하시겠습니까?</div>
			<div class="modal-footer">
				<button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
				<a class="btn btn-primary" href="admin_login">Logout</a>
			</div>
		</div>
	</div>
</div>
<!-- Bootstrap core JavaScript-->
<script src="resources/vendor/jquery/jquery.min.js"></script>
<script src="resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

<!-- Core plugin JavaScript-->
<script src="resources/vendor/jquery-easing/jquery.easing.min.js"></script>

<!-- Custom scripts for all pages-->
<script src="resources/js/sb-admin-2.min.js"></script>

<!-- Page level plugins -->
<script src="resources/vendor/chart.js/Chart.min.js"></script>

<!-- Page level custom scripts -->
<script src="resources/js/demo/chart-area-demo.js"></script>
<script src="resources/js/demo/chart-pie-demo.js"></script>

<script type="text/javascript">

	 function delvideo() {
		 url = "admin_video_delete";
			window.open(url, "get", "width=300,height=200,top=400,left=300");
	}
	 
	 function curridel(no) {
		 var num = no
		 url = "admin_curri_delete?no="+num;
			window.open(url, "get", "width=300,height=200,top=400,left=300");
	}

	 

</script>
</body>

</html>
