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
public class Admin_Class_Info_Insert_Controller {
	@Autowired
	Admin_ClassInit_AnooInter anno;
	
	@RequestMapping(value = "admin_class_info_insert",method = RequestMethod.GET)
	
	public ModelAndView goInsert(@RequestParam("no") String no) {
		
		return new ModelAndView("admin_class_info_init","datas",anno.selectPart(no));
	}
	
	@RequestMapping(value = "admin_class_info_insert",method = RequestMethod.POST)
	public String InsertProcess(Admin_ClassBean bean) {
		try {
			int a = anno.classInsert(bean);
			
			if(a > 0) {
				return "redirect:/admin_classinit";
				
			}else {
				return null;
				
			}
			
		} catch (Exception e) {
			return "error";
		}

		
	}
}
