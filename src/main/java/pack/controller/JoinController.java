package pack.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import pack.model.ClassInter;

@Controller
public class JoinController {
	
	@Autowired
	@Qualifier("classImpl")
	private ClassInter inter;
	
	@RequestMapping("join")
	public ModelAndView searchProcess(HttpSession session,ClassBean bean) {
		//System.out.println(bean.getClassinfo_class_no());
		ModelAndView detailModel = new ModelAndView("join");
		
		
		String no = bean.getClass_no();
		
		System.out.println(no);
		System.out.println((String) session.getAttribute("member_no"));
		String member_no = (String) session.getAttribute("member_no");

		
		InsertBean insertBean = new InsertBean();
		insertBean.setClass_no(no);
		insertBean.setMember_no(member_no);
		
		System.out.println(insertBean.getClass_no());
		System.out.println(insertBean.getMember_no());
		detailModel.addObject("class_no", inter.selectClass(no));
		inter.insertClass(insertBean);
		detailModel.addObject("member",inter.selectMember(member_no));
	
		
		
		return detailModel;
		
	}


}
