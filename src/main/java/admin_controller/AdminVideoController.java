package admin_controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import admin_model.Admin_ClassInit_AnooInter;

@Controller
public class AdminVideoController {
	
	@Autowired
	Admin_ClassInit_AnooInter anno;
	
	// =========== insert =============
	@RequestMapping(value = "admin_video_insert", method = RequestMethod.GET)
	public ModelAndView goInsert(@RequestParam("no") String no) {
		
		return new ModelAndView("admin/admin_video_inform","datas",anno.selectPart(no));
	}
	
	@RequestMapping(value = "admin_video_insert", method = RequestMethod.POST)
	public ModelAndView insertProcess(Admin_VideoBean bean) {
		anno.videoinsert(bean);
		return new ModelAndView("redirect:/admin_classinit");
	}
	
	// ============ update ============
	@RequestMapping(value = "admin_video_update", method = RequestMethod.GET)
	public ModelAndView goUpdate(@RequestParam("no") String no) {
		
		return new ModelAndView("admin/admin_video_update","datas",anno.selectVideoPart(no));	
	}
	
	@RequestMapping(value = "admin_video_update", method = RequestMethod.POST)
	public String UpdateProcess(Admin_VideoBean bean) {
		anno.videoupdate(bean);
		return "redirect:/admin_classinit";
	}


	// ============ delete ============
	
	@RequestMapping(value = "admin_video_delete", method = RequestMethod.GET )
	public String goVideoDelete() {
		
		return "admin_video_delete";
	}
	
	@RequestMapping(value = "admin_video_delete", method = RequestMethod.POST )
	public String deleteProcess(@RequestParam("video_no") String video_no) {
		int a = anno.videodelete(video_no);
		
		if(a > 0 ) {
			return "admin/admin_re";
			
		}else {
			return "admin/error";
		}
		
	}
}
