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
</head>
<body>
	<%@ include file="pagetop.jsp"%>
	<!-- header Start -->
	<header class="masthead d-flex detailpage" style="margin-bottom:0;">
		<div class="container text-center my-auto" >
			<div class="row">
				<div class="col">
					<h2 class="mb-1" style="color: #fff">고품질의 강의가 준비되어있습니다.</h2>
				</div>
			</div>
			<div class="row">
				<div class="col">
					<h4 class="mb-5"></h4>
					<a class="btn btn-primary btn-xl js-scroll-trigger" href="machine"
						style="opacity: .9">머신러닝</a> <a
						class="btn btn-primary btn-xl js-scroll-trigger"
						href="programming" style="opacity: .9">프로그래밍</a> <a
						class="btn btn-primary btn-xl js-scroll-trigger" href="design"
						style="opacity: .9">디자인</a> <a
						class="btn btn-primary btn-xl js-scroll-trigger" href="marketing"
						style="opacity: .9">마케팅</a>
				</div>
			</div>
		</div>
		<div class="overlay"></div>
	</header>
	<!-- header End  -->
	<!-- navbar Start -->
        <nav class="navbar navbar-default">
            <div class="container mt-auto" style="align-content: center;">
                    <ul class="nav nav-pills mx-auto">
                        <li role="presentation" class="active"><a href="#portfolio">Portfolio</a></li>
                        <li role="presentation"><a href="#about">About</a></li>
                        <li role="presentation"><a href="#contact">Contact</a></li>
                    </ul>
            </div>
        </nav>
	<!-- navbar End -->
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
								<td>${i.goal_title}</td>

							</tr>

						</c:forEach>
					</table>
				</h3>
			</section>
		</div>


		<div class="row" align="center">

			<section class="col">
				<h3>
					<table border="1" style="border-collapse: collapse;">
						<tr>
							<c:forEach var="i" items="${datas}">

								<%
									if (session.getAttribute("member_no") != null) {
								%>
								<a href="cash?class_no=${i.classinfo_class_no}"><img
									src="resources/img/sinchung.png" width="150" height="100"></a>
								<%
									} else {
								%>
								<hr>
								<hr>
								<!--  
		<a  href="void(0);" onclick="alert('로그인 후 신청하실 수 있습니다.');return false;"><img src="resources/img/sinchung.png" width="150" height="100"></a>
-->
								<a href="cash?class_no=${i.classinfo_class_no}"><img
									src="resources/img/sinchung.png" width="150" height="100"></a>

								<%
									}
								%>


							</c:forEach>

						</tr>
					</table>
				</h3>
			</section>
		</div>
		<br>
	</div>

</body>
</html>