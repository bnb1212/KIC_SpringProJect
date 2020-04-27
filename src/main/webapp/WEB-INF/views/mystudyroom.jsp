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

//댓글 삭제하기
function det_delete(det_no,vno){
	var result = confirm('정말 삭제하시겠습니까?'); 
	if(result) {
		
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
		else { }
}

//수정하기를 누르면 댓글 수정할 수 있게 요소 바꿔준다.
function det_update(det_no,content,vno){
    var a ='';
    var b = '';
    //b += '<div class="detInfo'+value.det_no+'">';
    b += '<div>';
    a += '<input type="button" value="수정 취소" onclick="detList('+vno+')">';
    b += '</div>';
    
    a += '<div class="input-group">';
    a += '<form id="upform" name="upform">';
    //a += '<input type="text" class="form-control" id="content_'+det_no+'" value="'+content+'"/>';
    a += '<textarea id="upcon_'+det_no+'" name="upcon" cols="80" rows="2" style="resize: none;">'+content+'</textarea>';
    //a += '<input type="hidden" class="form-control" id="content_'+det_no+'"/>';
    a += '<input type="button" value="수정" onclick="det_updateProc('+det_no+',\''+vno+'\')">'; //여기에 콘텐츠 바뀐거 넣어보셈..
    a += '</form></div>';
    
    $('.detInfo'+det_no).html(b);
    $('.detContent'+det_no).html(a);
    
}

//수정내용 확인 후 처리
function det_updateProc(det_no,vno){
	if($('#upcon_'+det_no).val() == ""){
		alert("수정하실 내용을 입력해주세요")
	}else if($('#upcon_'+det_no).val().length > 1000){
		$('#upcon_'+det_no).val($('#upcon_'+det_no).val().substring(0, 1000));
		alert("1000자 이하로 입력해주세요")
	}else{
	//var content = $('#content_'+det_no).val();
	//alert(content)
	var content = $('#upcon_'+det_no).val();
	//alert($('#upcon_'+det_no).val())
	//alert(content);
	$.ajax({
		type : "post",
		url : "detupdate",
		data : {"content":content,"det_no":det_no},
		success : function(result) {
			if (result == 1) {
				$(".detshow").empty();
				detList(vno);
			}
		}
	});
	}
}

//댓글 추가 처리
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

function prev(){
	var c = ${clno};
	var v = ${vno};

	$.ajax({
		type : "post",
		url : "prev",
		data : {"gclno":c},
		success : function(result) {
			if (result == v ) {
				alert('해당 스터디의 첫번째 영상입니다.')
			}
			else{
				var gost = $('#gost')
				var gcl = $('#gclno')
				gcl.val(c)
				var gvn = $('#gvno')
				gvn.val(v-1)
				gost.submit();
			}
		}
	});
}

function next(){
	var c = ${clno};
	var v = ${vno};

	$.ajax({
		type : "post",
		url : "next",
		data : {"gclno":c},
		success : function(result) {
			if (result == v ) {
				alert('해당 스터디의 마지막 영상입니다.')
			}
			else{
				var gost = $('#gost')
				var gcl = $('#gclno')
				gcl.val(c)
				var gvn = $('#gvno')
				gvn.val(v+1)
				gost.submit();
			}
		}
	});
}
</script>
</head>
<body>
<form id="back" method="post" action="myStudy">
<input type="hidden" id="clno" name="clno" value=${clno }>
<input type="submit" value="목록으로">
</form>
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
<div>
<button onclick="prev()">이전</button>
<button onclick="next()">다음</button>
<form id="gost" method="post" action="myStudyRoom">
<input type="hidden" id="gclno" name="clno">
<input type="hidden" id="gvno" name="vno">
</form>
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
