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
<link href="<c:url value="resources/css/bootstrap.css" />"
	rel="stylesheet">
<link href="<c:url value="resources/css/custom.css" />" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
	integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
	crossorigin="anonymous"></script>
<script src="resources/js/bootstrap.min.js"></script>

<title>Hello, world!</title>
</head>
<body>
	<header class="container index-header" style="white-space: nowrap;">
		<section class="row" style="padding: 14px 0">
			<div class="col-2">
				<div class="logo">
					<a class='logo' href="index.jsp"
						style="display: inline-block; padding: 0 .5rem 8px;"> 로고 </a>
				</div>
			</div>
			<div class="col">
				<div class="searchBox">
					<input type="text" value="search" id="searchInput" />
				</div>
			</div>
			<div class="col">
				<div class="headerbuttons" style="text-align: right; color: black;">
					<a href="#">로그인</a>
				</div>
			</div>
		</section>
		<section class="row justify-content-center">
			<ul class="nav justify-content-center">
				<li class="nav-item"><a class="nav-link active" href="#">전체보기</a>
				</li>
				<li class="nav-item"><a class="nav-link" href="#">머신러닝</a></li>
				<li class="nav-item"><a class="nav-link" href="#">프로그래밍</a></li>
				<li class="nav-item"><a class="nav-link" href="#">디자인</a></li>
				<li class="nav-item"><a class="nav-link" href="#">마케팅</a></li>
			</ul>
		</section>
	</header>
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

				<p>(주)스터디파이 | 대표이사 김태우</p>
				<p>주소 | 서울특별시 구로구 구로중앙로 26길 34,1층</p>
				<p>사업자등록번호 |687-86-00946 통신판매업</p>
				<p>신고번호 | 제2018-서울구로-1334호</p>
				<p>사업자등록번호 |687-86-00946 통신판매업</p>
				<p>전화번호 | 010.4347.9753</p>
			</div>
		</section>
	</footer>

	<%-->
	<div class="dimmer" style="transition-duration:250ms;
	position: absolute; top: 0; right: 0;
	background: #fff; height: 100%; display: -ms-flexbox; display: flex;
	flex-direction: column; width: 250px;
	border: 0; margin: 0; ">
		<header>
		
		</header>
		<ul>
		
		</ul>
		<footer>
		
		</footer>
		
	</div>
		--%>
	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->

	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
		integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
		crossorigin="anonymous"></script>
</body>

</html>