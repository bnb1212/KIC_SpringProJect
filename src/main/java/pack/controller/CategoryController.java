package pack.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import pack.model.ClassImpl;

@Controller
public class CategoryController {

	@Autowired
	private ClassImpl inter;
	
	@RequestMapping("machine")
	public ModelAndView machine() {
	ModelAndView mav = new ModelAndView("categoryview", "courses", inter.selectCategory("machine"));
	return mav;
	}
}
