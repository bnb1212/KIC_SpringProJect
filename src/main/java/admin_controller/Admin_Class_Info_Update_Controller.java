package admin_controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import admin_model.Admin_ClassInit_AnooInter;

@Controller
public class Admin_Class_Info_Update_Controller {
	
	@Autowired
	Admin_ClassInit_AnooInter anno;
	
	@RequestMapping(value = "admin_class_info_update", method = RequestMethod.GET)
	public ModelAndView goupdate(@RequestParam("no") String no) {
		
		if(no.equals("")) {
			return new ModelAndView("redirect:/admin_classinit");
		}else { 
		return new ModelAndView("admin_class_info_upform","datas",anno.selectPart1(no));
		}
	}
	
	@RequestMapping(value = "admin_class_info_update", method = RequestMethod.POST)
	public String updateProcess(Admin_ClassBean bean) {

		anno.classinfoupdate(bean);
		return "redirect:/admin_classinit";
	}
}
