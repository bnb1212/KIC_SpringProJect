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
	
	//내가 신청한 스터디 리스트들 나옴
	@RequestMapping(value="myStudylist",method=RequestMethod.POST)
	public ModelAndView list(@RequestParam HashMap<String, String> map){
		return new ModelAndView("mystudylist","list",inter.getcateClass(map));
	}
	
	//내가 신청한 스터디 커리큘럼페이지
	@RequestMapping(value="myStudy",method=RequestMethod.POST)
	public ModelAndView list2(@RequestParam("clno") String clno){
		ModelAndView m = new ModelAndView("mystudy","curries",inter.getClassCurri(clno));
		m.addObject("clname", inter.getClassName(clno));
		m.addObject("clno", clno);
		return m;
	}
	
	
	//ajax로 섹션에 해당하는 비디오들 불러오려고 만듬
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
	
	//해당 스터디 스터디룸을 보이기 위해 영상정보 가져옴 + 댓글정보도 가져와야함
	@RequestMapping(value="myStudyRoom",method=RequestMethod.POST)
	public ModelAndView list(@RequestParam String vno){
		ModelAndView m = new ModelAndView("mystudyroom","video",inter.getVideo(vno));
		m.addObject("detlist",inter.getdetAll(vno));
		return m;
	}
	
	
	
	//영상에 댓글다는 부분
	@RequestMapping("detinsert")
	@ResponseBody
	public int detInsert(@RequestParam String vno, @RequestParam String content, @RequestParam String mno) throws Exception{
        
        Video_detBean bean = new Video_detBean();
        bean.setContent(content);
        bean.setVno(vno);
        bean.setMno(mno);
      
        return inter.insertDet(bean);
    }
}
