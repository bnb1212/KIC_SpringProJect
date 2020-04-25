package pack.model;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;


import pack.controller.MemberBean;


public interface MemberAnnoInter {
	@Select("select * from member")
	public List<MemberDto> selectAll();
	
	@Select("select * from member where member_no=#{member_no}")
	public List<MemberDto> selectPart(String no);
	
	@Select("select * from member where member_email=#{member_email} and member_passwd=#{member_passwd}")
	public MemberDto loginCheck(MemberBean Bean);
	
	@Select("select * from member where member_email=#{member_email}")
	public MemberDto selectMemberEmail(String member_email);
	
	@Insert("insert into member (member_email, member_passwd, member_name, member_phone)  values(#{member_email}, #{member_passwd}, #{member_name}, #{member_phone})")
	public int insertMember(MemberBean bean);
	
	@Select("select * from member where member_email=#{member_email}")
	public int idcheck(String member_email);
}
