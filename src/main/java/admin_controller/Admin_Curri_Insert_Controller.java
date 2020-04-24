package admin_controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import admin_model.Admin_ClassInit_AnooInter;

@Controller
public class Admin_Curri_Insert_Controller {
	
	@Autowired
	Admin_ClassInit_AnooInter anno;
	
	@RequestMapping(value = "admin_curri_insert", method = RequestMethod.GET)
	public ModelAndView goinsert(@RequestParam("no") String no) {
		
		return new ModelAndView("admin_curri_inform","datas", anno.selectPart(no));
	}
	
	@RequestMapping(value = "admin_curri_insert", method = RequestMethod.POST)
	public ModelAndView insertProcess(Admin_CurriBean bean) {
		anno.curriinsert(bean);
		return new ModelAndView("redirect:/admin_classinit");
	}
}
