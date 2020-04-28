 function inputcheck(){
			phonecheck()
			if(regForm.member_email.value === ""){
				alert("아이디를 입력하세요");
				regForm.member_email.focus();
				return;
			}else if(regForm.idDuplication1.value !== "idCheck"){
					alert("아이디 중복확인을 해주세요")
					regForm.member_email.focus();
					return;
			}else if(regForm.member_passwd.value === ""){
				alert("비밀번호를 입력하세요");
				regForm.member_passwd.focus();
				return;
			}else if(regForm.member_passwd1.value === ""){
				alert("비밀번호를 입력하세요");
				regForm.member_passwd1.focus();
				return;
			}else if(regForm.member_name.value === ""){
				alert("이름을 입력하세요");
				regForm.member_name.focus();
				return;
			}else if(regForm.member_phone.value === ""){
				alert("전화번호를 입력하세요");
				regForm.member_phone.focus();
				return;
			}else if(phonecheck() == false){
				 alert('잘못된 휴대폰 번호입니다.');
				 regForm.member_phone.focus();
				 return;
			}
			else if(regForm.member_passwd.value !== regForm.member_passwd1.value){
				alert("비밀번호를 확인하세요");
				regForm.member_passwd.focus();
				return;
			}
			
			
			regForm.submit();
		}
 
function idcheck() {

		if(regForm.member_email.value === ""){
			alert("아이디/이메일을 입력하시요");
			regForm.member_email.focus();
		}
		else{
			var abc = check();
			if(abc == false){
				return;
			}
			
			url = "member_idcheck?id=" +  regForm.member_email.value;
			window.open(url, "get", "width=300,height=200,top=400,left=300");
		} 
	}

function check() {		
	var email = document.getElementById("email").value;
	var exptext = /^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/;	
		if(exptext.test(email)==false){
		//이메일 형식이 알파벳+숫자@알파벳+숫자.알파벳+숫자 형식이 아닐경우			
		alert("이메일형식이 올바르지 않습니다.");
		regForm.member_email.focus();
		return false;
	}
}

function phonecheck() {
	var phonenum = document.getElementById("phone").value;
	 var regPhone = /(01[0|1|6|9|7])[-](\d{3}|\d{4})[-](\d{4}$)/g; 
	 if(!regPhone.test(phonenum)){
	  return false;    
	 }
}