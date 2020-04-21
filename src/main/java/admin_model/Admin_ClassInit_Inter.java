package admin_model;

import java.util.List;

import org.springframework.dao.DataAccessException;

import admin_controller.Admin_ClassBean;


public interface Admin_ClassInit_Inter {
	List<Admin_ClassDto> selectList() throws DataAccessException;
	Admin_ClassDto selectPart (String no);
	int update(Admin_ClassBean bean);
}
