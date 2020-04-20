package pack.model;

import java.util.List;

import admin_controller.Admin_MemberBean;
import admin_model.Admin_MemberDto;

public interface MemberInter {
	public List<Admin_MemberDto> selectAll();
	public List<Admin_MemberDto> selectPart(String no);
	public Admin_MemberDto selectPart1(String no);
	public int update(Admin_MemberBean bean);
}
