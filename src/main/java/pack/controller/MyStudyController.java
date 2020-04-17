package pack.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MyStudyController{
	
	@RequestMapping(value="myStudylist",method=RequestMethod.GET)
	public ModelAndView list(@RequestParam("cate") String cate){
		System.out.println(cate);
		return new ModelAndView("mystudylist");
	}
}
