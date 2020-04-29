<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    .box {
    margin-top : 60px;
}
@import url(https://fonts.googleapis.com/css?family=Muli:400, 300);

.calendar, .calendar_weekdays, .calendar_content {
    max-width: 300px;
}
.calendar {
    margin: auto;
    font-family:'Muli', sans-serif;
    font-weight: 400;
}
.calendar_content, .calendar_weekdays, .calendar_header {
    position: relative;
    overflow: hidden;
}
.calendar_weekdays div {
    display:inline-block;
    vertical-align:top;
}
.calendar_weekdays div, .calendar_content div {
    width: 14.28571%;
    overflow: hidden;
    text-align: center;
    background-color: transparent;
    color: #6f6f6f;
    font-size: 14px;
}
.calendar_content div {
    border: 1px solid transparent;
    float: left;
}
.calendar_content div:hover {
    border: 1px solid #dcdcdc;
    cursor: default;
}
.calendar_content div.blank:hover {
    cursor: default;
    border: 1px solid transparent;
}
.calendar_content div.past-date {
    color: #d5d5d5;
}
.calendar_content div.today {
    font-weight: bold;
    font-size: 14px;
    color: #87b633;
    border: 1px solid #dcdcdc;
}
.calendar_content div.selected {
    background-color: #f0f0f0;
}
.calendar_header {
    width: 100%;
    text-align: center;
}
.calendar_header h2 {
    padding: 0 10px;
    font-family:'Muli', sans-serif;
    font-weight: 300;
    font-size: 18px;
    color: #87b633;
    float:left;
    width:70%;
    margin: 0 0 10px;
}
button.switch-month {
    background-color: transparent;
    padding: 0;
    outline: none;
    border: none;
    color: #dcdcdc;
    float: left;
    width:15%;
    transition: color .2s;
}
button.switch-month:hover {
    color: #87b633;
}
  </style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">
function getlecture(param){
	if($(".lecture_cover"+param).hasClass("toggled")) {
		$(".lecture_cover"+param).css("display", "none")
		$(".lecture_cover"+param).removeClass("toggled")
	} else {
		$(".lecture_cover"+param).empty();
		var clno = ${clno } 
		$.ajax({
			type:"get",
			url:"videolist",
			dataType:"json",
			data:{"clno":clno,"sctno":param},
			success:function(videoData){
				var list = videoData.datas;
				var str= "** 해당 섹션 영상 목록 **  총 "+$(list).length+"개<br>";
				$(list).each(function(index,obj){
					str += "<div class=unit_item style='margin-bottom: 5px; cursor: pointer; background-color: #f5f5f5; border-radius: 2px;'>"
					str += "<span class=unit_title onclick=gostudyroom("+obj.video_no+")>";
					str +=   "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" + obj.video_title;
					str += "</span><br>";
					str += "</div>";
				});
				$(".lecture_cover"+param).html(str);
			},
			error : function(){
				$(".lecture_cover"+param).text("에러!");
			}
		})
		$(".lecture_cover"+param).css("display", "")
		$(".lecture_cover"+param).addClass("toggled");
      }
}

function gostudyroom(param){
	var frm = $("#frm");
	var vno = $("#vno")
	vno.val(param)
	var c = ${clno}
	var clno = $("#clno")
	clno.val(c)
	$("#frm").submit();
}
</script>
<%@ include file="css_scripts.jsp" %>
</head>
<body>
<%@include file="pagetop.jsp" %>
<div class="container">
<div class="box" style="width:auto; border-style:solid; border-color: #f5f5f5; border-radius: 4px; padding:20px 20px 20px 20px;">
<!-- row start -->
<div class="row">
<div class="col">
<div class="curriculum" style="margin: auto;">
<h3>${clname } 스터디과정</h3><br>
<div class="curriculum_accordion unit_section_list">
<div class="section_cover">
	<c:forEach var="m" items="${curries }">
		<div class="section_header_open" onclick="getlecture(${m.section_no })" style="margin-bottom: 10px; cursor: pointer; font-size: 20px; font-weight: bold;">
			<div class="section_header">
			<span class="section_no">
				<i class="fas fa-plus"></i>&nbsp;&nbsp;섹션 ${m.section_no }. ${m.goal_title }
			</span>
			</div>
		</div>
		<div class="lecture_cover${m.section_no }" style="display:none; margin-bottom: 20px;">
		</div>
	</c:forEach>
</div>
</div>
</div>
</div>
<!-- first col end -->
<div class="col" style="background-color: #f5f5f5; margin-right: 20px;">
<div style="margin-top: 10px;">
<h3>학습자료</h3><br>
<ul>
<li><a href="https://www.aladin.co.kr/home/welcome.aspx" target="blank">사용할 교재</a></li>
<li><a href="https://www.aladin.co.kr/home/welcome.aspx" target="blank">부교재</a></li>
<li><a href="resources/img/TensorFlow-Basic-Concept_Ko.pdf" download>pdf자료 다운로드</a></li>
</ul>
</div>
<div style="margin-top: 10px;">
<h3>스터디 일정</h3><br>
<div class="calendar calendar-first" id="calendar_first">
    <div class="calendar_header">
        <button class="switch-month switch-left"> <i class="fa fa-chevron-left"></i></button>
         <h2></h2>
        <button class="switch-month switch-right"> <i class="fa fa-chevron-right"></i></button>
    </div>
    <div class="calendar_weekdays"></div>
    <div class="calendar_content"></div>
</div>
</div>
</div>
</div>
<!-- row end -->
</div>
</div>
<form id="frm" method="post" action="myStudyRoom">
<input type="hidden" id="vno" name="vno">
<input type="hidden" id="clno" name="clno">
</form>
<footer class="contrainer index-footer">
		<section class="row" style="background-color: #8CD790; margin-top: 40px;">
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
<script type="text/javascript" src="resources/js/joycal.js"></script>
</body>
</html>

