package pack.model;

import java.util.List;

import org.apache.ibatis.annotations.Select;

public interface StudyAnnoInter {
	
	@Select("select class_no,class_name,class_info from class where class_category = #{mem} and class_no in (select class_no from take where member_no = '1')")
	public List<ClassDto> selectMyCateClass(String cate);
}
