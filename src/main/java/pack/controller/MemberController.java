package pack.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class MemberController {
	// 회원의 회원가입, 결제 기능을 관리하는 컨트롤러 입니다. -지운
	
	// 로그인 기능
	@RequestMapping(value = "member_login", method = RequestMethod.POST)
	public String loginProcess(HttpSession session,
			@RequestParam("member_email") String member_email,
			@RequestParam("member_passwd") String member_passwd) {
		/*
		if(admin_id.equals("ceo")&& admin_pwd.equals("123")) {
			session.setAttribute("admin_id", admin_id);
			return "admin_main";
		}else {
			return "admin_login";
		
		 */
		return null;
		}
	
	}
	
