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

//댓글 보이기
function detList(param){
	var mno = ${member_no };
    $.ajax({
        url : 'detlist',
        type : 'get',
        data : {'vno':param},
        success : function(detdata){
            var a =''; 
            $.each(detdata, function(key, value){ 
                a += '<div class="detArea" style="border-bottom:0.125rem solid rgba(0, 0, 0, 0.1); margin-bottom: 15px;">';
                a += '<div class="detInfo'+value.det_no+'">'+'작성자 : '+value.member_name+' / 작성시간 : '+value.date+'&emsp;';
                if(mno == value.mno){
                a += '<a style="cursor:pointer" onclick="det_update('+value.det_no+',\''+value.content+'\',\''+value.vno+'\');"> 수정 /  </a>';
                a += '<a style="cursor:pointer" onclick="det_delete('+value.det_no+',\''+value.vno+'\');"> 삭제 </a> </div>';
                }else{
                a += '</div>';
                }
                
                a += '<div class="detContent'+value.det_no+'"><div class="row"><div class="col" style="vertical-align: bottom;"><div class="coment"><p>'+value.content +'</p></div></div>';
                a += '<div class="col" style="text-align:right;"><div class="coment2'+value.det_no+'dap"><button id="ddbtn'+value.det_no+'" class="btn btn-outline-info" onclick="showdap('+value.det_no+');" style="margin-bottom:10px;">답글보기</button></div></div></div>';
                a += '<div class="dapdetContent'+value.det_no+'" style="display:none;">';
                a += '</div></div></div>'; //depdetContent,detContent,detArea div 닫는부분
            });
            
            $(".detshow").html(a);
        }
    });
}

//댓글,답댓글 삭제하기
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
    a += '<div class="input-group">';
    a += '<table><tr><td rowspan="2">'
    a += '<form id="upform" name="upform">';
    a += '<textarea id="upcon_'+det_no+'" name="upcon" class="form-control" cols="80" rows="2" style="resize: none;">'+content+'</textarea></td>';
    a += '<td><input type="button" class="btn btn-outline-danger" value="수정 취소" onclick="detList('+vno+')"></td>'; //여기에 콘텐츠 바뀐거 넣어보셈..
    a += '<tr><td><input type="button" class="btn btn-outline-info" value="수정하기" onclick="det_updateProc('+det_no+',\''+vno+'\')"></form></td></tr></table></div>';
    
    $('.detInfo'+det_no).empty();
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

//이전영상으로 이동
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

//다음영상으로 이동
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

//답글등록을 눌렀을때
function insertdap(param){
		if($('#dapdetplace'+param).val() == ""){
			alert("답글을 입력해주세요")
		} else {
			var content = $('#dapdetplace'+param).val();
			var vno = $('#dvno').val();
			var mno = $('#dmno').val();
			var det_no = param
			dapdet_insert(det_no,content,vno,mno); //아래 만들어 놓은 Insert 함수를 호출
		}
}

//답글 insert하는 부분
function dapdet_insert(det_no,content,vno,mno){
	$(".detshow").empty();
	$.ajax({
		type : "post",
		url : "dapdetinsert",
		data : {"vno":vno,"content":content,"mno":mno,"det_no":det_no},
		success : function(result) {
			if (result == 1) {
				$(".detshow").empty();
				detList(vno);
				$('#dapdetplace'+det_no).val('');
			}
		}
	});
}

//수정하기를 누르면 답글 수정할 수 있게 요소 바꿔준다.
function dapdet_update(det_no,content,vno){
    var a ='';
    
    a += '<div class="dinput-group">';
    a += '<table><tr><td rowspan="2">'
    a += '<form id="dupform" name="dupform">';
    a += '<textarea id="dupcon_'+det_no+'" name="dupcon" class="form-control" cols="80" rows="2" style="resize: none;">'+content+'</textarea>';
    a += '<td><input type="button" class="btn btn-outline-danger" value="수정 취소" onclick="detList('+vno+')"></td>';
    a += '<tr><td><input type="button" class="btn btn-outline-info" value="수정하기" onclick="dapdet_updateProc('+det_no+',\''+vno+'\')"></form></td></tr></table></div>';
    a += '</form></div>';
    
    $('.dapdetInfo'+det_no).empty();
    $('.dapdetContent'+det_no).html(a);
    
}

//답글 수정내용 확인 후 처리
function dapdet_updateProc(det_no,vno){
	if($('#dupcon_'+det_no).val() == ""){
		alert("수정하실 내용을 입력해주세요")
	}else if($('#dupcon_'+det_no).val().length > 1000){
		$('#dupcon_'+det_no).val($('#dupcon_'+det_no).val().substring(0, 1000));
		alert("1000자 이하로 입력해주세요")
	}else{
	var content = $('#dupcon_'+det_no).val();
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

//답글보여주는 ajax
function showdap(param){
	if($(".dapdetContent"+param).hasClass("toggled")) {
		$("#ddbtn"+param).text("답글보기")
		$(".dapdetContent"+param).css("display", "none")
		$(".dapdetContent"+param).removeClass("toggled")
	} else {
	var aa="";
	aa += '<table style="margin-bottom:20px;"><tr><td><i class="far fa-user-circle" style="font-size:50px; margin-right: 10px; color: #ced4da"></i></td>';
    aa += '<td><textarea id="dapdetplace'+param+'" class="form-control" name="dapdetplace" cols="120" rows="2" placeholder="답글을 입력해주세요" style=" margin-right: 10px;"></textarea></td>';
    aa += '<td><form id="dap" name="dap">';
    aa += '<input type="hidden" id="dapcont" name="dapcont">'; 
    aa += '<input type="hidden" id="dvno" name="dvno" value='+${vno}+'>'; 
    aa += '<input type="hidden" id="dmno" name="dmno" value='+<%=session.getAttribute("member_no") %>+'>';
    aa += '</form>';
    aa += '<input type="button" onclick="insertdap('+param+')" class="btn btn-outline-info" value="등록"></td>';
    aa += '</tr>';
    aa += '</table>';
	$.ajax({
		type : "post",
		url : "dapdetlist",
		dataType:"json",
		data : {"parent":param},
		success : function(dapList) {
			var list = dapList.datas;
			$(list).each(function(index,obj){ 
	                aa += '<div class="dapdetArea" style="border-bottom:0.125rem solid rgba(0, 0, 0, 0.1); margin-bottom: 15px;">';
	                aa += '<div class="dapdetInfo'+obj.det_no+'">'+'작성자 : '+obj.member_name+' / 작성시간 : '+obj.date+'&emsp;';
	                if(<%=session.getAttribute("member_no") %> == obj.mno){
	                aa += '<a style="cursor:pointer" onclick="dapdet_update('+obj.det_no+',\''+obj.content+'\',\''+obj.vno+'\');"> 수정 /  </a>';
	                aa += '<a style="cursor:pointer" onclick="det_delete('+obj.det_no+',\''+obj.vno+'\');"> 삭제 </a> </div>';
	                }else{
	                aa += '</div>';
	                }
	                
	                aa += '<div class="dapdetContent'+obj.det_no+'"><div class="row"><div class="col"><div class="dapcoment"><p>'+obj.content+'</p></div></div>';
	                aa += '</div></div></div>'
	            });
				$('.dapdetContent'+param).html(aa);
			},
			error : function(){
				$(".dapdetContent"+param).text("에러!");
			}
		})
		$("#ddbtn"+param).text("답글접기")
		$(".dapdetContent"+param).css("display", "")
		$(".dapdetContent"+param).addClass("toggled");
      }
}
</script>
<%@ include file="css_scripts.jsp" %>
</head>
<body>
<%@include file="pagetop.jsp" %>
<div class="container">
<div class="ac" style="margin-top: 40px;">
<c:set var="v" value="${video }" />
<div style="text-align: left;">
<h2>${v.order_no}. ${v.video_title }</h2>
</div>
<div class="video-container" style="text-align: left; margin-top: 25px;">
<iframe width="1080" height="520" src="${v.video_url}" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</div>
<div style="text-align: left;">
<br><h4>강의설명</h4>
<span>${v.video_info}</span>
</div>
<div class="row" style="margin-top: 50px; margin-bottom: 50px;">
<div class="col" style="text-align: center;">
<button onclick="prev()" class="btn btn-primary btn-lg btn-block" style="box-shadow: none;"><i class="fas fa-chevron-left"></i></button>
</div>
<div class="col" style="text-align: center;">

<form id="back" method="post" action="myStudy">
<input type="hidden" id="clno" name="clno" value=${clno }>
<input type="submit" class="btn btn-primary btn-lg btn-block" style="box-shadow: none;" value="목록으로">
</form>
</div>

<div class="col" style="text-align: center;">
<button onclick="next()" class="btn btn-primary btn-lg btn-block" style="box-shadow: none;"><i class="fas fa-chevron-right"></i></button>
</div>
<form id="gost" method="post" action="myStudyRoom">
<input type="hidden" id="gclno" name="clno">
<input type="hidden" id="gvno" name="vno">
</form>
</div><%--row end --%>
<br>
<div class="row">
<div class="col" style="text-align: left;">
<h4>댓글</h4>
</div>
<div class="col" style="text-align: right;">
<h4>총 ${detcnt}개</h4> 
</div>
</div>
<div class="container" style="margin-top:20px;">
<table>
<tr>
<td><i class="far fa-user-circle fa-3x" style="margin-right: 10px; color: #ced4da"></i></td>
<td><textarea id="detplace" name="detplace" class="form-control" cols="120" rows="2" placeholder="댓글을 입력해주세요"></textarea></td>
<td><form id="formByte" name="formByte">
	<input type="hidden" id="content" name="content"> 
	<input type="hidden" id="vno" name="vno" value="${v.video_no }"> 
	<input type="hidden" id="mno" name="mno" value="<%=session.getAttribute("member_no") %>"> 
</form>
<input type="button" id="insertbtn" class="btn btn-outline-info" style="margin-left: 10px; box-shadow: none;" value="등록"></td>
</tr>
</table>
</div><%-- container end --%>
<hr>
<div class="detshow">
</div><%--detshow end --%>
</div><%--ac end --%>
</div><%--container end--%>
</body>
</html>
