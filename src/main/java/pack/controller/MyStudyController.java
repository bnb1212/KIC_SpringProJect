package pack.controller;

import java.util.HashMap;
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
	public ModelAndView list(@RequestParam HashMap<String, String> map){
		return new ModelAndView("mystudylist","list",inter.getcateClass(map));
	}
}
