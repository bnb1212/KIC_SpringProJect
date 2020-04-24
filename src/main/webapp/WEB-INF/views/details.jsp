<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="<c:url value="resources/vendor/css/bootstrap.css" />"
	rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
	integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
	crossorigin="anonymous"></script>
<script src="resources/vendor/js/bootstrap.min.js"></script>
<%--
$.{dod
session.
set

 --%>
</head>
<body>
<%@ include file="pagetopdetail.jsp"%>
	



	<div class="container" style="background-color: Yellow">
		<div class="row" align="center">

			<section class="col">
				<h1>
					<table border="1" style="border-collapse: collapse;">
						<c:forEach var="i" items="${datas}">
							<tr>
								<td>${i.classinfo_for}</td>
							</tr>
						</c:forEach>
					</table>
				</h1>
			</section>


		</div>
		<div class="row" align="center">
			<section class="col">
				<h3>
					<table style="border-collapse: collapse;">
						<c:forEach var="i" items="${datas}">
							<tr>
								<td>-< ${i.classinfo_fors_one} >-</td>
							</tr>
						</c:forEach>
					</table>
				</h3>
			</section>
		</div>

		<div class="row" align="center">
			<section class="col">
				<h5>
					<table style="border-collapse: collapse;">
						<c:forEach var="i" items="${datas}">
							<tr>
								<br>
								<td>${i.classinfo_forc_one}</td>
							</tr>
						</c:forEach>
					</table>
				</h5>
			</section>
		</div>

		<div class="row" align="center">
			<section class="col">
				<h3>
					<table style="border-collapse: collapse;">
						<c:forEach var="i" items="${datas}">
							<tr>
								<br>
								<td>-< ${i.classinfo_fors_two} >-</td>
							</tr>
						</c:forEach>
					</table>
				</h3>
			</section>
		</div>

		<div class="row" align="center">
			<section class="col">
				<h5>
					<table style="border-collapse: collapse;">
						<c:forEach var="i" items="${datas}">
							<tr>
								<br>
								<td>${i.classinfo_forc_two}</td>
							</tr>
						</c:forEach>
					</table>
				</h5>
			</section>
		</div>

		<div class="row" align="center">
			<section class="col">
				<h3>
					<table style="border-collapse: collapse;">
						<c:forEach var="i" items="${datas}">
							<tr>
								<br>
								<td>-< ${i.classinfo_fors_three} >-</td>
							</tr>
						</c:forEach>
					</table>
				</h3>
			</section>
		</div>

		<div class="row" align="center">
			<section class="col">
				<h5>
					<table style="border-collapse: collapse;">
						<c:forEach var="i" items="${datas}">
							<tr>
								<br>
								<td>${i.classinfo_forc_three}</td>
							</tr>
						</c:forEach>
					</table>
				</h5>
			</section>
		</div>


	</div>



	<br>
	<br>




	<div class="container" style="background-color: green">
		<div class="row" align="center">

			<section class="col">
				<h1>
					<table border="1" style="border-collapse: collapse;">
						<c:forEach var="i" items="${datas}">
							<tr>
								<td>${i.classinfo_goal}</td>
							</tr>
						</c:forEach>
					</table>
				</h1>
			</section>
		</div>


		<div class="row" align="center">
			<section class="col">
				<h3>
					<table style="border-collapse: collapse;">
						<c:forEach var="i" items="${datas}">
							<tr>
								<td>-< ${i.classinfo_goals_one} >-</td>
							</tr>
						</c:forEach>
					</table>
				</h3>
			</section>
		</div>



		<div class="row" align="center">
			<section class="col">
				<h5>
					<table style="border-collapse: collapse;">
						<c:forEach var="i" items="${datas}">
							<tr>
								<br>
								<td>${i.classinfo_goalc_one}</td>
							</tr>
						</c:forEach>
					</table>
				</h5>
			</section>
		</div>


		<div class="row" align="center">
			<section class="col">
				<h3>
					<table style="border-collapse: collapse;">
						<c:forEach var="i" items="${datas}">
							<tr>
								<td>-< ${i.classinfo_goals_two} >-</td>
							</tr>
						</c:forEach>
					</table>
				</h3>
			</section>
		</div>



		<div class="row" align="center">
			<section class="col">
				<h5>
					<table style="border-collapse: collapse;">
						<c:forEach var="i" items="${datas}">
							<tr>
								<br>
								<td>${i.classinfo_goalc_two}</td>
							</tr>
						</c:forEach>
					</table>
				</h5>
			</section>
		</div>


		<div class="row" align="center">
			<section class="col">
				<h3>
					<table style="border-collapse: collapse;">
						<c:forEach var="i" items="${datas}">
							<tr>
								<td>-< ${i.classinfo_subtitle_three} >-</td>
							</tr>
						</c:forEach>
					</table>
				</h3>
			</section>
		</div>



		<div class="row" align="center">
			<section class="col">
				<h5>
					<table style="border-collapse: collapse;">
						<c:forEach var="i" items="${datas}">
							<tr>
								<br>
								<td>${i.classinfo_content_three}</td>
							</tr>
						</c:forEach>
					</table>
				</h5>
			</section>
		</div>
	</div>



	<br>
	<br>


	<div class="container" style="background-color: Mistyrose">
		<div class="row" align="center">

			<section class="col">
				<h1>
					<table border="1" style="border-collapse: collapse;">
						<tr>[ CURRICULUM ]
						</tr>
					</table>
				</h1>
			</section>
		</div>
<br>

		<div class="row" align="center">
			<section class="col">
				<h3>
					<table style="border-collapse: collapse;">
						<c:forEach var="i" items="${curri}">
							
								<tr>
									<td>●${i.goal_title}</td>
									
								</tr>
						
						</c:forEach>
					</table>
				</h3>
			</section>
		</div>
		
		
		<div class="row" align="center">

			<section class="col">
				<h1>
					<table border="1" style="border-collapse: collapse;">
						<tr>
						<c:forEach var="i" items="${datas}">
<a href="cash?class_no=${i.classinfo_class_no}"><img src="resources/img/sinchung.png" width="150" height="100"></a>
</c:forEach>
						</tr>
					</table>
				</h1>
			</section>
		</div>
<br>
	


	
	</div>
	<br><br>



	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
		integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
		crossorigin="anonymous"></script>


</body>
</html>