package pack.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.servlet.ModelAndView;

import pack.model.ClassInter;


@Controller
public class CashController {
	

	@Autowired
	@Qualifier("classImpl")
	private ClassInter inter;
	
	
	@RequestMapping("cash")
	public ModelAndView searchProcess(ClassBean bean) {
		//System.out.println(bean.getClassinfo_class_no());
		ModelAndView detailModel = new ModelAndView("cash");
		String no = bean.getClass_no();
		
		detailModel.addObject("class_no", inter.selectClass(no));
		detailModel.addObject("curri", inter.selectCurri(no));
		
		return detailModel;
		
	}
	
	

}
