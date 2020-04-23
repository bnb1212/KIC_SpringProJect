package pack.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

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
	public String loginProcess(HttpSession session, MemberBean bean) {

		try {
			MemberDto dto = inter.loginCheck(bean);

			if (dto != null) {
				session.setAttribute("member_no", dto.getMember_no());
				session.setAttribute("member_name", dto.getMember_name());
				session.setAttribute("member_email", dto.getMember_email());
				session.setAttribute("member_phone", dto.getMember_phone());
			} else {
				return "loginerror";
			}
		} catch (Exception e) {
			System.out.println("error : " + e);
			return "redirect:/";
		}
		return "redirect:/";

	}

	@RequestMapping("member_logout")
	public ModelAndView logout(HttpSession session) {
		session.invalidate();
		ModelAndView mv = new ModelAndView("redirect:/");
		return mv;
	}
}
