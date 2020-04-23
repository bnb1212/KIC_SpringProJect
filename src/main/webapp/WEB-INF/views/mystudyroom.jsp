<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
//로그인했다고 가정하려고 만든거.
session.setAttribute("member_no", "1");
%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">
$( document ).ready(function(){
	$('#detplace').on('keyup', function() {
	    if($(this).val().length > 1000) {
	        $(this).val($(this).val().substring(0, 1000));
	    }
	});
})

function det_insert(param){
	if($('#detplace').val() == ""){
		alert("댓글을 입력해주세요")
	} else {
		var content = $('#detplace').val();
		$(".detshow").empty();
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
		
      }
}
</script>
</head>
<body>
<c:set var="v" value="${video }" />
<div style="text-align: left;">
<h2>${v.order_no}. ${v.video_title }</h2>
</div>
<div class="video-container" style="text-align: left; margin-top: 25px;">
<iframe width="1080" height="520" src="${v.video_url}" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</div>
<div style="text-align: left;">
<h3>강의설명</h3>
<span>${v.video_info}</span>
</div>
<br>
<h4>댓글</h4>
<div>
<table>
	<tr>
	<td>
	<img style="width:50px; height:50px;" src="resources/img/face_emoji.png">
	</td>
	<td>
	<textarea id="detplace" name="detplace" cols="80" rows="2" style="resize: none;" placeholder="댓글을 입력해주세요"></textarea>
	<form id="formByte" name="formByte" action="detinsproc.jsp" method="post">
	<input type="hidden" id="content" name="content"> 
	<input type="hidden" id="vno" name="vno" value="${v.video_no }"> 
	<input type="hidden" id="pid" name="pid" value=""> 
	</form>
	</td>
	<td>
	<input type="button" id="button" onclick="det_insert(<%=session.getAttribute("member_no") %>)" value="등록">
	</td>
	</tr>
	</table>
</div>
<br>
<hr>
<div id="detshow">
<c:if test="${empty detlist }">
<h4>댓글이 없습니다.</h4>
</c:if>
<c:if test="${!empty detlist }">
<table>
<c:forEach var="det" items="${detlist}">
	<tr>
	<td>
	<img style="width:50px; height:50px;" src="resources/img/face_emoji.png">
	</td>
	<td>
	<c:out value="${det.content}" />
	</td>
	</tr>
</c:forEach>
</table>
</c:if>
</div>
</body>
</html>
