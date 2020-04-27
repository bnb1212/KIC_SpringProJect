package admin_controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class AdminMainController {
	
	// =========== Site Mapping =========
	
	@RequestMapping("cards")
	public String cards(Model model) {
		return "admin/cards";
	}
	
	@RequestMapping("buttons")
	public String home2(Model model) {
		return "buttons";
	}
	
	@RequestMapping("charts")
	public String home3(Model model) {
		return "charts";
	}
	
	
	
	
	// ============= Login ===============
	@RequestMapping(value = "admin_login", method = RequestMethod.GET)
	public String goLogin() {
		return "admin/admin_login";
	}
	
	@RequestMapping(value = "admin_login", method = RequestMethod.POST)
	public String loginProcess(HttpSession session,
			@RequestParam("admin_id") String admin_id,
			@RequestParam("admin_pwd") String admin_pwd) {
		
		if(admin_id.equals("ceo")&& admin_pwd.equals("123")) {
			session.setAttribute("admin_id", admin_id);
			return "admin/admin_index";
		}else {
			return "admin/admin_login";
		
		}
	}
}
