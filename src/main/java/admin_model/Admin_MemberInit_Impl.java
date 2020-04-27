package admin_model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import admin_controller.AdminMemberBean;

@Repository
public class Admin_MemberInit_Impl implements Admin_MemberInit_Inter {
	
	@Autowired
	private Admin_MemberInit_AnnoInter admin_MemberInit_AnoInter;
	
	@Override
	public List<Admin_MemberDto> selectList() throws DataAccessException {
		return admin_MemberInit_AnoInter.selectAll();
	}
	
	@Override
	public List<Admin_MemberDto> selectPart(String no) {
		return admin_MemberInit_AnoInter.selectPart(no);
	}
	
	@Override
	public Admin_MemberDto selectPart1(String no) {
		return admin_MemberInit_AnoInter.selectPart1(no);
	} 
	
	@Override
	public int update(AdminMemberBean bean) {
		return admin_MemberInit_AnoInter.update(bean);
	}
	
	@Override
	public int delete(String no) {
		return admin_MemberInit_AnoInter.delete(no);
	}
}
