package pack.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class CashController {
	
	//로그인처리가 빠지고 바로 캐시폼으로 간다.
	@RequestMapping(value = "cash")
	public ModelAndView dd() {

		
		ModelAndView modelAndView = new ModelAndView("cash");

		
		
		return modelAndView;
	}

}
