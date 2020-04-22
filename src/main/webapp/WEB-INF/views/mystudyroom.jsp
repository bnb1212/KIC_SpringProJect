<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">
$( document ).ready(function(){
	$('#byteInfo').on('keyup', function() {
	    if($(this).val().length > 10) {
	        $(this).val($(this).val().substring(0, 10));
	    }
	});
})
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
	<textarea id="byteInfo" name="byteInfo" cols="80" rows="2" style="resize: none;" placeholder="글자수 100자 제한"></textarea>
	<form id="formByte" name="formByte" action="detinsproc.jsp" method="post">
	<input type="hidden" id="content" name="content"> 
	<input type="hidden" id="vno" name="vno" value="${v.video_no }"> 
	<input type="hidden" id="pid" name="pid" value=""> 
	</form>
	</td>
	<td>
	<input type="button" id="button" value="등록">
	</td>
	</tr>
	</table>
</div>
<br>
<div>
dddd
</div>
</body>
</html>
