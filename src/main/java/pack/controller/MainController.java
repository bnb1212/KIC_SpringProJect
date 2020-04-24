package pack.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {

	@RequestMapping("main")
	public String home(Model model) {
		return "main";
	}
	
	@RequestMapping("index")
	public String home2(Model model) {
		return "index";
	}
	
	@RequestMapping("cate")
	public String cate(Model model) {
		return "categoryview";
	}

	@RequestMapping(value= "admin_login", method=RequestMethod.GET)
	public String home3(Model model) {
		return "admin_login";
	}
}
