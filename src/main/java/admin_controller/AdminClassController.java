package admin_controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import admin_model.Admin_ClassInit_AnooInter;
import admin_model.Admin_ClassInit_Inter;

@Controller
public class AdminClassController {

	@Autowired
	private Admin_ClassInit_Inter admin_ClassInit_Inter;

	@Autowired
	Admin_ClassInit_AnooInter anno;

	// ========= init =========== 
	@RequestMapping("admin_classinit")
	public ModelAndView classProcess() {
		return new ModelAndView("admin/admin_classinit", "datas", admin_ClassInit_Inter.selectList());
	}

	// ========== detail ===========
	@RequestMapping("admin_classdetail")
	public ModelAndView detailProcess(@RequestParam("no") String no) {
		ModelAndView mav = new ModelAndView("admin_classdetail");
		mav.addObject("datas", anno.selectPart(no));
		mav.addObject("videos", anno.selectVideo(no));
		mav.addObject("curri", anno.selectCurri(no));
		return mav;
	}
	
	// ========== insert ===========
	@RequestMapping(value = "admin_class_insert", method = RequestMethod.GET)
	public String goinsert() {
		return "admin/admin_classinsertform";	
	}
	
	@RequestMapping(value = "admin_class_insert", method = RequestMethod.POST)
	public ModelAndView insertProcess(AdminClassBean bean) {
		anno.insert(bean);
		return new ModelAndView("redirect:/admin_classinit");
	}
	
	// ========== update ===========
	@RequestMapping(value = "admin_class_update", method = RequestMethod.GET)
	public ModelAndView goClassUpdate(@RequestParam("no") String no) {
		
		return new ModelAndView("admin/admin_classupform","datas",anno.selectPart(no));
	}
	
	@RequestMapping(value = "admin_class_update", method = RequestMethod.POST)
	public ModelAndView ClassUpdateProcess(AdminClassBean bean) {
			anno.update(bean);
		return new ModelAndView("redirect:/admin_classinit");
	}
	
	// ========== delete ===========
	@RequestMapping("admin_class_delete")
	public ModelAndView deleteProcess(@RequestParam("no") String no) {
		anno.delete(no);
		return new ModelAndView("redirect:/admin_classinit");
	}
}
