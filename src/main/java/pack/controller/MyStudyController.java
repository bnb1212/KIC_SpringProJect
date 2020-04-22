package pack.controller;

import java.util.ArrayList;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import pack.model.StudyDaoInter;
import pack.model.VideoDto;

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
	
	@RequestMapping(value="myStudy",method=RequestMethod.POST)
	public ModelAndView list2(@RequestParam("clno") String clno){
		ModelAndView m = new ModelAndView("mystudy","curries",inter.getClassCurri(clno));
		m.addObject("clname", inter.getClassName(clno));
		m.addObject("clno", clno);
		return m;
	}
	
	@RequestMapping("videolist")
	@ResponseBody
	public Map<String, Object> videoFunc(@RequestParam HashMap<String, String> map){
		List<Map<String, String>> dataList = new ArrayList<Map<String,String>>();
		Map<String, String> data = null;
		
		List<VideoDto> videoList =  inter.getVideoPart(map); //모델과 통신
		for(VideoDto v: videoList) {
			data = new HashMap<String, String>();
			
			data.put("video_no",v.getVideo_no());
			data.put("video_url",v.getVideo_url());
			data.put("class_no",v.getClass_no());
			data.put("section_no",v.getSection_no());
			data.put("upload_date",v.getUpload_date());
			data.put("video_title",v.getVideo_title());
			data.put("video_info",v.getVideo_info());
			dataList.add(data);
		}
		
		Map<String, Object> videoLists = new HashMap<String, Object>();
		videoLists.put("datas", dataList);
		
		return videoLists;
	}
	
	@RequestMapping(value="myStudyRoom",method=RequestMethod.POST)
	public ModelAndView list(@RequestParam String vno){
		ModelAndView m = new ModelAndView("mystudyroom","video",inter.getVideo(vno));
		return m;
	}
}
