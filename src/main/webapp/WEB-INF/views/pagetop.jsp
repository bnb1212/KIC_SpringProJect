<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- sidebar navigation -->

  <a class="menu-toggle rounded" href="#">
    <i class="fas fa-bars"></i>
  </a>
  <nav id="sidebar-wrapper">
    <ul class="sidebar-nav">
      <li class="sidebar-brand">
        <a class="js-scroll-trigger" href="#page-top">Start Bootstrap</a>
      </li>
      <li class="sidebar-nav-item">
        <a class="js-scroll-trigger" href="#page-top">Home</a>
      </li>
      <li class="sidebar-nav-item">
        <a class="js-scroll-trigger" href="#about">About</a>
      </li>
      <li class="sidebar-nav-item">
        <a class="js-scroll-trigger" href="#services">Services</a>
      </li>
      <li class="sidebar-nav-item">
        <a class="js-scroll-trigger" href="#portfolio">Portfolio</a>
      </li>
      <li class="sidebar-nav-item">
        <a class="js-scroll-trigger" href="#contact">Contact</a>
      </li>
    </ul>
  </nav>
  
<!-- header -->
<header class="container index-header" style="white-space: nowrap;">
	<section class="row" style="padding: 14px 0">
		<!-- row -->
		<div class="col-2">
			<div class="logo">
				<a class='logo' href="index.jsp"><img
					style="width: 100px; height: 100px;"
					src="resources/img/logo.png"></a>
			</div>
		</div>
		<div class="col">
			<div class="searchBox">
				<input type="text" class="form-control" placeholder="search"
					id="searchInput" />
			</div>
		</div>
		<div class="col">
			<div class="headerbuttons" style="text-align: right; color: black; padding-top:20px;">
				<%
					if (session.getAttribute("member_no") != null) {
				%>
				<a href='logout'>로그아웃</a>
				&nbsp;&nbsp;
				<button class="btn btn-dark btn-sm" >menu</button>
				<%
					} else {
				%>
				<a id="loginBtn" href="#">로그인</a>
				<%
					}
				%>
			</div>
		</div>
		<!-- end row -->
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

<!-- modal login -->
<%@ include file="member_login.jsp"%>