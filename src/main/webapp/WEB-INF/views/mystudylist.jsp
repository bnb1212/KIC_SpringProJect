<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">
 function editUser(param)
    {
	var frm = $("#frm");
	var clno = $("#clno")
	clno.val(param)
	$("#frm").submit();
    };
</script>
<%@ include file="css_scripts.jsp" %>
</head>
<body>
<%@include file="pagetop.jsp" %>
<div class="catename" style="text-align: center; margin-top: 60px; margin-bottom: 60px;">
<h2>${catename }</h2>
</div>
<c:choose>
<c:when test="${fn:length(list) > 0}">	
	<section class="showCategory">
		<div class="container" style="margin-bottom:60px;">
			<div class="row">
			<c:set var="col_count" value="0"/>
			<c:forEach var="s" items="${list}">
				<c:set var="col_count" value="${col_count + 1 }"/>
				
				<%-- 행의 첫번째 컨텐츠일 경우 
				<c:if test="${col_count % 4 == 1}">
					<div class="row">				
				</c:if>
				--%>
				<div class="col-lg-3" data-aos="zoom-in-up" data-aos-duration="800">
					<div class="card card-block" style="padding: 0.5rem;">
						<img class="card-img-top" data-src="holder.js/100px180/"
							alt="100%x180" src="http://loremflickr.com/320/150?random='${col_count }'"
							data-holder-rendered="true"
							style="height: 180px; width: 100%; display: block;">
						<div class="card-block">
							<h4 class="card-title">${s.class_name }</h4>
							<p class="card-text">${s.class_info }</p>
							<a onclick="editUser(${s.class_no }); return false;" class="btn btn-outline-primary">학습하기</a>
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
</c:when>
<c:when test="${fn:length(list) == 0}">
<div style="text-align: center; margin-top: 60px; margin-bottom: 60px; height: auto; vertical-align: middle;">
<h4><img src="https://img.icons8.com/pastel-glyph/64/000000/empty-box.png"/></h4><br>
<h3>신청하신 스터디가 없습니다.</h3>
</div>
        
    </c:when>
	</c:choose>
<form id="frm" method="post" action="myStudy">
<input type="hidden" id="clno" name="clno">
<input type="hidden" id="vno" name="vno">
</form>
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

</body>
</html>

