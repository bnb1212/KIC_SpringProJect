<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%--onclick="chk('${s.member_no}')" --%>
<!DOCTYPE html>
<html>

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>강의 관리</title>

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

<!-- Custom styles for this page -->
<link href="resources/vendor/datatables/dataTables.bootstrap4.min.css"
	rel="stylesheet">


</head>

<body id="page-top">

	<!-- Page Wrapper -->
	<div id="wrapper">
		<!-- side bar -->
		<%@ include file="admin_sidebar.jsp"%>

		<!-- Content Wrapper -->
		<div id="content-wrapper" class="d-flex flex-column">

			<!-- Main Content -->
			<div id="content">
				<%@ include file="admin_topbar.jsp"%>
				<!-- Begin Page Content -->
				<div class="container-fluid">

					<!-- Page Heading -->
					<h1 class="h3 mb-2 text-gray-800">강의관리</h1>
					<p class="mb-4">강의 번호를 클릭하여 수정/삭제가 가능합니다</p>


					<!-- DataTales Example -->
					<div class="card shadow mb-4">
						<div class="card-header py-3">
							<h6 class="m-0 font-weight-bold text-primary">강의 테이블</h6>
						</div>
						<div class="card-body">
							<div class="table-responsive">
								<table class="table table-bordered" id="dataTable" width="100%"
									cellspacing="0">
									<thead>
										<tr>
											<th style="min-width: 3em;">번호</th>
											<th>이름</th>
											<th>정보</th>
											<th style="min-width: 3em;">인원</th>
											<th>가격</th>
											<th style="min-width: 4em;">카테고리</th>
											<th colspan="2" style="min-width: 8em;">추가</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="s" items="${datas}">
											<tr>
												<td>${s.class_no }</td>

												<td>${s.class_name }</td>
												<td><p>${s.class_info }</p>
												<p><a class="btn btn-outline-success">상세보기</a></p></td>
												<td>${s.class_limit }</td>
												<td>${s.class_price }</td>
												<td>${s.class_category }</td>
												<td><a class="btn btn-success" href="admin_class_update?no=${s.class_no}">강의
														수정</a> <a class="btn btn-warning" href="admin_class_delete?no=${s.class_no}">강의
														삭제</a></td>
												<td>
													<a class="btn btn-secondary" href="admin_curri_insert?no=${s.class_no }">커리큘럼 추가</a></td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>
						</div>
					</div>

				</div>
				<!-- /.container-fluid -->

			</div>
			<!-- End of Main Content -->

			<!-- Footer -->
			<footer class="sticky-footer bg-white">
				<div class="container my-auto">
					<div class="copyright text-center my-auto">
						<span>Copyright &copy; KIC STUDYPRO</span>
					</div>
				</div>
			</footer>
			<!-- End of Footer -->

		</div>
		<!-- End of Content Wrapper -->

	</div>
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
					<button class="btn btn-secondary" type="button"
						data-dismiss="modal">Cancel</button>
					<a class="btn btn-primary" href="admin_login">Logout</a>
				</div>
			</div>
		</div>
	</div>

	<!-- insert video modal -->
	<div class="modal fade bs-example-modal-lg videoDiv"
		id="updateMemberModal" tabindex="-1" role="dialog"
		aria-labelledby="updateModalPage" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">영상 추가</h5>
					<button class="close" type="button" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">×</span>
					</button>
				</div>
				<div class="modal-body">
					<div class='content'>
						<div class="row">
							<div class="col-lg">
								<form class="user" action='class_update' method="post">
									<div class="form-group row">
										<div class="col">
											<input type="hidden" id="updateClassNo" name="class_no">
											<input type="text" class="form-control form-control-user"
												name="class_name" id="updateClassName" placeholder="강의 이름">
										</div>
									</div>
									<div class="form-group row">
										<div class="col">
											<textarea class="form-control form-control-user"
												name="class_info" id="updateClassInfo" placeholder="강의정보"
												rows="2"></textarea>
										</div>
									</div>
									<div class="form-group row">
										<div class="col">
											<input type="text" class="form-control form-control-user"
												name="class_limit" id="updateClassLimit" placeholder="인원">
										</div>
									</div>
									<div class="form-group row">
										<div class="col">
											<input class="form-control form-control-user"
												name="class_price" id="updateClassPrice" placeholder="가격">
											</textarea>
										</div>
									</div>
									<div class="form-group row">
										<div class="col">
											<select class="form-control form-control-user"
												name="class_limit" id="updateClassCate">
												<option>머신러닝</option>
												<option>프로그래밍</option>
												<option>디자인</option>
												<option>마케팅</option>

											</select>
										</div>
									</div>
									<button type='submit'
										class="btn btn-primary btn-user btn-block">
										<i class="fas fa-pen"></i> 강의수정
									</button>
									<button class="btn btn-danger btn-user btn-block"
										id="memberDeleteBtn" value="">
										<i class="fas fa-exclamation-triangle"></i> 강의 삭제
									</button>
									<hr>
								</form>

							</div>
						</div>
					</div>
				</div>
				<div class="modal-footer"></div>
			</div>
		</div>
	</div>

	<!-- insert video modal end -->
	<!-- Bootstrap core JavaScript-->
	<script src="resources/vendor/jquery/jquery.min.js"></script>
	<script src="resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Core plugin JavaScript-->
	<script src="resources/vendor/jquery-easing/jquery.easing.min.js"></script>

	<!-- Custom scripts for all pages-->
	<script src="resources/js/sb-admin-2.min.js"></script>

	<!-- Page level plugins -->
	<script src="resources/vendor/datatables/jquery.dataTables.min.js"></script>
	<script src="resources/vendor/datatables/dataTables.bootstrap4.min.js"></script>

	<!-- Page level custom scripts -->
	<script src="resources/js/demo/datatables-demo.js"></script>

	<script type="text/javascript">
		$(document).ready(function() {

					$("button[name=upModal]").click(
							function() {
								var class_no = $(this).val();
								var class_name = $(
										"input[name='classUpName" + mem_no
												+ "']").val();
								var class_class_no = $(
										"input[name='classUpClass" + mem_no
												+ "']").val();
								var mem_phone = $(
										"input[name='memberUpPhone" + mem_no
												+ "']").val();

								$("#updateMemberNo").val(mem_no);
								$("#updateMemberName").val(mem_name);
								$("#updateMemberClassNo").val(mem_class_no);
								$("#updateMemberPhone").val(mem_phone);
								$("#memberDeleteBtn").val(mem_no);
								// == delete ==

								$('div#updateMemberModal').modal();
							
						});

					$("#memberDeleteBtn").click(function() {
						var mem_no = $(this).val();
						var result = confirm('정말 삭제하시겠습니까?');
						if (result) {

							$.ajax({
								type : "get",
								url : "admin_delete",
								data : {
									"member_no" : mem_no
								},
								success : function(result) {
									if (result == 1) {
										location.href = "admin_memberinit";
									} else {
										alert("삭제 실패");
									}
								},
								error : function() {
									alert("실패");
								}
							});
						}

					});
					// ============================================================
						function() {

					$("button[name=upModal]").click(
							function() {
								var class_no = $(this).val();
								var class_name = $(
										"input[name='classUpName" + mem_no
												+ "']").val();
								var mem_class_no = $(
										"input[name='memberUpClass" + mem_no
												+ "']").val();
								var mem_phone = $(
										"input[name='memberUpPhone" + mem_no
												+ "']").val();

								$("#updateMemberNo").val(mem_no);
								$("#updateMemberName").val(mem_name);
								$("#updateMemberClassNo").val(mem_class_no);
								$("#updateMemberPhone").val(mem_phone);
								$("#memberDeleteBtn").val(mem_no);
								// == delete ==

								$('div#updateMemberModal').modal();
							});

					$("#memberDeleteBtn").click(function() {
						var mem_no = $(this).val();
						var result = confirm('정말 삭제하시겠습니까?');
						if (result) {

							$.ajax({
								type : "get",
								url : "admin_delete",
								data : {
									"member_no" : mem_no
								},
								success : function(result) {
									if (result == 1) {
										location.href = "admin_memberinit";
									} else {
										alert("삭제 실패");
									}
								},
								error : function() {
									alert("실패");
								}
							});
						}

					});
					//====================================================================
						function() {

					$("button[name=upModal]").click(
							function() {
								var class_no = $(this).val();
								var class_name = $(
										"input[name='classUpName" + mem_no
												+ "']").val();
								var mem_class_no = $(
										"input[name='memberUpClass" + mem_no
												+ "']").val();
								var mem_phone = $(
										"input[name='memberUpPhone" + mem_no
												+ "']").val();

								$("#updateMemberNo").val(mem_no);
								$("#updateMemberName").val(mem_name);
								$("#updateMemberClassNo").val(mem_class_no);
								$("#updateMemberPhone").val(mem_phone);
								$("#memberDeleteBtn").val(mem_no);
								// == delete ==

								$('div#updateMemberModal').modal();
							});

					$("#memberDeleteBtn").click(function() {
						var mem_no = $(this).val();
						var result = confirm('정말 삭제하시겠습니까?');
						if (result) {

							$.ajax({
								type : "get",
								url : "admin_delete",
								data : {
									"member_no" : mem_no
								},
								success : function(result) {
									if (result == 1) {
										location.href = "admin_memberinit";
									} else {
										alert("삭제 실패");
									}
								},
								error : function() {
									alert("실패");
								}
							});
						}

					});


				});
	</script>
</body>

</html>
