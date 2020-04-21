package admin_controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import admin_model.Admin_MemberInit_Inter;

@Controller
public class Admin_MemberInit_Controller {
	
	@Autowired
	private Admin_MemberInit_Inter admin_MemberInit_Inter; 
	
	@RequestMapping("admin_memberinit")
	public ModelAndView memberall() {
		return new ModelAndView("admin_memberinit","datas",admin_MemberInit_Inter.selectList());
	}
	
}
