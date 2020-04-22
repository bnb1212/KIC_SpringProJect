<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html>
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
	
<!-- Bootstrap CSS -->
<link href="<c:url value="resources/vendor/css/bootstrap.css" />"
	rel="stylesheet">
	
<!-- ADD CSS -->
<link href="<c:url value="resources/css/custom.css" />" rel="stylesheet">
<link href="<c:url value="resources/css/card_styles.css" />"
	rel="stylesheet">
<link href="<c:url value="resources/css/stylish-portfolio.css" />"
	rel="stylesheet">



 <!-- Custom Fonts -->
 <link href="resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
 <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css">
 <link href="resources/vendor/simple-line-icons/css/simple-line-icons.css" rel="stylesheet">


<title>모여라</title>

</head>
<body>
	<%@ include file="pagetop.jsp"%>

	<main class="container" style="background-color: #D7FFF1">

		<section class="row" style="background-color: #8CD790; height: 600px">
			<div class="col">항목1</div>
			<div class="col">항목2</div>
		</section>

		<section class="row" style="background-color: #77AF9C; height: 600px">
			<div class="col">항목3</div>
		</section>

		<section class="row" style="background-color: #285943; height: 300px">
			<div class="col-sm-6 col-md-4 col-lg-3">
				<a href="machine">머신러닝</a>
			</div>
			<div class="col-sm-6 col-md-4 col-lg-3">
				<a href="machine">디자인</a>
			</div>
			<div class="col-sm-6 col-md-4 col-lg-3">
				<a href="machine">영어</a>
			</div>
			<div class="col-sm-6 col-md-4 col-lg-3">
				<a href="machine">비즈니스</a>
			</div>
		</section>
	</main>
	<footer class="contrainer index-footer">
		<section class="row" style="background-color: #8CD790;">
			<div class="col-sm common"
				style="font-size: 1rem; padding: 82px 25px 40px 19px; text-align: center; vertical-align: middle;">

				<p>(주)KIC 스터디 | 대표 4팀</p>
				<p>주소 | 서울특별시 강남구 테헤란로 26길 34,1층</p>
				<p>
					<a href="admin_login" style='text-decoration: none; color: black;'>사업자</a>등록번호
					|687-86-12345 통신판매업
				</p>
				<p>신고번호 | 제2018-서울구로-1234호</p>
				<p>전화번호 | 010.1234.5678</p>
			</div>
		</section>
	</footer>
	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->


	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
		integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
		crossorigin="anonymous"></script>

	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
		integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
		crossorigin="anonymous"></script>

  <!-- Bootstrap core JavaScript -->
  <script src="resources/vendor/jquery/jquery.min.js"></script>
  <script src="resources/vendor/js/bootstrap.bundle.min.js"></script>
  
<!-- Bootstrap Js -->
<script src="resources/vendor/js/bootstrap.min.js"></script>

  <!-- Plugin JavaScript -->
  <script src="resources/vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for this template -->
  <script src="resources/js/card_scripts.js"></script>
  <script src="resources/js/login.js"></script>
  <script src="resources/js/stylish-portfolio.min.js"></script>
  
</body>


</html>