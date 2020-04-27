package pack.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
	public ModelAndView machinelist() {
	ModelAndView mav = new ModelAndView("categoryview", "list", inter.selectCategory("머신러닝"));
	return mav;
	}
	@RequestMapping("programming")
	public ModelAndView programmingList() {
	ModelAndView mav = new ModelAndView("categoryview", "list", inter.selectCategory("프로그래밍"));
	return mav;
	}
	@RequestMapping("design")
	public ModelAndView designList() {
	ModelAndView mav = new ModelAndView("categoryview", "list", inter.selectCategory("디자인"));
	return mav;
	}
	@RequestMapping("marketing")
	public ModelAndView marketingList(HttpServletRequest request, HttpServletResponse response) {
	ModelAndView mav = new ModelAndView("categoryview", "list", inter.selectCategory("마케팅"));
	return mav;
	}
}
