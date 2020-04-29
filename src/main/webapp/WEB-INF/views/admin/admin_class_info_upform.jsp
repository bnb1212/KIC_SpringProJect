<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/core"%>
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

<body id="page-top">

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

					<form action="admin_class_info_update" method="post">
						<div class="form-group">
							<input class="form-control" type="hidden"
								value="${datas.classinfo_no}" name="classinfo_no"> <input
								class="form-control" type="hidden"
								value="${datas.classinfo_for}" name="classinfo_for">
							강의설명1:
							<textarea class="form-control" rows="" cols=""
								name="classinfo_fors_one">${datas.classinfo_fors_one}</textarea>
							<br> <br> 강의설명2:
							<textarea class="form-control" rows="" cols=""
								name="classinfo_forc_one">${datas.classinfo_forc_one}</textarea>
							<br> <br> 강의설명3:
							<textarea class="form-control" rows="" cols=""
								name="classinfo_fors_two">${datas.classinfo_fors_two}</textarea>
							<br> <br> 강의설명4:
							<textarea class="form-control" rows="" cols=""
								name="classinfo_forc_two">${datas.classinfo_forc_two}</textarea>
							<br> <br> 강의설명5:
							<textarea class="form-control" rows="" cols=""
								name="classinfo_fors_three">${datas.classinfo_fors_three}</textarea>
							<br> <br> 강의설명6:
							<textarea class="form-control" rows="" cols=""
								name="classinfo_forc_three">${datas.classinfo_forc_three}</textarea>
							<br> <br>
							<hr>
							<input class="form-control" type="hidden"
								value="${datas.classinfo_goal}" name="classinfo_goal">
							강의목표1:
							<textarea class="form-control" rows="" cols=""
								name="classinfo_goals_one">${datas.classinfo_goals_one}</textarea>
							<br> <br> 강의목표2:
							<textarea class="form-control" rows="" cols=""
								name="classinfo_goalc_one">${datas.classinfo_goalc_one}</textarea>
							<br> <br> 강의목표3:
							<textarea class="form-control" rows="" cols=""
								name="classinfo_goals_two">${datas.classinfo_goals_two}</textarea>
							<br> <br> 강의목표4:
							<textarea class="form-control" rows="" cols=""
								name="classinfo_goalc_two">${datas.classinfo_goalc_two}</textarea>
							<br> <br>
							<hr>
							강의 부설명<input class="form-control" type="text"
								value="${datas.classinfo_subtitle_three}"
								name="classinfo_subtitle_three"><br> <br> 강의부
							목표:
							<textarea class="form-control" rows="" cols=""
								name="classinfo_content_three">${datas.classinfo_content_three}</textarea>
							<br> <br> <input class="form-control" type="hidden"
								value="${datas.classinfo_class_no }" name="classinfo_class_no"><br>
							<br> <input class="form-control" type="submit" value="수정">
						</div>
					</form>
					<!-- /.container-fluid -->

				</div>
				<!-- End of Main Content -->

			</div>
			<!-- End of Content Wrapper -->

		</div>
		<!-- End of Page Wrapper -->
	</div>
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
					<button class="btn btn-secondary" type="button"
						data-dismiss="modal">Cancel</button>
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
</body>

</html>
