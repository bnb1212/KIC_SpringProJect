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
<div class="box" style="border-style:solid; border-color: #f5f5f5; border-radius: 4px; padding:20px 20px 20px 20px;">
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
</div>
<div style="margin-top: 10px;">
<h3>스터디 일정</h3><br>
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
</body>
</html>

