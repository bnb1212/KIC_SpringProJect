package admin_controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import admin_model.Admin_ClassInit_AnooInter;
import admin_model.Admin_ClassInit_Inter;

@Controller
public class Admin_Classinit_Controller {
	
	@Autowired
	private Admin_ClassInit_Inter admin_ClassInit_Inter;
	
	@RequestMapping("admin_classinit")
	public ModelAndView classProcess() {
		
		return new ModelAndView("admin_classinit","datas",admin_ClassInit_Inter.selectList());
	}
}
