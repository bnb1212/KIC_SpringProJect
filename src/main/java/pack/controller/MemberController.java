package pack.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import pack.model.MemberDto;
import pack.model.MemberInter;

@Controller
public class MemberController {
	// 회원의 회원가입, 결제 기능을 관리하는 컨트롤러 입니다. -지운

	@Autowired
	@Qualifier("memberImpl")
	private MemberInter inter;

	// 로그인 기능
	@RequestMapping(value = "member_login", method = RequestMethod.POST)
	public String loginProcess(HttpSession session,
			@RequestParam("member_email") String member_email,
			@RequestParam("member_passwd") String member_passwd) {
		MemberDto dto = inter.selectMemberEmail(member_email);
		
		if(member_passwd.equals(dto.getMember_passwd())) {
			session.setAttribute("member_email", member_email);
			return "index.jsp";
		}else {
			return "admin_login";
			}
	
	}
}
