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
	<div class="head-wrapper">
		<header class="masthead d-flex cashpage">
			<div class="container text-center my-auto" style="margin-bottom: 2vh">
				<div class="row">
					<div class="col" style="color: #fff">
						<h2 class="mb-1">결제하기</h2>
						<p>이용해주셔서 감사합니다.</p>
					</div>
				</div>
				<div class="row" style="padding: 2.5em">
					<div class="col"></div>
				</div>
			</div>
			<div class="overlay"></div>
		</header>
	</div>
	<!-- header end -->
	<!-- cash body -->
	<main class="container">
		<section class="row product-info-wrap bg-alternative">
			<div class="product-info col-sm pad-horizontal type-klass">
				<div class="primary-area">${classdata.class_name }</div>
				<div class="secondary-area">
					${infodata.classinfo_subtitle_three }</div>
			</div>
		</section>
		<div class="row">
			<div class="col" style="text-align: center; padding: 3em">
				<h3 style="display: inline">신청자 정보</h3>
				<a href="mypage?mem" style="float: right;"> 정보수정 </a>
			</div>
		</div>
		<section class="row info-summary">
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
					<p class="desc" style="color: #FA544B; font-size: 0.8em">
						꼭 실명과 실제 연락이 가능한 연락처를 적어주세요. 신청자 정보에 입력해주신 이름과 연락처로 스터디 안내를
						도와드립니다. <br>해외 휴대폰 번호를 입력할 경우 ‘국가번호'를 반드시 입력해주세요.
					</p>
				</div>
			</div>
		</section>
		<div class="row">
			<div class="col" style="text-align: center; padding: 3em">
				<h3>결제방식 선택</h3>
			</div>
		</div>

		<section class="row checkout-methods">
			<!-- /.col-lg-6 -->
			<div class="input-group">
				<div class="col-lg-2 pad-horizontal pull-left">
					<div class="input-group-addon">
						<input type="radio" name="fruit" value="신용카드" checked="checked">
					</div>
					<i class="far fa-credit-card fa-3x" style="opacity: 0.8"></i>
					<p>신용카드</p>
				</div>

				<div class="col-lg-2 pad-horizontal pull-left">
					<div class="input-group-addon">
						<input type="radio" name="fruit" value="휴대폰 결제">
					</div>
					<i class="fas fa-mobile-alt fa-3x" style="opacity: 0.8"></i>
					<p>휴대폰 결제</p>
				</div>

				<div class="col-lg-2 pad-horizontal pull-left">
					<div class="input-group-addon">
						<input type="radio" name="fruit" value="무통장 입금">
					</div>
					<i class="fas fa-won-sign fa-3x" style="opacity: 0.8"></i>
					<p>무통장 입금</p>
				</div>
			</div>
		</section>
	</main>
	<div class="container-fluid"
		style="background-color: #F0FFBF; padding: 2em">
		<section class="row">
			<div class="col-lg-8 mx-auto">
				<dl>
					<dt>정가</dt>
					<dd>
						&#8361;
						<fmt:formatNumber type="number" maxFractionDigits="3"
							value="${classdata.class_price}" />
						원
					</dd>
					<hr>
					<dt class="summary">총 결제금액</dt>
					<dd>
						&#8361;
						<fmt:formatNumber type="number" maxFractionDigits="3"
							value="${classdata.class_price}" />
						원
					</dd>
				</dl>
				<p class="desc" style="color: #FA544B; font-size: 0.8em">
					전액취소는 <strong><span class="timestamp">2020년 05월 02일
							오전 12시 00분</span> 전</strong> 까지 가능합니다.
				</p>
			</div>
		</section>
		<section class="row">
			<div class="col-lg-6 ml-auto">
				<label class="input-group enter-input required"><span
					class="desc"><a href="javascript:void(0);">개인정보 수집 이용 및
							제3자 제공 동의</a><a href="javascript:void(0);">취소 및 환불 규정</a>에 동의합니다. </span> <input
					name="agree_payment_agreements_checkbox" type="checkbox"></label>

			</div>
		</section>
		<section class="row">
			<div class="col-lg-6 ml-auto">
				<a href="join?class_no=${classdata.class_no}"
					onclick="return confirm('정말로 결제하시겠습니까 ?');"
					class="btn btn-outline-success">결제하기</a>
			</div>
		</section>
	</div>

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