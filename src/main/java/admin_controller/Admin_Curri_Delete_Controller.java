package admin_controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import admin_model.Admin_ClassInit_AnooInter;

@Controller
public class Admin_Curri_Delete_Controller {
	
	@Autowired
	Admin_ClassInit_AnooInter anno;
	
	@RequestMapping(value = "admin_curri_delete", method = RequestMethod.GET)
	public ModelAndView goinsert(@RequestParam("no") String no) {
		
		return new ModelAndView("admin_curri_delete","data",anno.selectCurri(no));
	}
	
	@RequestMapping(value = "admin_curri_delete", method = RequestMethod.POST)
	public String insertProcess(Admin_CurriBean bean) {
		try {
			int aa = anno.curridelete(bean);
			
			if(aa > 0) {
				
			return "admin_re";
			}else {
				return "error";
			}
			
		} catch (Exception e) {
			System.out.println(e);
			return "error";
		}
		
		
	}
}
