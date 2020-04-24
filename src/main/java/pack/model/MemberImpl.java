package pack.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import pack.controller.MemberBean;

@Repository
public class MemberImpl implements MemberInter {

	@Autowired
	private MemberAnnoInter inter;

	@Override
	public List<MemberDto> selectAll() throws DataAccessException{
		return inter.selectAll();
	}

	@Override
	public List<MemberDto> selectPart(String no) {
		return inter.selectPart(no);
	}

	@Override
	public MemberDto selectMemberEmail(String member_email) {
		return inter.selectMemberEmail(member_email);
	}

	@Override
	public int insertMember(MemberBean bean) {
		return inter.insertMember(bean);
		
	}

	@Override
	public MemberDto loginCheck(MemberBean bean) {
		return inter.loginCheck(bean);
	}
	
	@Override
	public int idcheck(String member_email) {
		return inter.idcheck(member_email);
	}

}
