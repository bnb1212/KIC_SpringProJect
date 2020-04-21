package admin_model;

import java.util.List;

import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.dao.DataAccessException;

import admin_controller.Admin_ClassBean;

public interface Admin_ClassInit_AnooInter {
	
	@Select("select * from class")
	public List<Admin_ClassDto> selectList() throws DataAccessException;
	
	@Select("SELECT * FROM class left outer join classinfo ON class_no = classinfo_class_no WHERE class_no=#{class_no}")
	public Admin_ClassDto selectPart(String no);
	
	@Update("update class set class_name=#{class_name},class_info=#{class_info},class_limit=#{class_limit},class_price=#{class_price},class_category=#{class_category} where class_no=#{class_no}")
	public int update(Admin_ClassBean bean);
}
