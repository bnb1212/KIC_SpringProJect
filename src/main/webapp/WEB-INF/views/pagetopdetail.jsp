<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<script type="text/javascript">
	function studyListFunc(category) {
		var frm = $("#category");
		var cate = $("#cate_name");
		cate.val(category)
		$("#category").submit();
	}
</script>

<!-- header -->
<body id="page-top">
	<!-- Navigation-->
	<nav
		class="navbar navbar-expand-lg bg-secondary text-uppercase fixed-top"
		id="mainNav">
		<div class="container">
			<!-- LOGO -->
			<a class="navbar-brand js-scroll-trigger" href="#page-top">KIC
				STUDYPRO</a>
			<!-- 로그인 버튼 -->
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ml-auto">
					<li>
					상단 메뉴
					</li>
					<!-- 메뉴버튼 -->
					<li class="nav-item mx-0 mx-lg-1"><a
						class="menu-toggle rounded" href="#"> <i class="fas fa-bars"></i>
					</a></li>
				</ul>
			</div>
		</div>
	</nav>

</body>
<!-- end header -->

<!-- sidebar navigation -->
<nav id="sidebar-wrapper">
	<form id="category" method="post" action="myStudylist">
		<ul class="sidebar-nav">
			<%
				if (session.getAttribute("member_no") != null) {
			%>
			<li class="sidebar-brand"><%=session.getAttribute("member_name")%>
				님 <a class="menu-toggle rounded" href="#"> <i
					class="fas fa-bars"></i>
			</a></li>
			<li class="sidebar-nav-item"><a class="js-scroll-trigger"
				href="member_logout">로그아웃</a></li>
			<li class="sidebar-nav-item"><a class="js-scroll-trigger"
				href="#mypage">내 정보 보기</a> <!-- 메뉴 버튼 --></li>
			<%
				} else {
			%>
			<li class="sidebar-brand"><a class="js-scroll-trigger" href="#"
				id="loginBtn">로그인</a> <a class="menu-toggle rounded" href="#"> <i
					class="fas fa-bars"></i>
			</a></li>
			<%
				}
			%>
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
		</ul>
	</form>
</nav>



<!-- modal login -->
<%@ include file="member_login.jsp"%>
