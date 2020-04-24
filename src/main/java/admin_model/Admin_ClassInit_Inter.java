package admin_model;

import java.util.List;

import org.springframework.dao.DataAccessException;

import admin_controller.Admin_ClassBean;
import admin_controller.Admin_CurriBean;
import admin_controller.Admin_VideoBean;


public interface Admin_ClassInit_Inter {
	List<Admin_ClassDto> selectList() throws DataAccessException;
	Admin_ClassDto selectPart (String no);
	int update(Admin_ClassBean bean);
	int delete(String no);
	int insert(Admin_ClassBean bean);
	int classInsert(Admin_ClassBean bean);
	Admin_ClassDto selectPart1(String no);
	int classinfoupdate(Admin_ClassBean bean);
	int classinfodelete(String no);
	
	List<Admin_VideoDto> selectVideo(String no);
	int videoinsert(Admin_VideoBean bean);
	Admin_VideoDto selectVideoPart(String no);
	int videoupdate(Admin_VideoBean bean);
	int videodelete(String video_no);
	
	List<Admin_CurriDto> selectCurri(String no);
	Admin_CurriDto selcetCurriPart(String no);
	int curriupdate(Admin_CurriBean bean);
	int curriinsert(Admin_CurriBean bean);
	int curridelete(Admin_CurriBean bean);
}
