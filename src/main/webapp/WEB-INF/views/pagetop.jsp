<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<header class="container index-header" style="white-space: nowrap;">
	<section class="row" style="padding: 14px 0">
		<!-- row -->
		<div class="col-2">
			<div class="logo">
				<a class='logo' href="index.jsp"><img
					style="width: 100px; height: 100px;"
					src="resources/images/logo.png"></a>
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


<%@ include file="member_login.jsp"%>