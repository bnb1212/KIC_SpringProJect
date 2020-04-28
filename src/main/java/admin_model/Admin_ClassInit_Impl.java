package admin_model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import admin_controller.AdminClassBean;
import admin_controller.AdminCurriBean;
import admin_controller.AdminVideoBean;

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
	public int update(AdminClassBean bean) {
		return admin_ClassInit_AnooInter.update(bean);
	}
	
	@Override
	public int delete(String no) {
		return admin_ClassInit_AnooInter.delete(no);
	}
	
	@Override
	public int insert(AdminClassBean bean) {
		return admin_ClassInit_AnooInter.insert(bean);
	}
	
	@Override
	public int classInsert(AdminClassBean bean) {
		return admin_ClassInit_AnooInter.classInsert(bean);
	}
	
	@Override
	public Admin_ClassDto selectPart1(String no) {
		return admin_ClassInit_AnooInter.selectPart1(no);
	}
	
	@Override
	public int classinfoupdate(AdminClassBean bean) {
		return admin_ClassInit_AnooInter.classinfoupdate(bean);
	}
	
	@Override
	public int classinfodelete(String no) {
		return admin_ClassInit_AnooInter.classinfodelete(no);
	}
	
	@Override
	public List<Admin_VideoDto> selectVideo(String no) {
		
		return admin_ClassInit_AnooInter.selectVideo(no);
	}
	
	@Override
	public int videoinsert(AdminVideoBean bean) {
		return admin_ClassInit_AnooInter.videoinsert(bean);
	}
	
	
	@Override
	public Admin_VideoDto selectVideoPart(String no) {
		return admin_ClassInit_AnooInter.selectVideoPart(no);
	}
	
	@Override
	public int videoupdate(AdminVideoBean bean) {
		return admin_ClassInit_AnooInter.videoupdate(bean);
	}
	
	@Override
	public int videodelete(String video_no) {
		return admin_ClassInit_AnooInter.videodelete(video_no);
	}
	
	@Override
	public List<Admin_CurriDto> selectCurri(String no) {
		return admin_ClassInit_AnooInter.selectCurri(no);
	}
	
	@Override
	public Admin_CurriDto selcetCurriPart(String no) {
		return admin_ClassInit_AnooInter.selcetCurriPart(no);
	}
	
	@Override
	public int curriupdate(AdminCurriBean bean) {
		return admin_ClassInit_AnooInter.curriupdate(bean);
	}
	
	
	@Override
	public int curriinsert(AdminCurriBean bean) {
		return admin_ClassInit_AnooInter.curriinsert(bean);
	}
	
	@Override
	public int curridelete(AdminCurriBean bean) {
		return admin_ClassInit_AnooInter.curridelete(bean);
	}
	
}
