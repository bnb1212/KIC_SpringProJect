package pack.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import pack.model.MemberAnnoInter;

@Controller
public class MyInfoController {
	@Autowired
	MemberAnnoInter anno;
	
	@RequestMapping(value = "myinfo", method = RequestMethod.POST)
	public ModelAndView gomyinfo(@RequestParam("mem") String mem) {
		
		return new ModelAndView("myinfo","datas",anno.selectPart(mem));
	}
	
	@RequestMapping(value = "member_update", method = RequestMethod.POST)
	public String updateProcess(MemberBean bean) {
		anno.update(bean);
		return "redirect:/main";
	}
}
