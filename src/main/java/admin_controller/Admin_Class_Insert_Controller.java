package admin_controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import admin_model.Admin_ClassInit_AnooInter;

@Controller
public class Admin_Class_Insert_Controller {
	
	@Autowired
	Admin_ClassInit_AnooInter anno;
	
	@RequestMapping(value = "admin_class_insert", method = RequestMethod.GET)
	public String goinsert() {
		return "admin_classinsertform";	
	}
	
	@RequestMapping(value = "admin_class_insert", method = RequestMethod.POST)
	public ModelAndView insertProcess(Admin_ClassBean bean) {
		anno.insert(bean);
		return new ModelAndView("redirect:/admin_classinit");
	}
}
