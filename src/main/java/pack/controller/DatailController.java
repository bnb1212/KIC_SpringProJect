package pack.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import pack.model.ClassDto;
import pack.model.ClassInter;

@Controller
public class DatailController {
	@Autowired
	@Qualifier("classImpl")
	private ClassInter inter;
	

	
	@RequestMapping("detail")
	public ModelAndView searchProcess(ClassinfoBean bean) {
		return new ModelAndView("details", "datas", inter.selectDetail(bean));
	}
}
