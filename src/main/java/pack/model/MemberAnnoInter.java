package pack.model;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import admin_controller.Admin_MemberBean;
import admin_model.Admin_MemberDto;
import pack.controller.MemberBean;


public interface MemberAnnoInter {
	@Select("select * from member")
	public List<MemberDto> selectAll();
	
	@Select("select * from member where member_no=#{member_no}")
	public List<MemberDto> selectPart(String no);
	
	@Select("select * from member where member_no=#{member_no}")
	public MemberDto selectPart1(String no);
	
	@Select("insert member_email, member_name, member_passwd, member_phone into member values(#{member_name}, #{member_email}, #{member_passwd}, #{member_phone}")
	public int insertMember(MemberBean bean);
}
