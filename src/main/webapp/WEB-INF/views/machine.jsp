
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
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
<%@ include file="pagetopdetail.jsp"%>
	<br><br><br><br><br>
	<h2 align="center">머신러닝</h2>
	



	<div class="container" style="background-color: #D7FFF1">
		<div class="row">

			<section class="col">
				<h3>
					<table border="1" width="250" style="border-collapse: collapse;">
						<tr>
							<th>클래스이름</th>
							<c:forEach var="i" items="${datas}">
								<c:if test="${i.class_no eq '4'}">
									<tr>
										<td><a href="detail?classinfo_class_no=${i.class_no}">${i.class_name}</a></td>
									</tr>
								</c:if>
							</c:forEach>
						<tr>
							<th>클래스정보</th>
							<c:forEach var="i" items="${datas}">
								<c:if test="${i.class_no eq '4'}">
									<tr>
										<td>${i.class_info}</td>
									</tr>
								</c:if>
							</c:forEach>
						<tr>
							<th>클래스가격</th>
							<c:forEach var="i" items="${datas}">
								<c:if test="${i.class_no eq '4'}">
									<tr>
										<td>${i.class_price}</td>
									</tr>
								</c:if>
							</c:forEach>
						<tr>
							<th>카테고리</th>
							<c:forEach var="i" items="${datas}">
								<c:if test="${i.class_name eq '머신러닝심화'}">
									<tr>
										<td>${i.class_category}</td>
									</tr>
								</c:if>
							</c:forEach>
					</table>
				</h3>
			</section>
			<section class="col">
				<h3>

					<table border="1" width="250" style="border-collapse: collapse;">
						<tr>
							<th>클래스이름</th>
							<c:forEach var="i" items="${datas}">
								<c:if test="${i.class_no eq '5'}">
									<tr>
										<td><a href="detail?classinfo_class_no=${i.class_no}">${i.class_name}</a></td>
									</tr>
								</c:if>
							</c:forEach>
						<tr>
							<th>클래스정보</th>
							<c:forEach var="i" items="${datas}">
								<c:if test="${i.class_no eq '5'}">
									<tr>
										<td>${i.class_info}</td>
									</tr>
								</c:if>
							</c:forEach>
						<tr>
							<th>클래스가격</th>
							<c:forEach var="i" items="${datas}">
								<c:if test="${i.class_no eq '5'}">
									<tr>
										<td>${i.class_price}</td>
									</tr>
								</c:if>
							</c:forEach>
						<tr>
							<th>카테고리</th>
							<c:forEach var="i" items="${datas}">
								<c:if test="${i.class_no eq '5'}">
									<tr>
										<td>${i.class_category}</td>
									</tr>
								</c:if>
							</c:forEach>
					</table>

				</h3>
			</section>

			<section class="col">
				<h3>

					<table border="1" width="250" style="border-collapse: collapse;">
						<tr>
							<th>클래스이름</th>
							<c:forEach var="i" items="${datas}">
								<c:if test="${i.class_no eq '6'}">
									<tr>
										<td><a href="detail?classinfo_class_no=${i.class_no}">${i.class_name}</a></td>
									</tr>
								</c:if>
							</c:forEach>
						<tr>
							<th>클래스정보</th>
							<c:forEach var="i" items="${datas}">
								<c:if test="${i.class_no eq '6'}">
									<tr>
										<td>${i.class_info}</td>
									</tr>
								</c:if>
							</c:forEach>
						<tr>
							<th>클래스가격</th>
							<c:forEach var="i" items="${datas}">
								<c:if test="${i.class_no eq '6'}">
									<tr>
										<td>${i.class_price}</td>
									</tr>
								</c:if>
							</c:forEach>
						<tr>
							<th>카테고리</th>
							<c:forEach var="i" items="${datas}">
								<c:if test="${i.class_no eq '6'}">
									<tr>
										<td>${i.class_category}</td>
									</tr>
								</c:if>
							</c:forEach>
					</table>
				</h3>
			</section>

		</div>
		<br>
		<hr>
		<h3 align="center">Other categories</h3>
		<br>
		<br>

		<div class="row">
			<section class="col">
				<h4>
					<a href="machine">머신러닝</a>
				</h4>

			</section>
			<section class="col">
				<h4>
					<a href="design">디자인</a><br>
				</h4>
			</section>

			<section class="col">
				<h4>
					<a href="programming">프로그래밍</a><br>
				</h4>
			</section>

			<section class="col">
				<h4>
					<a href="marketing">마케팅</a><br>
				</h4>
			</section>

		</div>
	</div>
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