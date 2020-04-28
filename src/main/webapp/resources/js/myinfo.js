 function goupdate(){
	 phonecheck()
	if(forminfo.member_passwd1.value !== forminfo.member_passwd3.value){
		alert('현재 비밀번호가 틀립니다 다시 확인해주세요');
		return;
	}else if(forminfo.member_passwd.value !== forminfo.member_passwd2.value){
		alert('변경하고싶은 비밀번호가 서로 다릅니다 다시 확인해주세요')
		return;
	}else if(forminfo.member_name.value == ""){
		alert('이름은 공백이 될 수 없습니다.');
		return;
	}else if(phonecheck() == false){
		 alert('잘못된 휴대폰 번호입니다.');
		 return;
	}else if(forminfo.member_passwd.value == "" && forminfo.member_passwd2.value == ""){
		forminfo.member_passwd.value = forminfo.member_passwd1.value
		forminfo.member_passwd2.value = forminfo.member_passwd1.value
		document.getElementById('upform').submit();
	}else{
		document.getElementById('upform').submit();
	}
}

 
 
 function phonecheck() {
		var phonenum = document.getElementById("phone").value;
		 var regPhone = /(01[0|1|6|9|7])[-](\d{3}|\d{4})[-](\d{4}$)/g; 
		 if(!regPhone.test(phonenum)){
		  return false;    
		 }
	}