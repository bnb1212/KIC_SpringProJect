package pack.model;

import java.util.List;

import pack.controller.MemberBean;

public interface MemberInter {
	public List<MemberDto> selectAll();
	public List<MemberDto> selectPart(String no);
	public MemberDto selectMemberEmail(String member_email);
	public int insertMember(MemberBean bean);
	public MemberDto loginCheck(MemberBean bean);
	public int idcheck(String member_email);
	
}
