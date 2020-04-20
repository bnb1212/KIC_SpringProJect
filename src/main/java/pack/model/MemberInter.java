package pack.model;

import java.util.List;

import pack.controller.MemberBean;

public interface MemberInter {
	public List<MemberDto> selectAll();
	public List<MemberDto> selectPart(String no);
	public MemberDto selectPart1(String no);
	public int insertMember(MemberBean bean);
}
