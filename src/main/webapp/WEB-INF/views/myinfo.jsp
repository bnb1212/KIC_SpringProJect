<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html>
<head>
<%@ include file="css_scripts.jsp" %>
<title>모여라</title>
  <link href="resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
	<script type="text/javascript">
	window.onload = function(){
		document.getElementById("gogo").onclick = goupdate;
		
	}
	
	</script>
  <!-- Custom styles for this template-->
  
  <link href="resources/css/sb-admin-2.min.css" rel="stylesheet">
  <link href="resources/css/sb-admin-2.css" rel="stylesheet">
</head>
<body>
	<%@ include file="pagetop.jsp"%>

	<!-- category content -->
	<section class="content-section" id="portfolio">
    <div class="container">
     <div class="card o-hidden border-0 shadow-lg my-5">
      <div class="card-body p-0">
        <!-- Nested Row within Card Body -->
        <div class="row">
          <div class="col-lg-5 d-none d-lg-block bg-myinfo-image"></div>
          <div class="col-lg-7">
            <div class="p-5">
              <div class="text-center">
                <h1 class="h4 text-gray-900 mb-4">내정보 수정</h1>
              </div>
              
              <form name="forminfo"  action="member_update" method="post" id="upform">
                <c:forEach var="s" items="${datas }" >
                <input type="hidden" value="${s.member_no }" name="member_no">
                <input type="hidden" value="${s.member_passwd }"name="member_passwd3">
				<c:set var="memberNo" value="${s.member_no }" />
                <div class="form-group row">
                  <div class="col-sm-11 mb-3 mb-sm-0">
               		   이메일/아이디: ${s.member_email } <br>	
                  </div>
                </div>
                <div class="form-group row">
                 <div class="col-sm-12">
                    <input type="password" class="form-control form-control-user"  name="member_passwd1" placeholder="현재 비밀번호">
                  </div>
                  </div>
                <div class="form-group row">

                  <div class="col-sm-6">
                    <input type="password" class="form-control form-control-user"  name="member_passwd" placeholder="비밀번호">
                  </div>
                  <div class="col-sm-6">
                    <input type="password" class="form-control form-control-user"  name="member_passwd2" placeholder="비밀번호체크">
                  </div>
                </div>
                <div class="form-group">
                  <input type="text" class="form-control form-control-user"  name="member_name" value="${s.member_name }">
                </div>
                <div class="form-group">
                  <input type="text" class="form-control form-control-user" id="phone" name="member_phone" value="${s.member_phone }">
                </div>
                <div class="form-group row">
           		  &nbsp;&nbsp;&nbsp;   수강중인 강좌:
					<c:choose>
					<c:when test="${s.member_class_no == 1 }">
					머신러닝
					</c:when>
					<c:when test="${s.member_class_no == 2 }">
					프로그래밍
					</c:when>
					<c:when test="${s.member_class_no == 3 }">
					디자인
					</c:when>
					<c:when test="${s.member_class_no == 4 }">
					마케팅
					</c:when>
					<c:when test="${s.member_class_no == null }">
					수강중인 강의가 없습니다
					</c:when>
					<c:when test="${s.member_class_no == '' }">
					수강중인 강의가 없습니다
					</c:when>
					</c:choose>
                </div>
                <a href="#" id="gogo" onclick="goupdate()" class="btn btn-primary btn-user btn-block">
                  	내정보 수정
                </a>
                </c:forEach>
              </form>
              <hr>

            </div>
          </div>
        </div>
      </div>
    </div>
    </div>
  </section>
	<!-- category content end -->
	<footer class="contrainer index-footer">
		<section class="row" style="background-color: #8CD790;">
			<div class="col-sm common"
				style="font-size: 1rem; padding: 40px 20px 40px 20px; text-align: center; vertical-align: middle;">

				<p>(주)KIC 스터디 | 대표 4팀</p>
				<p>주소 | 서울특별시 강남구 테헤란로 26길 34,1층</p>
				<p>
					<a href="admin_login" style='text-decoration: none; color: black;'>사업자</a>등록번호
					|687-86-12345 통신판매업
				</p>
				<p>신고번호 | 제2018-서울구로-1234호</p>
				<p>전화번호 | 010.1234.5678</p>
			</div>
		</section>
	</footer>
	<script src="resources/vendor/jquery/jquery.min.js"></script>
	<script src="resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
	<script src="resources/vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for all pages-->
	<script src="resources/js/sb-admin-2.min.js"></script>
	<script src="resources/js/sb-admin-2.js"></script>
	<script src="resources/js/myinfo.js"></script>
</body>


</html>