package admin_model;

import java.util.List;

import org.springframework.dao.DataAccessException;

import admin_controller.AdminMemberBean;



public interface Admin_MemberInit_Inter {
	List<Admin_MemberDto> selectList() throws DataAccessException;
	List<Admin_MemberDto> selectPart(String no);
	Admin_MemberDto selectPart1 (String no);
	int update(AdminMemberBean bean);
	int delete(String no);
}
