<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
	<!-- header end -->
	<!-- cash body -->
	<main class="container">
		<section class="row product-info-wrap bg-alternative">
			<div class="product-info col-sm pad-horizontal type-klass">
				<div class="primary-area"></div>
				<!---->
				<div class="secondary-area"></div>
				<!---->
			</div>
		</section>
		<section class="row info-summary">
			<div class="col-sm pad-horizontal">
				<div class="header">
					<h3 style="display:inline">신청자 정보</h3>
					<a href="mypage?mem" style="text-align: "> 정보수정 </a>
				</div>
				<dl class="info">
					<dt>이메일</dt>
					<dd>bnb0409@gmail.com</dd>
					<dt>이름</dt>
					<dd>이지운</dd>
					<dt>휴대폰번호</dt>
					<dd>+821028788035</dd>
				</dl>
				<p class="desc">
					꼭 실명과 실제 연락이 가능한 연락처를 적어주세요. 신청자 정보에 입력해주신 이름과 연락처로 스터디 안내를 도와드립니다.
					<br> <br> 해외 휴대폰 번호를 입력할 경우 ‘국가번호'를 반드시 입력해주세요.
				</p>
			</div>
		</section>

		<section class="row checkout-methods">
			<div class="col-sm pad-horizontal">
				<h3>결제방식 선택</h3>
				<ul>
					<li><label class="input-group enter-input"><input
							type="radio" required="required" name="payment-method"
							value="[object Object]">
							<p class="desc">
								<img draggable="false"
									src="/ko/static/img/payment/ic_inicis_card_pc.svg"
									class="icon deselected"> <img draggable="false"
									src="/ko/static/img/payment/ic_inicis_card_pc_selected.svg"
									class="icon selected"> <span>신용카드</span>
							</p></label></li>
					<li><label class="input-group enter-input"><input
							type="radio" required="required" name="payment-method"
							value="[object Object]">
							<p class="desc">
								<img draggable="false"
									src="/ko/static/img/payment/ic_inicis_vbank_pc.svg"
									class="icon deselected"> <img draggable="false"
									src="/ko/static/img/payment/ic_inicis_vbank_pc_selected.svg"
									class="icon selected"> <span>가상계좌</span>
							</p></label></li>
				</ul>
				<!---->
			</div>
		</section>
		<section class="row receipt bg-alternative3">
			<div class="col-sm pad-horizontal">
				<dl>
					<dt>정가</dt>
					<dd>132,000원</dd>
					<!---->
					<!---->
					<dt class="summary">총 결제금액</dt>
					<dd>132,000원</dd>
				</dl>
				<ul class="notice">
					<!---->
					<li>전액취소는 <strong><span class="timestamp">2020년
								05월 02일 오전 12시 00분</span> 전</strong> 까지 가능합니다.
					</li>
				</ul>
			</div>
		</section>

		<section class="row checkout-agreements">
			<div class="col-sm pad-horizontal">
				<label class="input-group enter-input required"><span
					class="desc"><a href="javascript:void(0);">개인정보 수집 이용 및
							제3자 제공 동의</a><a href="javascript:void(0);">취소 및 환불 규정</a>에 동의합니다. </span> <input
					name="agree_payment_agreements_checkbox" type="checkbox"></label>
			</div>
		</section>
		<%--
		<section class="row checkout-proceed">
			<div class="col-sm pad-horizontal">
				<button disabled="disabled" class="checkout-proceed-button">
					결제하기
					<!---->
				</button>
			</div>
		</section>
		<div class="row" align="right">
			<section class="col">
				<h5>
					<%=session.getAttribute("member_name")%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				</h5>
			</section>
		</div>



		<div class="row" align="left">
			<section class="col">
				<h5>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E-mail</h5>
			</section>
		</div>

		<div class="row" align="right">
			<section class="col">
				<h5>
					<%=session.getAttribute("member_email")%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				</h5>
			</section>
		</div>



		<div class="row" align="left">
			<section class="col">
				<h5>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;전화번호</h5>
			</section>
		</div>

		<div class="row" align="right">
			<section class="col">
				<h5>
					<%=session.getAttribute("member_phone")%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				</h5>
			</section>
		</div>

		<div class="row" align="center">
			<section class="col">
				<h5>
					&nbsp;&nbsp;&nbsp;실명과 실제 연락처와 일체해야 됩니다.<br> 회원 정보가 변경된 회원분들은
					관리자에게 문의 해 주시거나 회원 정보를 수정해주세요
				</h5>
			</section>
		</div>

		<br> <br>

		<div class="row" align="left">
			<section class="col">
				<h3>결제 방식</h3>
			</section>
		</div>

		<div class="row" align="left">
			<section class="col">
				<input type="radio" name="fruit" value="신용카드" checked="checked">
				신용카드 <img src="resources/img/card.jpg" width="150" height="100">
				<input type="radio" name="fruit" value="휴대폰결제" />휴대폰결제<img
					src="resources/img/phone.png" width="150" height="100">

			</section>
		</div>

	</main>







	<!-- 가격 표시  -->

	<div class="container" style="background-color: darkgray">
		<div class="row" align="center">

			<section class="col">
				<h1>
					<table border="1" style="border-collapse: collapse;">
						<tr>결제 상세 정보
						</tr>
					</table>
				</h1>
			</section>
		</div>
		<br>

		<div class="row" align="left">
			<section class="col">
				<h5>&nbsp;&nbsp;&nbsp;결제 강의</h5>
			</section>
		</div>

		<div class="row" align="left">
			<section class="col">
				<h3>
					<table style="border-collapse: collapse;">
						<c:forEach var="i" items="${class_no}">

							<tr>
								<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-${i.class_name}</td>

							</tr>

						</c:forEach>
					</table>
				</h3>
			</section>
		</div>

		<div class="row" align="left">
			<section class="col">
				<h5>&nbsp;&nbsp;&nbsp;결제 가격</h5>
			</section>
		</div>


		<div class="row" align="left">
			<section class="col">
				<h3>
					<table style="border-collapse: collapse;">
						<c:forEach var="i" items="${class_no}">

							<tr>
								<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${i.class_price}</td>

							</tr>

						</c:forEach>
					</table>
				</h3>
			</section>
		</div>


		<div class="row" align="center">
			<section class="col">
				<h5>
					<c:forEach var="i" items="${class_no}">
						<a href="join?class_no=${i.class_no}"
							onclick="return confirm('정말로 결제하시겠습니까 ?');"><img
							src="resources/img/cashimg.png" width="150" height="100"><br>결제하기</a>

					</c:forEach>
				</h5>
			</section>
		</div>



	</div>
--%>
	</main>
	<footer class="contrainer index-footer">
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