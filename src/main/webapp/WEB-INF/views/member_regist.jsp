<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
window.onload = function(){
	document.getElementById("btnId").onclick =
		function idcheck() {
		if(regForm.member_email.value === ""){
			alert("아이디/이메일을 입력하시오");
			regForm.member_email.focus();
		}else{
			url = "member_idcheck?id=" +  regForm.member_email.value;
			window.open(url, "get", "width=300,height=200,top=400,left=300");
		}
}
	
		
		
	document.getElementById("btnSubmit").onclick =  function inputcheck(){
		
		if(regForm.member_email.value === ""){
			alert("아이디를 입력하시오");
			regForm.member_email.focus();
			return;
		}else if(regForm.member_passwd.value === ""){
			alert("비밀번호를 입력하시오");
			regForm.member_passwd.focus();
			return;
		}else if(regForm.member_passwd1.value === ""){
			alert("비밀번호를 입력하시오");
			regForm.member_passwd1.focus();
			return;
		}else if(regForm.member_name.value === ""){
			alert("이름을 입력하시오");
			regForm.member_name.focus();
			return;
		}else if(regForm.member_phone.value === ""){
			alert("전화번호를 입력하시오");
			regForm.member_phone.focus();
			return;
		}else if(regForm.member_passwd.value !== regForm.member_passwd1.value){
			alert("비밀번호를 확인하시오");
			regForm.member_passwd.focus();
			return;
		}
		
		
		regForm.submit();
	}
		
}

</script>
</head>
<body>
<form action="member_regist" method="post" name="regForm">
아이디/이메일: <input type="text" name="member_email"> <input type="button" value="Id중복확인" id="btnId"><br>
비밀번호: <input type="password" name="member_passwd"><br>
비밀번호 재확인: <input type="password" name="member_passwd1"><br>
이름: <input type="text" name="member_name"><br>
휴대폰 번호: <input type="text" name="member_phone"><br>
<input type="button" id="btnSubmit" value="회원가입"> 
</form>

</body>
</html>