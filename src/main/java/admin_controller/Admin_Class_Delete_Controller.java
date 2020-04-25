package admin_controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import admin_model.Admin_ClassInit_AnooInter;

@Controller
public class Admin_Class_Delete_Controller {
	
	@Autowired
	Admin_ClassInit_AnooInter anno;
	
	
	@RequestMapping("admin_class_delete")
	public ModelAndView deleteProcess(@RequestParam("no") String no) {
		anno.delete(no);
		return new ModelAndView("redirect:/admin_classinit");
	}
}
