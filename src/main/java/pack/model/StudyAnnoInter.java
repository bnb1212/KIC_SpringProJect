package pack.model;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Select;

public interface StudyAnnoInter {
	
	@Select("select class_no,class_name,class_info from class where class_category = #{cate} and class_no in (select class_no from take where member_no = #{mem})")
	public List<ClassDto> selectMyCateClass(HashMap<String, String> map);
	
	@Select("select section_no,goal_title from curri where class_no= #{no}")
	public List<CurriDto> selectClassCurri(String class_no);
}
