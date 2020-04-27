package pack.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
import pack.model.CurriDto;

@Controller
public class DatailController {
	
	@Autowired
	@Qualifier("classImpl")
	private ClassInter inter;
	
	
	
	@RequestMapping("detail")
	public ModelAndView searchDetail(ClassinfoBean bean) {
		//System.out.println(bean.getClassinfo_class_no());
		ModelAndView detailModel = new ModelAndView("details");
		String no = bean.getClassinfo_class_no();
		
		detailModel.addObject("datas", inter.selectDetail(bean));
		detailModel.addObject("curri", inter.selectCurri(no));
		
		return detailModel;
		
	}
	
	
}
