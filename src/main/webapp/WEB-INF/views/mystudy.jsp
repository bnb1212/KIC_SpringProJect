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
					str += "<div class=unit_item>"
					str += "<span class=unit_title onclick=gostudyroom("+obj.video_no+")>";
					str += obj.video_title;
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
	$("#frm").submit();
}
</script>
</head>
<body>
<h2>${clname } 스터디과정</h2>
<div class="section_cover">
	<c:forEach var="m" items="${curries }">
		<div class="section_header_open" onclick="getlecture(${m.section_no })">
			<div class="section_header">
			<span class="section_no">
				${m.section_no }
				</span>
				<span class="section_title">
				${m.goal_title }
				</span>
			</div>
		</div>
		<div class="lecture_cover${m.section_no }" style="display:none;">
		</div>
	</c:forEach>
</div>
<br>
<form id="frm" method="post" action="myStudyRoom">
<input type="hidden" id="vno" name="vno">
</form>
</body>
</html>

