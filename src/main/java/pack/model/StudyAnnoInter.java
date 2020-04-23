package pack.model;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import pack.controller.Video_detBean;

public interface StudyAnnoInter {
	
	//내가 수강한 강의정보를 가져옴
	@Select("select class_no,class_name,class_info from class where class_category = #{cate} and class_no in (select class_no from take where member_no = #{mem})")
	public List<ClassDto> selectMyCateClass(HashMap<String, String> map); 
	
	//강의 커리큘럼 가져옴
	@Select("select section_no,goal_title from curri where class_no= #{no}")
	public List<CurriDto> selectClassCurri(String class_no); 
	
	//강의명을 가져옴
	@Select("select class_name from class where class_no= #{no}")
	public String selectClassName(String class_no); 
	
	//강의 섹션별 강의영상을 가져옴
	@Select("select video_no,video_title from video where class_no = #{clno} and section_no = #{sctno}")
	public List<VideoDto> selectVideoPart(HashMap<String, String> map); 
	
	//해당영상번호에 맞춰 영상정보 가져옴
	@Select("select * from video where video_no = #{vno}")
	public VideoDto selectVideo(String vno); 
	
	
	//-----영상 댓글부분----
	//해당 영상 댓글 개수
	@Select("select count(*) from video_det where vno = #{vno}")
	public int detCount(String vno);
	
	//해당 영상 댓글 목록
	@Select("select * from video_det where vno = #{vno}")
	public List<Video_detDto> detList(String vno);
	
	//해당 영상에 댓글 작성
	@Insert("insert into video_det(content,parent,seq,date,vno,mno) VALUES(#{content},'','1',now(),#{vno},#{mno})")
	public int detInsert(Video_detBean bean);
	
	//해당 영상에 달았던 댓글 수정
	@Update("update video_det set content = #{content} where det_no=#{det_no} and mno=#{mno}")
	public int detUpdate(Video_detBean bean);
	
	//해당 영상에 달았던 댓글 삭제
	@Delete("delete from video_det where det_no = #{det_no} and mno = #{mno}")
	public int detDelete(HashMap<String, String> map);
}
