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
	
$('#updetplace').on('keyup', function() {
    if($(this).val().length > 1000) {
        $(this).val($(this).val().substring(0, 1000));
    }
});
	
	var vno = ${vno} 
	detList(vno);

	$('#insertbtn').click(function(){ //댓글 등록 버튼 클릭시 
		if($('#detplace').val() == ""){
			alert("댓글을 입력해주세요")
		} else {
			var content = $('#detplace').val();
			var vno = $('#vno').val();
			var mno = $('#mno').val();
		    det_insert(content,vno,mno); //아래 만들어 놓은 Insert 함수를 호출
		}
	});
})

//댓글 보이는 함수
function detList(param){
	var mno = ${member_no };
    $.ajax({
        url : 'detlist',
        type : 'get',
        data : {'vno':param},
        success : function(detdata){
            var a =''; 
            $.each(detdata, function(key, value){ 
                a += '<div class="detArea" style="border-bottom:1px solid darkgray; margin-bottom: 15px;">';
                a += '<div class="detInfo'+value.det_no+'">'+'댓글번호 : '+value.det_no+' / 작성자 : '+value.mno;
                if(mno == value.mno){
                a += '<a style="cursor:pointer" onclick="det_update('+value.det_no+',\''+value.content+'\',\''+value.vno+'\');"> 수정 </a>';
                a += '<a style="cursor:pointer" onclick="det_delete('+value.det_no+',\''+value.vno+'\');"> 삭제 </a> </div>';
                }else{
                a += '</div>';
                }
                a += '<div class="detContent'+value.det_no+'"> <p> 내용 : '+value.content +'</p>';
                a += '</div></div>';
            });
            
            $(".detshow").html(a);
        }
    });
}

function det_delete(det_no,vno){
	$(".detshow").empty();
	$.ajax({
		type : "post",
		url : "detdelete",
		data : {"det_no":det_no},
		success : function(result) {
			if (result == 1) {
				detList(vno);
			}
		}
	});
}

function det_update(det_no,content,vno){
    var a ='';
    
    a += '<div class="input-group">';
    a += '<textarea id="updetplace" name="updetplace" cols="80" rows="2" style="resize: none;" >'+content+'</textarea>';
    a += '<input type="button" value="수정" onclick="det_updateProc('+det_no+',\''+vno+'\')">'; //여기에 콘텐츠 바뀐거 넣어보셈..
    a += '</div>';
    
    $('.detContent'+det_no).html(a);
    
}

function det_updateProc(det_no,vno){
	if($('#updetplace').val() == ""){
		alert("수정하실 내용을 입력해주세요")
	}else{		
	$(".detshow").empty();
	alert($('#updetplace').val())
	var det_no = det_no;
	alert(det_no);
	$.ajax({
        url : 'detupdate',
        type : 'post',
        data : {'content' : content, 'det_no' : det_no},
        success : function(data){
            if(data == 1) detList(vno); //댓글 수정후 목록 출력 
        }
    });
	}
}


function det_insert(content,vno,mno) {
	$(".detshow").empty();
	$.ajax({
		type : "post",
		url : "detinsert",
		data : {"vno":vno,"content":content,"mno":mno},
		success : function(result) {
			if (result == 1) {
				detList(vno);
				$('#detplace').val('');
			}
		}
	});
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
	<form id="formByte" name="formByte">
	<input type="hidden" id="content" name="content"> 
	<input type="hidden" id="vno" name="vno" value="${v.video_no }"> 
	<input type="hidden" id="mno" name="mno" value="<%=session.getAttribute("member_no") %>"> 
	</form>
	</td>
	<td>
	<input type="button" id="insertbtn" value="등록">
	</td>
	</tr>
	</table>
</div>
<br>
<hr>
<div class="detshow">
</div>
</body>
</html>
