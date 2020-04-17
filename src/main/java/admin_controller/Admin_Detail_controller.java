package admin_controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import admin_model.Admin_MemberDto;
import admin_model.Admin_MemberInit_Inter;


@Controller
public class Admin_Detail_controller {
	
	@Autowired
	private Admin_MemberInit_Inter inter;
	
	@RequestMapping("admin_memberdetail")
	@ResponseBody
	public Map<String, Object> DetailProcess(@RequestParam("no") String no){
		List<Map<String, String>> dataList = new ArrayList<Map<String,String>>();
		Map<String, String> data =null;
		
		List<Admin_MemberDto> memberList = inter.selectPart(no);
		
		for(Admin_MemberDto s:memberList) {
			data = new HashMap<String, String>();
			data.put("member_no",s.getMember_no());
			data.put("member_name",s.getMember_name());
			data.put("member_email",s.getMember_email());
			data.put("member_passwd",s.getMember_passwd());
			data.put("member_class_no",s.getMember_class_no());
			data.put("member_phone",s.getMember_phone());
			dataList.add(data);
		}
		Map<String, Object> members = new HashMap<String, Object>();
		members.put("datas",dataList);
		
		return members;
		
	}
}
