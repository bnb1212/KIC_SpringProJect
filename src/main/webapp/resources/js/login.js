$(document).ready(function() {
	$("#loginBtn").click(function() {
		$('div.modal').modal();
	});
});

$(function() {
	// 로그인 처리
	$('#login_submit').click(function(e) {
		//e.preventDefault();
		if ($("#member_email").val() == '') {
			alert('이메일을 입력하세요');
			$("#member_email").focus();
			return false;
		}

		if ($("#member_passwd").val() == '') {
			alert('비밀번호를 입력하세요');
			$("#member_passwd").focus();
			return false;
		}
		$('#loginform').submit();
	});
});

