
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<title>모여라</title>
<%@ include file="css_scripts.jsp" %>
</head>
<body>
<%@ include file="pagetop.jsp" %>

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

</body>
</html>