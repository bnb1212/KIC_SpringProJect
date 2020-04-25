<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Category</title>
<%@ include file="css_scripts.jsp"%>
<script type="text/javascript">

</script>
</head>
<body>
	<%@ include file="pagetop.jsp"%>

	<header class="masthead d-flex">
		<div class="container text-center my-auto" style="margin-bottom: 2vh">
			<h2 class="mb-1">
				스터디프로 Category<br>고품질의 강의가 준비되어있습니다.
			</h2>
			<h4 class="mb-5"></h4>
			<a class="btn btn-primary btn-xl js-scroll-trigger" href="#about">Find
				Out More</a>
		</div>
		<div class="overlay"></div>
	</header>
	
	<section class="showCategory">
		<div class="container">
			<c:set var="col_count" value=0/>
			<c:forEach var="s" items="${courses}">
				<c:set var="col_count" value="${col_count + 1 }"/>
				<c:if test="${col_count % 4 == 1}">
					<div class="row">				
				</c:if>
				<div class="col-sm-3">
					<div class="card card-block" style="padding: 0.5rem;">
						<img class="card-img-top" data-src="holder.js/100px180/"
							alt="100%x180" src="http://loremflickr.com/320/150?random=4"
							data-holder-rendered="true"
							style="height: 180px; width: 100%; display: block;">
						<div class="card-block">
							<h4 class="card-title">${s.class_name }</h4>
							<p class="card-text">Some quick example text to build on the
								card title and make up the bulk of the card's content.</p>
							<a href="#" class="btn btn-outline-primary">상세보기</a>
						</div>
					</div>
				</div>
				<c:if test="${col_count % 4 == 0 }">
					 
				</c:if>
			</c:forEach>
				<div class="col-sm-3">
					<div class="card card-block" style="padding: 0.5rem;">
						<img class="card-img-top" data-src="holder.js/100px180/"
							alt="100%x180" src="resources/img/defaultcourse.jpg"
							data-holder-rendered="true"
							style="height: 180px; width: 100%; display: block;">
						<div class="card-block">
							<h4 class="card-title">Card title</h4>
							<p class="card-text">Some quick example text to build on the
								card title and make up the bulk of the card's content.</p>
							<a href="#" class="btn btn-primary">Button</a>
						</div>
					</div>
				</div>

				<div class="col-sm-3">
					<div class="card card-block" style="padding: 0.5rem;">
						<img class="card-img-top" data-src="holder.js/100px180/"
							alt="100%x180" src="resources/img/defaultcourse.jpg"
							data-holder-rendered="true"
							style="height: 180px; width: 100%; display: block;">
						<div class="card-block">
							<h4 class="card-title">Card title</h4>
							<p class="card-text">Some quick example text to build on the
								card title and make up the bulk of the card's content.</p>
							<a href="#" class="btn btn-primary">Button</a>
						</div>
					</div>
				</div>

				<div class="col-sm-3">
					<div class="card card-block" style="padding: 0.5rem;">
						<img class="card-img-top" data-src="holder.js/100px180/"
							alt="100%x180" src="resources/img/defaultcourse.jpg"
							data-holder-rendered="true"
							style="height: 180px; width: 100%; display: block;">
						<div class="card-block">
							<h4 class="card-title">Card title</h4>
							<p class="card-text">Some quick example text to build on the
								card title and make up the bulk of the card's content.</p>
							<a href="#" class="btn btn-primary">Button</a>
						</div>
					</div>
				</div>
			</div>
			<br>
			<div class="row">
				<div class="col-sm-3">
					<div class="card card-block" style="padding: 0.5rem;">
						<img class="card-img-top" data-src="holder.js/100px180/"
							alt="100%x180" src="http://loremflickr.com/320/150?random=4"
							data-holder-rendered="true"
							style="height: 180px; width: 100%; display: block;">
						<div class="card-block">
							<h4 class="card-title">Card title</h4>
							<p class="card-text">Some quick example text to build on the
								card title and make up the bulk of the card's content.</p>
							<a href="#" class="btn btn-outline-primary">상세보기</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

</body>
</html>