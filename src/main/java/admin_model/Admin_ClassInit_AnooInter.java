package admin_model;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.dao.DataAccessException;

import admin_controller.AdminClassBean;
import admin_controller.AdminCurriBean;
import admin_controller.AdminVideoBean;

public interface Admin_ClassInit_AnooInter {
	
	@Select("select * from class")
	public List<Admin_ClassDto> selectList() throws DataAccessException;
	
	@Select("SELECT * FROM class left outer join classinfo ON class_no = classinfo_class_no  WHERE class_no=#{class_no}")
	public Admin_ClassDto selectPart(String no);
	
	@Update("update class set class_name=#{class_name},class_info=#{class_info},class_limit=#{class_limit},class_price=#{class_price},class_category=#{class_category} where class_no=#{class_no}")
	public int update(AdminClassBean bean);
	
	@Delete("delete from class where class_no=#{class_no}")
	public int delete(String no);
	
	@Insert("insert into class(class_name, class_info, class_limit, class_price, class_category) values(#{class_name},#{class_info},#{class_limit},#{class_price},#{class_category})")
	public int insert(AdminClassBean bean);
	
	@Insert("insert INTO classinfo(classinfo_for,classinfo_fors_one,classinfo_forc_one,classinfo_fors_two,classinfo_forc_two,classinfo_fors_three,classinfo_forc_three,classinfo_goal,classinfo_goals_one,classinfo_goalc_one,classinfo_goals_two,classinfo_goalc_two,classinfo_subtitle_three,classinfo_content_three,classinfo_class_no) VALUES(#{classinfo_for},#{classinfo_fors_one},#{classinfo_forc_one},#{classinfo_fors_two},#{classinfo_forc_two}, #{classinfo_fors_three},#{classinfo_forc_three},#{classinfo_goal},#{classinfo_goals_one},#{classinfo_goalc_one},#{classinfo_goals_two},#{classinfo_goalc_two},#{classinfo_subtitle_three},#{classinfo_content_three},#{classinfo_class_no})")
	public int classInsert(AdminClassBean bean);
	
	@Select("SELECT * FROM classinfo WHERE classinfo_no=#{classinfo_no}")
	public Admin_ClassDto selectPart1(String no);

	@Update("update classinfo set classinfo_for=#{classinfo_for}, classinfo_fors_one=#{classinfo_fors_one}, classinfo_forc_one=#{classinfo_forc_one}, classinfo_fors_two=#{classinfo_fors_two}, classinfo_forc_two=#{classinfo_forc_two}, classinfo_fors_three=#{classinfo_fors_three}, classinfo_forc_three=#{classinfo_forc_three}, classinfo_goal=#{classinfo_goal}, classinfo_goals_one=#{classinfo_goals_one}, classinfo_goalc_one=#{classinfo_goalc_one}, classinfo_goals_two=#{classinfo_goals_two}, classinfo_goalc_two=#{classinfo_goalc_two}, classinfo_subtitle_three=#{classinfo_subtitle_three}, classinfo_content_three=#{classinfo_content_three}, classinfo_class_no=#{classinfo_class_no} where classinfo_no = #{classinfo_no}")
	public int classinfoupdate(AdminClassBean bean);
	
	@Delete("delete from classinfo where classinfo_no=#{classinfo_no}")
	public int classinfodelete(String no);
	
	@Select("select * from video where class_no = #{video_class_no}")
	public List<Admin_VideoDto> selectVideo(String no);
	
	@Insert("insert into video(video_url, class_no, section_no, order_no, upload_date, video_title, video_info) values(#{video_url}, #{video_class_no}, #{section_no}, #{order_no}, now(), #{video_title}, #{video_info})")
	public int videoinsert(AdminVideoBean bean);
	
	@Select("select * from video where video_no=#{video_no}")
	public Admin_VideoDto selectVideoPart(String no);
	
	@Update("update video set video_url=#{video_url}, class_no=#{video_class_no}, section_no=#{section_no}, order_no=#{order_no}, video_title= #{video_title}, video_info= #{video_info} where video_no=#{video_no}")
	public int videoupdate(AdminVideoBean bean);
	
	@Delete("delete from video where video_no=#{video_no}")
	public int videodelete(String video_no);
	
	
	@Select("select * from curri where class_no = #{class_no}")
	public List<Admin_CurriDto> selectCurri(String no);
	
	@Select("select * from curri where section_no = #{section_no}")
	public Admin_CurriDto selcetCurriPart(String no);
	
	@Update("update curri set class_no=#{curri_class_no}, goal_title=#{goal_title } where section_no=#{section_no} ")
	public int curriupdate(AdminCurriBean bean);
	
	@Insert("insert into curri(class_no, section_no, goal_title) values(#{curri_class_no}, #{section_no}, #{goal_title})")
	public int curriinsert(AdminCurriBean bean);

	@Delete("delete from curri where section_no = #{section_no} and class_no=#{curri_class_no}")
	public int curridelete(AdminCurriBean bean);
}

