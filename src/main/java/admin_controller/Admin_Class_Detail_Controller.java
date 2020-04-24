package admin_controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import admin_model.Admin_ClassInit_AnooInter;

@Controller
public class Admin_Class_Detail_Controller {
	
	@Autowired
	Admin_ClassInit_AnooInter anno;
	
	@RequestMapping("admin_classdetail")
	public ModelAndView detailProcess(@RequestParam("no") String no) {
		ModelAndView mav = new ModelAndView("admin_classdetail");
		mav.addObject("datas", anno.selectPart(no));
		mav.addObject("videos", anno.selectVideo(no));
		mav.addObject("curri", anno.selectCurri(no));
		return mav;
	}
}