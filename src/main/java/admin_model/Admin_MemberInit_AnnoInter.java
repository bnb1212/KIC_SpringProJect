package admin_model;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import admin_controller.Admin_MemberBean;


public interface Admin_MemberInit_AnnoInter {
	@Select("select * from member")
	public List<Admin_MemberDto> selectAll();
	
	@Select("select * from member where member_no=#{member_no}")
	public List<Admin_MemberDto> selectPart(String no);
	
	@Select("select * from member where member_no=#{member_no}")
	public Admin_MemberDto selectPart1(String no);
	
	@Update("update member set member_name=#{member_name},member_email=#{member_email},member_passwd=#{member_passwd},member_class_no=#{member_class_no},member_phone=#{member_phone} where member_no=#{member_no}")
	public int update(Admin_MemberBean bean);
	
	@Delete("delete from member where member_no=#{member_no}")
	public int delete(String no);
}
