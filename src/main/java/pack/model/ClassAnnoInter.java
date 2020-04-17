package pack.model;

import java.util.List;

import org.apache.ibatis.annotations.Select;
import org.springframework.dao.DataAccessException;

import pack.controller.ClassinfoBean;

public interface ClassAnnoInter {
	
	@Select("select * from class where class_category='머신러닝'")
	List<ClassDto> selectMachine() throws DataAccessException;
	@Select("select class_name, class_info, class_limit, class_price, class_category from class where class_category='영어'")
	List<ClassDto> selectEnglish() throws DataAccessException;
	@Select("select class_name, class_info, class_limit, class_price, class_category from class where class_category='디자인'")
	List<ClassDto> selectDesign() throws DataAccessException;
	@Select("select * from classinfo where classinfo_class_no=#{classinfo_class_no}")
	List<ClassinfoDto> selectDetail(ClassinfoBean bean) throws DataAccessException; 
	

}
