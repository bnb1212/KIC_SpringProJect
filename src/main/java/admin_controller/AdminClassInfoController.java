package admin_controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import admin_model.Admin_ClassInit_AnooInter;

@Controller
public class AdminClassInfoController {
	@Autowired
	Admin_ClassInit_AnooInter anno;

	
	// =========== insert ============
	@RequestMapping(value = "admin_class_info_insert",method = RequestMethod.GET)
	public ModelAndView goInsert(@RequestParam("no") String no) {
		return new ModelAndView("admin/admin_class_info_init","datas",anno.selectPart(no));
	}
	
	@RequestMapping(value = "admin_class_info_insert",method = RequestMethod.POST)
	public String InsertProcess(AdminClassBean bean) {
		try {
			int a = anno.classInsert(bean);
			
			if(a > 0) {
				return "redirect:/admin_classinit";
				
			}else {
				return null;

			}
			
		} catch (Exception e) {
			return "admin/error";
		}

		
	}
	
	// ============ update =============
	@RequestMapping(value = "admin_class_info_update", method = RequestMethod.GET)
	public ModelAndView goupdate(@RequestParam("no") String no) {
		
		if(no.equals("")) {
			return new ModelAndView("redirect:/admin_classinit");
		}else { 
		return new ModelAndView("admin/admin_class_info_upform","datas",anno.selectPart1(no));
		}
	}
	
	@RequestMapping(value = "admin_class_info_update", method = RequestMethod.POST)
	public String updateProcess(AdminClassBean bean) {

		anno.classinfoupdate(bean);
		return "redirect:/admin_classinit";
	}
	// ============ delete =============
	
	@RequestMapping("admin_class_info_delete")
	public String deleteProcess(@RequestParam("no") String no) {

		if(no.equals("")) {
			return "redirect:/admin_classinit";
		}
		anno.classinfodelete(no);
		return "redirect:/admin_classinit";
	}
}
