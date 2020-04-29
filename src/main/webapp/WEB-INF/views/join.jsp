<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="css_scripts.jsp"%>
<title>모여라</title>
</head>
<body>
	<%@ include file="pagetop.jsp"%>

	<!-- header start-->
		<header class="masthead d-flex cashpage">
			<div class="container text-center my-auto" style="margin-bottom: 2vh">
				<div class="row">
					<div class="col" style="color: #fff">
						<h2 class="mb-1">결제완료</h2>
						<p>성공적으로 처리되었습니다.</p>
					</div>
				</div>
				<div class="row" style="padding: 2.5em">
					<div class="col"></div>
				</div>
			</div>
			<div class="overlay"></div>
		</header>
	<!-- header end -->
	<!-- cash body -->
	<main class="container">
		<section class="row product-info-wrap bg-alternative">
			<div class="product-info col-sm pad-horizontal type-klass">
				<div class="primary-area"></div>
				<div class="secondary-area">
					</div>
			</div>
		</section>
		<div class="row">
			<div class="col" style="text-align: center; padding: 3em">
				<h3 style="display: inline">신청자 정보</h3>
			</div>
		</div>
		<section class="row info-summary" style="margin:5em">
			<div class="col-lg">
				<div class="box" style="width: 100%;">
					<dl class="info">
						<dt>이메일</dt>
						<dd><%=session.getAttribute("member_email")%></dd>
						<dt>이름</dt>
						<dd><%=session.getAttribute("member_name")%></dd>
						<dt>휴대폰번호</dt>
						<dd><%=session.getAttribute("member_phone")%></dd>
					</dl>

				</div>
			</div>
		</section>

		<section class="row">
			<div class="col-lg-6 mx-auto" style="text-align: center; align-content: center; align-items:  center;">
				<a href="main" class="btn btn-outline-secondary">홈으로</a>
			</div>
		</section>
	</main>
	<footer class="contrainer index-footer" data-aos="zoom-in-up"
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