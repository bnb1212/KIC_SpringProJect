package admin_controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import admin_model.Admin_MemberDto;
import admin_model.Admin_MemberInit_AnnoInter;


@Controller
public class Admin_Update_Controller {
	
	@Autowired
	private Admin_MemberInit_AnnoInter inter;
	
	
	@RequestMapping(value = "update", method = RequestMethod.GET)
	public ModelAndView goUpdate(@RequestParam("no") String no) {
		Admin_MemberDto dto = inter.selectPart1(no);
		return new ModelAndView("admin_update","datas", dto);
	}
	
	@RequestMapping(value = "admin_update", method = RequestMethod.POST)
	public ModelAndView updateProcess(Admin_MemberBean bean) {
		inter.update(bean);
		return new ModelAndView("admin_re");
	}
	 
	
}
