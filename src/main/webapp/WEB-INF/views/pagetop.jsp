<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<script type="text/javascript">
$( document ).ready(function(){
	$('input').click(function(){
		if($('#member_no').val() == 'null' ){ // 로그인 정보 있는지 확인하는 부분
		alert('로그인 후 이용가능합니다.')
		}else{
		var frm = $("#category");
		var cate = $("#cate_name")
		cate.val($(this).val())
		$("#category").submit();
		}
	});
})
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
			<!-- mobile button -->
			<button
				class="navbar-toggler navbar-toggler-right text-uppercase font-weight-bold bg-primary text-white rounded"
				type="button" data-toggle="collapse" data-target="#navbarResponsive"
				aria-controls="navbarResponsive" aria-expanded="false"
				aria-label="Toggle navigation">
				Menu <i class="fas fa-bars"></i>
			</button>

			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item mx-0 mx-lg-1">
					<!-- 로그인 버튼 -->
					<%
					if (session.getAttribute("member_no") != null) {
					%>
					<a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="member_logout">로그아웃</a>
					<%
					} else {
					%>
					<a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="#" id="loginBtn">로그인</a> 
					<%
					}
					%>
					</li>
					<!-- 로그인 끝 -->
					<li class="nav-item mx-0 mx-lg-1"><a
						class="menu-toggle rounded" href="#"> <i class="fas fa-bars"></i>
					</a></li>

				</ul>
			</div>
		</div>
	</nav>
</body>

<header class="container index-header" style="white-space: nowrap;">
	</section>
	<section class="row justify-content-center">
		<ul class="nav justify-content-center">
			<li class="nav-item"><a class="nav-link active" href="#">전체보기</a>
			</li>
			<li class="nav-item"><a class="nav-link" href="machine">머신러닝</a></li>
			<li class="nav-item"><a class="nav-link" href="programming">프로그래밍</a></li>
			<li class="nav-item"><a class="nav-link" href="design">디자인</a></li>
			<li class="nav-item"><a class="nav-link" href="marketing">마케팅</a></li>
		</ul>
	</section>
</header>
<!-- end header -->


<form id="category" method="post" action="myStudylist">
<input type="button" value="머신러닝" name="c"><br>
<input type="button" value="프로그래밍" name="c"><br>
<input type="button" value="디자인" name="c"><br>
<input type="button" value="마케팅" name="c"><br>
<input type="hidden" id="cate_name" name="cate">
<input type="hidden" id="mem_no" name="mem" value="<%=session.getAttribute("member_no") %>">
</form>
<!-- sidebar navigation -->
<nav id="sidebar-wrapper">
		<form id="category" method="post" action="myStudylist">
	<ul class="sidebar-nav">
		<li class="sidebar-brand"><a class="js-scroll-trigger"
			href="mypage">내 정보 보기</a></li>
		<li class="sidebar-nav-item"><a class="js-scroll-trigger"
			href="#page-top">머신러닝</a></li>
		<li class="sidebar-nav-item"><a class="js-scroll-trigger"
			href="#about">프로그래밍</a></li>
		<li class="sidebar-nav-item"><a class="js-scroll-trigger"
			href="#services">디자인</a></li>
		<li class="sidebar-nav-item"><a class="js-scroll-trigger"
			href="#portfolio">마케팅</a></li>
		<li><input type="hidden" id="cate_name" name="cate"><li>
		<li><input type="hidden" id="mem_no" name="mem" value="<%=session.getAttribute("member_no") %>"></li>
	</ul>
		</form>
</nav>


<!-- modal login -->
<%@ include file="member_login.jsp"%>