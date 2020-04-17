<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html>
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- Bootstrap CSS -->
<link href="<c:url value="resources/css/bootstrap.css" />" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="resources/js/bootstrap.min.js"></script>

<title>Hello, world!</title>
</head>
<body>
	<header class="container index-header" style="white-space: nowrap;">
		<section class="row">
			<div class="col-sm pad-horizontal">
				<div class="gnb">
					<a class='logo' href="index.jsp"
						style="display: inline-block; padding: 0 .5rem 8px;"> 로고 </a>
					<button type="button" class="btn btn-primary" style="float: right">menu</button>
				</div>
			</div>
		</section>
	</header>
	<div class="container" style="background-color: #D7FFF1">
		<div class="row">

			<section class="col">
				<h1>Logo</h1>
			</section>
			<section class="col">
				<h1></h1>
			</section>

			<section class="col" style='text-align: right;'>
				<h1>
					<a href='#'>Login</a>
				</h1>
			</section>

		</div>

	</div>

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
	
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
	
	
	
</body>

</html>