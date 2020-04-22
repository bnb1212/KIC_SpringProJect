package admin_controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import admin_model.Admin_MemberInit_AnnoInter;

@Controller
public class Admin_Delete_controller {
	
	@Autowired
	Admin_MemberInit_AnnoInter admin_MemberInit_AnnoInter;
	
	@RequestMapping("admin_delete")
	public String delete(@RequestParam("no") String no) {
			
		admin_MemberInit_AnnoInter.delete(no);
		return "redirect:/admin_memberinit";
	}
}
