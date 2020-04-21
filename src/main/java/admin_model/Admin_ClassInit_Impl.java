package admin_model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import admin_controller.Admin_ClassBean;

@Repository
public class Admin_ClassInit_Impl implements Admin_ClassInit_Inter{
	
	@Autowired
	private Admin_ClassInit_AnooInter admin_ClassInit_AnooInter;
	
	@Override
	public List<Admin_ClassDto> selectList() throws DataAccessException{
		return admin_ClassInit_AnooInter.selectList();
	}
	
	@Override
	public Admin_ClassDto selectPart(String no) {
		return admin_ClassInit_AnooInter.selectPart(no);
	}
	
	@Override
	public int update(Admin_ClassBean bean) {
		return admin_ClassInit_AnooInter.update(bean);
	}
}
