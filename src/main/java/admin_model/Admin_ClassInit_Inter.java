package admin_model;

import java.util.List;

import org.springframework.dao.DataAccessException;

import admin_controller.AdminClassBean;
import admin_controller.AdminCurriBean;
import admin_controller.AdminVideoBean;


public interface Admin_ClassInit_Inter {
	List<Admin_ClassDto> selectList() throws DataAccessException;
	Admin_ClassDto selectPart (String no);
	int update(AdminClassBean bean);
	int delete(String no);
	int insert(AdminClassBean bean);
	int classInsert(AdminClassBean bean);
	Admin_ClassDto selectPart1(String no);
	int classinfoupdate(AdminClassBean bean);
	int classinfodelete(String no);
	
	List<Admin_VideoDto> selectVideo(String no);
	int videoinsert(AdminVideoBean bean);
	Admin_VideoDto selectVideoPart(String no);
	int videoupdate(AdminVideoBean bean);
	int videodelete(String video_no);
	
	List<Admin_CurriDto> selectCurri(String no);
	Admin_CurriDto selcetCurriPart(String no);
	int curriupdate(AdminCurriBean bean);
	int curriinsert(AdminCurriBean bean);
	int curridelete(AdminCurriBean bean);
}
