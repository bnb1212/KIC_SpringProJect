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
			<div class="row">
				<div class="col">
					<h2 class="mb-1">스터디프로 Category<br>고품질의 강의가 준비되어있습니다.
					</h2>
				</div>
			</div>
			<div class="row">
				<div class="col">
				<h4 class="mb-5"></h4>
				<a class="btn btn-primary btn-xl js-scroll-trigger" href="machine" style="opacity:.9">머신러닝</a>
				<a class="btn btn-primary btn-xl js-scroll-trigger" href="programming" style="opacity:.9">프로그래밍</a>
				<a class="btn btn-primary btn-xl js-scroll-trigger" href="design" style="opacity:.9">디자인</a>
				<a class="btn btn-primary btn-xl js-scroll-trigger" href="marketing" style="opacity:.9">마케팅</a>
			</div>
			</div>
		</div>
		<div class="overlay"></div>
	</header>
	
	<section class="showCategory">
		<div class="container">
			<div class="row">
			<c:set var="col_count" value="0"/>
			<c:forEach var="s" items="${list}">
				<c:set var="col_count" value="${col_count + 1 }"/>
				
				<%-- 행의 첫번째 컨텐츠일 경우 
				<c:if test="${col_count % 4 == 1}">
					<div class="row">				
				</c:if>
				--%>
				<div class="col-lg-3">
					<div class="card card-block" style="padding: 0.5rem;">
						<img class="card-img-top" data-src="holder.js/100px180/"
							alt="100%x180" src="http://loremflickr.com/320/150?random='${col_count }'"
							data-holder-rendered="true"
							style="height: 180px; width: 100%; display: block;">
						<div class="card-block">
							<h4 class="card-title">${s.class_name }</h4>
							<p class="card-text">${s.class_info }</p>
							<a href="detail?classinfo_class_no=${s.class_no }" class="btn btn-outline-primary">상세보기</a>
						</div>
					</div>
				</div>
				
				<%--행의 마지막 컨텐츠일경우 
				<c:if test="${col_count % 4 == 0 }">
					 
				</c:if>
				--%>
			</c:forEach>
			</div>
		</div>
	</section>

</body>
</html>