package admin_controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import admin_model.Admin_ClassInit_AnooInter;


@Controller
public class Admin_Video_Update_Controller {
	
	@Autowired
	Admin_ClassInit_AnooInter anno;
	
	@RequestMapping(value = "admin_video_update", method = RequestMethod.GET)
	public ModelAndView goUpdate(@RequestParam("no") String no) {
		
		return new ModelAndView("admin_video_update","datas",anno.selectVideoPart(no));	
	}
	
	@RequestMapping(value = "admin_video_update", method = RequestMethod.POST)
	public String UpdateProcess(Admin_VideoBean bean) {
		anno.videoupdate(bean);
		return "redirect:/admin_classinit";
	}

}
