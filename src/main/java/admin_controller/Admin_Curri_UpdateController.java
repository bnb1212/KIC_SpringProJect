package admin_controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import admin_model.Admin_ClassInit_AnooInter;

@Controller
public class Admin_Curri_UpdateController {
	
	@Autowired
	Admin_ClassInit_AnooInter anno;
	
	
	@RequestMapping(value = "admin_curri_update", method = RequestMethod.GET)
	public ModelAndView goUpdete(@RequestParam("no") String no) {
		
		return new ModelAndView("admin_curri_update","datas",anno.selcetCurriPart(no));
	}
	
	@RequestMapping(value = "admin_curri_update", method = RequestMethod.POST)
	public ModelAndView goUpdete(Admin_CurriBean bean) {
			anno.curriupdate(bean);
		return new ModelAndView("redirect:/admin_classinit");
	}
	
	
}
