<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="<c:url value="resources/vendor/css/bootstrap.css" />"
	rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
	integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
	crossorigin="anonymous"></script>
<script src="resources/vendor/js/bootstrap.min.js"></script>
</head>
<body>
<%@ include file="pagetopdetail.jsp"%>

	<div class="container" style="background-color: darkgray">
		<div class="row" align="center">

			<section class="col">
				<h1>
					<table  style="border-collapse: collapse;">
						
								<td>결제하기</td>
						
					</table>
				</h1>
			</section>


		</div>


	</div>



<!--        결제 정보 -->






	<div class="container" style="background-color: floralwhite">
	<div class="row" align="left">
			<section class="col">
				<h3>
					신청자 정보
				</h3>
			</section>
		</div>
	<br><br><br>
	
	
		<div class="row" align="left">
			<section class="col">
				<h5>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;이름
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

<div class="row" align="center">
			<section class="col" >
				<h5>
				&nbsp;&nbsp;&nbsp;실명과 실제 연락처와 일체해야 됩니다.<br> 회원 정보가 변경된 회원분들은 관리자에게 문의 해 주시거나
				회원 정보를 수정해주세요
				</h5>
			</section>
		</div>
		
<br><br>

	<div class="row" align="left">
			<section class="col">
				<h3>
					결제 방식
				</h3>
			</section>
		</div>
		
		<div class="row" align="left">
			<section class="col">
			<input type="radio" name="fruit" value="신용카드" checked="checked"> 신용카드 <img src="resources/img/card.jpg" width="150" height="100">
			<input type="radio" name="fruit" value="휴대폰결제"  />휴대폰결제<img src="resources/img/phone.png" width="150" height="100">
				
			</section>
		</div>

	</div>






	
<!-- 가격 표시  -->

	<div class="container" style="background-color: darkgray">
		<div class="row" align="center">

			<section class="col">
				<h1>
					<table border="1" style="border-collapse: collapse;">
						<tr>결제 상세 정보
						</tr>
					</table>
				</h1>
			</section>
		</div>
<br>

<div class="row" align="left">
			<section class="col">
				<h5>
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
				<h5>
				<form id="category" method="post" action="main">
				
					<input type="submit" value="결제완료">
				
				</form>
				</h5>
			</section>
		</div>
		

	
	</div>







<!--  
<table border="1">
	<tr>
		<td><%=session.getAttribute("member_no") %></td>
	</tr>
	<tr>
		<td><%=session.getAttribute("member_name") %></td>
	</tr>
	<tr>
		<td><%=session.getAttribute("member_phone") %></td>
	</tr>
	<tr>
		<td><%=session.getAttribute("member_email") %></td>
	</tr>
</table>
-->


	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
		integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
		crossorigin="anonymous"></script>


</body>
</html>