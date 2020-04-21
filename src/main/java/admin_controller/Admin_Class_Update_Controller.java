package admin_controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import admin_model.Admin_ClassInit_AnooInter;

@Controller
public class Admin_Class_Update_Controller {
	
	@Autowired
	Admin_ClassInit_AnooInter anno;
	
	@RequestMapping(value = "admin_class_update", method = RequestMethod.GET)
	public ModelAndView goClassUpdate(@RequestParam("no") String no) {
		
		return new ModelAndView("admin_classupform","datas",anno.selectPart(no));
	}
	
	@RequestMapping(value = "admin_class_update", method = RequestMethod.POST)
	public ModelAndView ClassUpdateProcess(Admin_ClassBean bean) {
			anno.update(bean);
		return new ModelAndView("redirect:/admin_classinit");
	}
}
