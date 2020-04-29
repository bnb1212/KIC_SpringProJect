package pack.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import pack.model.ClassDto;
import pack.model.ClassInter;
import pack.model.ClassinfoDto;


@Controller
public class CashController {
	

	@Autowired
	@Qualifier("classImpl")
	private ClassInter inter;
	
	
	@RequestMapping("cash")
	public ModelAndView searchProcess(HttpServletRequest request, HttpServletResponse response, @RequestParam("classinfo_class_no") String no) {
		//System.out.println(bean.getClassinfo_class_no());
		ModelAndView detailModel = new ModelAndView("cash");
		ClassDto dto = inter.selectCatePart(no);
		
		detailModel.addObject("classdata", dto);
		
		return detailModel;
		
	}
	
	

}
