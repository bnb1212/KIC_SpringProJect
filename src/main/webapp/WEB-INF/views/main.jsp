<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html>
<head>
<%@ include file="css_scripts.jsp"%>
<title>모여라</title>
<script>
	
</script>
</head>
<body data-spy="scroll" data-target=".site-navbar-target"
	data-offset="300" id="home-section">
	<%@ include file="pagetop.jsp"%>

	<header class="masthead d-flex mainmast">
		<div class="container text-center my-auto">
			<div class="intro-text" data-aos="fade-right"
				data-aos-duration="1000">
				<h2 class="mb-1">
					<img style="width:300px;" src="resources/img/mast-logo.png">
				</h2>
				<h4 class="mb-5">
					<em>최고의 전문가들이 여러분의 길잡이가 되어드립니다.</em>
				</h4>
			</div>
		</div>
		<div class="overlay"></div>
	</header>

	<section class="page-section bg-primary text-white mb-0" id="about" data-aos="fade-right" data-aos-duration="1000" data-aos-delay="300">
		<div class="container-fluid">
			<!-- About Section Heading-->
			<h2
				class="page-section-heading text-center text-uppercase text-white">About</h2>
			<!-- Icon Divider-->
			<div class="divider-custom divider-light">
				<div class="divider-custom-line"></div>
				<div class="divider-custom-icon">
					<i class="fas fa-star"></i>
				</div>
				<div class="divider-custom-line"></div>
			</div>
			<!-- About Section Content-->
			<div class="row">
				<div class="col-lg-4 ml-auto">
					<p class="lead">STUDYPRO is a free bootstrap theme created by
						Start Bootstrap. The download includes the complete source files
						including HTML, CSS, and JavaScript as well as optional SASS
						stylesheets for easy customization.</p>
				</div>
				<div class="col-lg-4 mr-auto">
					<p class="lead">You can create your own custom avatar for the
						masthead, change the icon in the dividers, and add your email
						address to the contact form to make it fully functional!</p>
				</div>
			</div>
			<!-- About Section Button-->
			<div class="text-center mt-4">

			</div>
		</div>
	</section>
	<!-- category content -->
	<section class="content-section" id="portfolio">
		<div class="container">
			<div class="content-section-heading text-center">
				<h4 class="text-secondary mb-0" data-aos="zoom-in-up"
					data-aos-duration="800">Course Category</h4>
				<br> <br>
			</div>
			<div class="row no-gutters" data-aos="flip-right"
				data-aos-duration="800">
				<div class="col-lg-3">
					<a class="portfolio-item" href="machine"> <span class="caption">
							<span class="caption-content">
								<h2>머신러닝</h2>
						</span>
					</span> <img class="img-fluid"
						src="resources/img/cate_machine_learning.jpg" alt="">
					</a>
				</div>
				<div class="col-lg-3">
					<a class="portfolio-item" href="programming"> <span
						class="caption"> <span class="caption-content">
								<h2>프로그래밍</h2>
						</span>
					</span> <img class="img-fluid" src="resources/img/cate_programming.jpg"
						alt="">
					</a>
				</div>
				<div class="col-lg-3">
					<a class="portfolio-item" href="design"> <span class="caption">
							<span class="caption-content">
								<h2 class="mb-0">디자인</h2>
						</span>
					</span> <img class="img-fluid" src="resources/img/cate_design.jpg" alt="">
					</a>
				</div>
				<div class="col-lg-3">
					<a class="portfolio-item" href="marketing"> <span
						class="caption"> <span class="caption-content">
								<h2>마케팅</h2>

						</span>
					</span> <img class="img-fluid" src="resources/img/cate_maketing.jpg"
						alt="">
					</a>
				</div>
			</div>
		</div>
	</section>
	<!-- category content end -->
	<footer class="contrainer index-footer" data-aos="fade-in"
		data-aos-duration="800">
		<section class="row" style="background-color: #8CD790;">
			<div class="col-sm common"
				style="font-size: 1rem; padding: 40px 20px 40px 20px; text-align: center; vertical-align: middle;">

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
</body>


</html>