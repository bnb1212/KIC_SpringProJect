package admin_controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import admin_model.Admin_ClassInit_AnooInter;

@Controller
public class Admin_Video_Delete_Controller {
	
	@Autowired
	Admin_ClassInit_AnooInter anno;
	
	@RequestMapping(value = "admin_video_delete", method = RequestMethod.GET )
	public String goVideoDelete() {
		
		return "admin_video_delete";
	}
	
	@RequestMapping(value = "admin_video_delete", method = RequestMethod.POST )
	public String deleteProcess(@RequestParam("video_no") String video_no) {
		int a = anno.videodelete(video_no);
		
		if(a > 0 ) {
			return "admin_re";
			
		}else {
			return "error";
		}
		
	}
	
}
