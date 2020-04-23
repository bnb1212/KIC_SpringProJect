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
<link href="resources/vendor/fontawesome-free/css/all.min.css"
	rel="stylesheet" type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,700,300italic,400italic,700italic"
	rel="stylesheet" type="text/css">
<link
	href="resources/vendor/simple-line-icons/css/simple-line-icons.css"
	rel="stylesheet">


<title>모여라</title>

</head>
<body>
	<%@ include file="pagetop.jsp"%>

	<header class="masthead d-flex">
		<div class="container text-center my-auto">
			<h2 class="mb-1">
				머신러닝 스터디 <br>지금 함께하세요
			</h2>
			<h4 class="mb-5">
				<em>최고의 전문가들이 여러분의 길잡이가 되어드립니다.</em>
			</h4>
			<a class="btn btn-primary btn-xl js-scroll-trigger" href="#about">Find
				Out More</a>
		</div>
		<div class="overlay"></div>
	</header>

	<!-- category content -->
	<section class="content-section" id="portfolio">
    <div class="container">
      <div class="content-section-heading text-center">
        <h4 class="text-secondary mb-0">Course Category</h4>
        <br>
        <br>
      </div>
      <div class="row no-gutters">
        <div class="col-lg-3">
          <a class="portfolio-item" href="machine">
            <span class="caption">
              <span class="caption-content">
                <h2>머신러닝</h2>
              </span>
            </span>
            <img class="img-fluid" src="resources/img/cate_machine_learning.jpg" alt="">
          </a>
        </div>
        <div class="col-lg-3">
          <a class="portfolio-item" href="programming">
            <span class="caption">
              <span class="caption-content">
                <h2>프로그래밍</h2>
              </span>
            </span>
            <img class="img-fluid" src="resources/img/cate_programming.jpg" alt="">
          </a>
        </div>
        <div class="col-lg-3">
          <a class="portfolio-item" href="design">
            <span class="caption">
              <span class="caption-content">
                <h2 class="mb-0">디자인</h2>
              </span>
            </span>
            <img class="img-fluid" src="resources/img/cate_design.jpg" alt="">
          </a>
        </div>
        <div class="col-lg-3">
          <a class="portfolio-item" href="marketing">
            <span class="caption">
              <span class="caption-content">
                <h2>마케팅</h2>
                
              </span>
            </span>
            <img class="img-fluid" src="resources/img/cate_maketing.jpg" alt="">
          </a>
        </div>
      </div>
    </div>
  </section>
	<!-- category content end -->
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

	<!-- SCRIPT -->
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