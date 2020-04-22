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
}
