package admin_controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import admin_model.Admin_ClassInit_AnooInter;

@Controller
public class Admin_Class_Info_Delete_Controller {
	
	@Autowired
	Admin_ClassInit_AnooInter anno;
	
	@RequestMapping("admin_class_info_delete")
	public String deleteProcess(@RequestParam("no") String no) {

		if(no.equals("")) {
			return "redirect:/admin_classinit";
		}
		anno.classinfodelete(no);
		return "redirect:/admin_classinit";
	}
}
