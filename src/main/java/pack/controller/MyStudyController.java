package pack.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import pack.model.StudyDaoInter;

@Controller
@ComponentScan("pack.model")
public class MyStudyController{
	
	@Autowired
	@Qualifier("studyDaoImpl")
	private StudyDaoInter inter;
	
	@RequestMapping(value="myStudylist",method=RequestMethod.POST)
	public ModelAndView list(@RequestParam("mem") String mem,@RequestParam("cate") String cate){
		if(cate.isEmpty()) {
			System.out.println("없대");
			return new ModelAndView("mystudylist");
		}else if(mem.isEmpty()) {
			System.out.println("얘도없다");
			return new ModelAndView("mystudylist");
		}else
			return new ModelAndView("mystudylist","list",inter.getcateClass(cate));
	}
}
