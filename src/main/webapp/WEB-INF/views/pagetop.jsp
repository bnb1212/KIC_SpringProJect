<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%--사이드바 메뉴 내 강의목록 넘어가기 --%>
<script type="text/javascript">
$(document).ready(function(){
	
    AOS.init();
});

	function studyListFunc(category) {
		var frm = $("#category");
		var cate = $("#cate_name");
		cate.val(category)
		$("#category").submit();
	}
	
	function myinfo(no) {
		
		category.action = "myinfo";
		category.submit(no);
		
	}
	
</script>

<!-- header -->
<div id="page-top">
	<!-- Navigation-->
	<nav
		class="navbar navbar-expand-lg bg-secondary text-uppercase fixed-top"
		id="mainNav">
		<div class="container">
			<!-- LOGO -->
			<a class="navbar-brand js-scroll-trigger" href="main">KIC
				STUDYPRO</a>
			<!-- 로그인 버튼 -->
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item mx-0 mx-lg-1"><a
						class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger"
						href="category">전체 카테고리</a></li>
					<!-- 메뉴버튼 -->
					<li class="nav-item mx-0 mx-lg-1"><a href="#"
						class="menu-toggle rounded" data-toggle="collapse"
						data-target="#navbarResponsive" aria-controls="navbarResponsive"
						aria-expanded="false" aria-label="Toggle navigation"> <i
							class="fas fa-bars"></i></a>
					<li>
				</ul>
			</div>
		</div>
	</nav>
	<div class="head-wrapper">
	</div>
</div>
<!-- end header -->
<!-- sidebar navigation -->
<nav id="sidebar-wrapper">
	<form id="category" method="post" action="myStudylist">
		<ul class="sidebar-nav">
			<%
				if (session.getAttribute("member_no") != null) {
			%>
			<li class="sidebar-brand" style="color: #fff;"><%=session.getAttribute("member_name")%>
				님 <a class="menu-toggle rounded" href="#"> <i
					class="fas fa-bars"></i>
			</a></li>
			<li class="sidebar-nav-item"><a class="js-scroll-trigger"
				href="member_logout">로그아웃</a></li>

			<li class="sidebar-nav-item"><a class="js-scroll-trigger"
				href="#" onclick="myinfo(<%=session.getAttribute("member_no")%>)">내
					정보 보기</a></li>

			<!-- 메뉴 버튼 -->
			<li class="sidebar-nav-item"><a class="js-scroll-trigger"
				href="#" onclick='studyListFunc("머신러닝")'>머신러닝</a></li>
			<li class="sidebar-nav-item"><a class="js-scroll-trigger"
				href="#" onclick='studyListFunc("프로그래밍")'>프로그래밍</a></li>
			<li class="sidebar-nav-item"><a class="js-scroll-trigger"
				href="#" onclick='studyListFunc("디자인")'>디자인</a></li>
			<li class="sidebar-nav-item"><a class="js-scroll-trigger"
				href="#" onclick='studyListFunc("마케팅")'>마케팅</a></li>
			<li><input type="hidden" id="cate_name" name="cate">
			<li><input type="hidden" id="mem_no" name="mem"
				value="<%=session.getAttribute("member_no")%>"></li>
			<%
				} else {
			%>
			<li class="sidebar-brand"><a class="js-scroll-trigger" href="#"
				id="loginBtn">로그인</a>
			</li>
			<%
				}
			%>
		</ul>
	</form>
</nav>

<div id="nav_space"></div>

<!-- modal login -->
<%@ include file="member_login.jsp"%>

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
