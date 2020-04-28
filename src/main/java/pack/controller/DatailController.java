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
import pack.model.ClassinfoDto;
import pack.model.CurriDto;

@Controller
public class DatailController {
	
	@Autowired
	@Qualifier("classImpl")
	private ClassInter inter;
	
	
	
	@RequestMapping("detail")
	public ModelAndView searchDetail(@RequestParam("classinfo_class_no") String no) {
		//System.out.println(bean.getClassinfo_class_no());
		ModelAndView detailModel = new ModelAndView("details");
		ClassDto dto = inter.selectCatePart(no);
		ClassinfoDto dto2 = inter.selectDetail(no);
		List<CurriDto> list = inter.selectCurri(no);
		
		detailModel.addObject("classes", dto);
		detailModel.addObject("datas", dto2);
		detailModel.addObject("curr", list);
		
		return detailModel;
		
	}
	
	
}
