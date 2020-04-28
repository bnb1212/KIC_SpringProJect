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
import pack.model.Video_detDto;

@Controller
@ComponentScan("pack.model")
public class MyStudyController{
	
	@Autowired
	@Qualifier("studyDaoImpl")
	private StudyDaoInter inter;
	
	//내가 신청한 스터디 리스트들 나옴
	@RequestMapping(value="myStudylist",method=RequestMethod.POST)
	public ModelAndView list(@RequestParam HashMap<String, String> map){
		ModelAndView m = new ModelAndView("mystudylist","list",inter.getcateClass(map));
		m.addObject("catename",map.get("cate"));
		return m;
		
	}
	
	//내가 신청한 스터디 커리큘럼페이지
	@RequestMapping(value="myStudy")
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
	
	//해당 스터디 스터디룸을 보이기 위해 영상정보 가져옴
	@RequestMapping(value="myStudyRoom",method=RequestMethod.POST)
	public ModelAndView list(@RequestParam("vno") String vno,@RequestParam("clno") String clno){
		ModelAndView m = new ModelAndView("mystudyroom","video",inter.getVideo(vno));
		m.addObject("vno", vno);
		m.addObject("clno",clno);
		return m;
	}
	
	//댓글정보 가져오는 부분
	@RequestMapping("detlist")
	@ResponseBody
	public List<Video_detDto> selectdetAll(@RequestParam("vno") String vno){
		List<Video_detDto> detlist = inter.getdetAll(vno);
		return detlist;
	}
	
	//영상에 댓글다는 부분
	@RequestMapping("detinsert")
	@ResponseBody
	public int detInsert(@RequestParam("vno") String vno, @RequestParam("content") String content, @RequestParam("mno") String mno) throws Exception{
        
        Video_detBean bean = new Video_detBean();
        bean.setContent(content);
        bean.setVno(vno);
        bean.setMno(mno);
      
        return inter.insertDet(bean);
    }
	
	//댓글에 답글다는 부분
	@RequestMapping("dapdetinsert")
	@ResponseBody
	public int dapdetInsert(@RequestParam("det_no") String det_no,@RequestParam("vno") String vno, @RequestParam("content") String content, @RequestParam("mno") String mno) throws Exception{
        int seq = inter.getseq(det_no);
        Video_detBean bean = new Video_detBean();
        int result = 0;
        if(seq == 0) {
        	seq = 2;
        }else {
        	seq = seq+1; 
        }
        bean.setContent(content);
        bean.setVno(vno);
        bean.setMno(mno);
        bean.setSeq(Integer.toString(seq));
        bean.setParent(det_no);
        result = inter.insdap(bean);
        return result;
    }
	
	//댓글 삭제
	@RequestMapping("detdelete")
	@ResponseBody
	public int detDelete(@RequestParam("det_no") String det_no) throws Exception{
        return inter.deleteDet(det_no);
    }
	
	//댓글 수정
	@RequestMapping("detupdate")
	@ResponseBody
	public int detUpdate(@RequestParam("det_no") String det_no,@RequestParam("content") String content) throws Exception{
	    Video_detBean bean = new Video_detBean();
        bean.setContent(content);
        bean.setDet_no(det_no);
        return inter.updateDet(bean);
    }
	
	//이전,다음으로 이동
	@RequestMapping("prev")
	@ResponseBody
	public String getmin(@RequestParam("gclno") String clno){
		String min = inter.getmin(clno);
		return min;
	}
	
	@RequestMapping("next")
	@ResponseBody
	public String getmax(@RequestParam("gclno") String clno){
		String max = inter.getmax(clno);
		return max;
	}
	
	//답글 가져오기
	@RequestMapping("dapdetlist")
	@ResponseBody
	public Map<String, Object> selectdapdetAll(@RequestParam("parent") String parent){
		List<Map<String, String>> daplist = new ArrayList<Map<String,String>>();
		Map<String, String> data = null;
		
		List<Video_detDto> dapList =  inter.getdapdetAll(parent); //모델과 통신
		for(Video_detDto vd: dapList) {
			data = new HashMap<String, String>();
			
			data.put("det_no",vd.getDet_no());
			data.put("member_name",vd.getMember_name());
			data.put("content",vd.getContent());
			data.put("parent",vd.getParent());
			data.put("seq",vd.getSeq());
			data.put("date",vd.getDate());
			data.put("vno",vd.getVno());
			data.put("mno",vd.getMno());
			daplist.add(data);
		}
		
		Map<String, Object> dapLists = new HashMap<String, Object>();
		dapLists.put("datas", daplist);
		
		return dapLists;
	}
}
