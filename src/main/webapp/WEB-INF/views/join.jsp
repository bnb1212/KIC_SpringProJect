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
<body>
<%@ include file="pagetopdetail.jsp"%>
	<br><br><br><br><br><br>


	<div class="container" style="background-color: powderBlue">
		<div class="row" align="center">

			<section class="col">
				<h1>
					<table  style="border-collapse: collapse;">
						
								<td>결제완료</td>
						
					</table>
				</h1>
			</section>


		</div>


	</div>



<!--        결제 정보 -->






	<div class="container" style="background-color: mistyrose">
	
	
		<div class="row" align="left">
			<section class="col">
				<h5>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;회원이름 이름
				</h5>
			</section>
		</div>
		
		<div class="row" align="right">
			<section class="col">
				<h5>
				<%=session.getAttribute("member_name") %>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				</h5>
			</section>
		</div>
		
		
		
		<div class="row" align="left">
			<section class="col">
				<h5>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E-mail
				</h5>
			</section>
		</div>
		
		<div class="row" align="right">
			<section class="col">
				<h5>
				<%=session.getAttribute("member_email") %>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				</h5>
			</section>
		</div>


		
	<div class="row" align="left">
			<section class="col">
				<h5>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;전화번호
				</h5>
			</section>
		</div>
		
		<div class="row" align="right">
			<section class="col">
				<h5>
				<%=session.getAttribute("member_phone") %>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				</h5>
			</section>
		</div>

		<div class="row" align="left">
			<section class="col">
				<h5>
				<hr>
					&nbsp;&nbsp;&nbsp;결제 강의
				</h5>
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
				<h5>
					&nbsp;&nbsp;&nbsp;결제 가격
				</h5>
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
				<h3>
					<table style="border-collapse: collapse;">
						<c:forEach var="i" items="${class_no}">
							
								<tr>
									<hr>
			<%=session.getAttribute("member_name") %> 회원님!  ${i.class_name} 강의를 신청해주셔서 감사합니다.	<br>
			 항상 즐거운 마음으로 학습에 임해주세요!
								
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
					<hr>
					<a href="index.jsp"><img src="resources/img/homepage.png" width="150" height="100"><br>홈으로</a>
					</c:forEach>
				</h5>
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