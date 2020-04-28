<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>

<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<title>모여라</title>
<%@ include file="css_scripts.jsp"%>
<script>
</script>
</head>
<body>
	<%@ include file="pagetop.jsp"%>
	<!-- header Start -->
	<header class="masthead d-flex detailpage" style="margin-bottom: 0;">
		<div class="container text-center my-auto" style="margin-bottom: 2vh">
			<div class="row">
				<div class="col">
					<h2 class="mb-1" style="color: #fff">${classes.class_name }</h2>
				</div>
			</div>
			<div class="row" style="padding: 2.5em">
				<div class="col">

					<a class="btn btn-primary js-scroll-trigger" href="machine"
						style="opacity: .9">머신러닝</a> <a
						class="btn btn-primary js-scroll-trigger" href="programming"
						style="opacity: .9">프로그래밍</a> <a
						class="btn btn-primary js-scroll-trigger" href="design"
						style="opacity: .9">디자인</a> <a
						class="btn btn-primary js-scroll-trigger" href="marketing"
						style="opacity: .9">마케팅</a>
				</div>
			</div>
		</div>
		<div class="overlay"></div>
	</header>
	<!-- header End  -->
	<!-- navbar Start -->
	<nav class="navbar navbar-expand-lg  text-uppercase" id="SubNav">
		<div class="container">
			<div class="collapse navbar-collapse" id="navbarResponsive"
				style="border-bottom: 1px solid black;">
				<ul class="navbar-nav nav-pills mx-auto">
					<li><a
						class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger"
						href="#goal">Goal</a></li>
					<li><a
						class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger"
						href="#curriculum">Curriculum</a></li>
					<!-- 메뉴버튼 -->
					<li class="nav-item mx-0 mx-lg-1"><a href="#"
						class="menu-toggle rounded" data-toggle="collapse"
						data-target="#navbarResponsive" aria-controls="navbarResponsive"
						aria-expanded="false" aria-label="Toggle navigation"> <i
							class="fas fa-bars"></i></a>
					<li>
				</ul>
			</div>
		</div>
	</nav>
	<!-- navbar End -->

	<div class="container-fluid">
		<!-- FOR WHO -->
		<div class="row infocontent" data-aos="zoom-in-up" data-aos-duration="800" data-aos-easing="ease-in-out">
			<div class="col" style="text-align: center;">
				<h2>
					FOR WHO
					</h4>
					<p>이런분들을 위한 스터디에요!</p>
			</div>
		</div>
		<div class="row infocontent" align="center" >
			<div class="col">
				<div class="box" data-aos="zoom-in-up" data-aos-duration="800" data-aos-easing="ease-in-out">
					<h4>${datas.classinfo_fors_one }</h4>
					<p>${datas.classinfo_forc_one }</p>
					<h4 style="margin-top: 40px;">${datas.classinfo_fors_two }</h4>
					<p>${datas.classinfo_forc_two }</p>
					<h4 style="margin-top: 40px;">${datas.classinfo_fors_three }</h4>
					<p>${datas.classinfo_forc_three }</p>
				</div>
			</div>
		</div>
		<!-- GOAL -->
		<div  data-aos="zoom-in-up" data-aos-duration="800" data-aos-easing="ease-in-out">
		<div class="row infocontent"
			style="padding: 40px; background-color: #464D73; color: #F2F2F2;" id="goal" >
			<div class="col" style="text-align: center;">
				<h2>GOAL</h2>
				<p>스터디 학습목표</p>
			</div>
		</div>
		<div class="row infocontent"
			style="background-color: #464D73; color: #F2F2F2" >
			<div class="col" style="text-align: center;" >
				<h4>${datas.classinfo_fors_one }</h4>
				<p>${datas.classinfo_forc_one }</p>
				<h4 style="margin-top: 40px;">${datas.classinfo_fors_two }</h4>
				<p>${datas.classinfo_forc_two }</p>
				<h4 style="margin-top: 40px;">${datas.classinfo_fors_three }</h4>
				<p>${datas.classinfo_forc_three }</p>
			</div>
		</div>

		<!-- CURRICURUM -->
		<div data-aos="zoom-in-up" data-aos-duration="800" data-aos-easing="ease-in-out">
		<div class="row infocontent" id="curriculum">
			<div class="col" style="text-align: center;">
				<h2>CURRICULUM</h2>
				<p>검증된 커리큘럼을 소개합니다</p>

			</div>
		</div>
		${curri.goal_title}
		<div class="row infocontent text-center">
			<div class="col-lg-4 mx-auto">
				<ul class='list-group'>
					<c:forEach var="i" items="${curr}">
						<li class="list-group-item">${i.goal_title}</li>
					</c:forEach>
				</ul>
			</div>
		</div>
		</div>
		<!-- price -->
		<div  data-aos="zoom-in-up" data-aos-duration="800" data-aos-easing="ease-in-out">
		<div class="row infocontent" style="background-color: #D9A566">
			<div class="col" style="text-align: center;">
				<h1 style="color: #402318">지금 특가! 서두르세요!</h1>
			</div>
		</div>
		<div class="row infocontent text-center"
			style="background-color: #D9A566" >

			<div class="col-lg-4 mx-auto">
				<h4 style="display: inline; color:red;">
					<del>${classes.class_price + 10000}</del>
					&nbsp;&nbsp;&nbsp;
				</h4>
				<h2 style="display: inline;">${classes.class_price }</h2>
				&nbsp;&nbsp;&nbsp; <a class="btn btn-primary"
					href="cash?classinfo_class_no=${datas.classinfo_class_no}">신청하기</a>
			</div>

		</div>
		</div>
		</div>
		<!-- footer Start-->
		<footer class="contrainer index-footer" data-aos="zoom-in-up" data-aos-duration="800" data-aos-easing="ease-in-out">
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