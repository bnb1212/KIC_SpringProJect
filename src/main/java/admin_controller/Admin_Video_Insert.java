package admin_controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import admin_model.Admin_ClassInit_AnooInter;

@Controller
public class Admin_Video_Insert {
	
	@Autowired
	Admin_ClassInit_AnooInter anno;
	
	@RequestMapping(value = "admin_video_insert", method = RequestMethod.GET)
	public ModelAndView goInsert(@RequestParam("no") String no) {
		
		return new ModelAndView("admin_video_inform","datas",anno.selectPart(no));
	}
	
	@RequestMapping(value = "admin_video_insert", method = RequestMethod.POST)
	public ModelAndView insertProcess(Admin_VideoBean bean) {
		anno.videoinsert(bean);
		return new ModelAndView("redirect:/admin_classinit");
	}
}
