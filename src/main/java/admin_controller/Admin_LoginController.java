package admin_controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class Admin_LoginController {
	
//	@RequestMapping(value = "admin_login", method = RequestMethod.GET)
//	public String goLogin() {
//		return "admin_login";
//	}
	
	@RequestMapping(value = "admin_login", method = RequestMethod.POST)
	public String loginProcess(HttpSession session,
			@RequestParam("admin_id") String admin_id,
			@RequestParam("admin_pwd") String admin_pwd) {
		
		if(admin_id.equals("ceo")&& admin_pwd.equals("123")) {
			session.setAttribute("admin_id", admin_id);
			return "admin_main";
		}else {
			return "admin_login";
		
		}
		
	}
}
