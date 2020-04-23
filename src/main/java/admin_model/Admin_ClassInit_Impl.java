package admin_model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import admin_controller.Admin_ClassBean;
import admin_controller.Admin_VideoBean;

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
	
	@Override
	public int delete(String no) {
		return admin_ClassInit_AnooInter.delete(no);
	}
	
	@Override
	public int insert(Admin_ClassBean bean) {
		return admin_ClassInit_AnooInter.insert(bean);
	}
	
	@Override
	public int classInsert(Admin_ClassBean bean) {
		return admin_ClassInit_AnooInter.classInsert(bean);
	}
	
	@Override
	public Admin_ClassDto selectPart1(String no) {
		return admin_ClassInit_AnooInter.selectPart1(no);
	}
	
	@Override
	public int classinfoupdate(Admin_ClassBean bean) {
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
	public int videoinsert(Admin_VideoBean bean) {
		return admin_ClassInit_AnooInter.videoinsert(bean);
	}
	
	
	@Override
	public Admin_VideoDto selectVideoPart(String no) {
		return admin_ClassInit_AnooInter.selectVideoPart(no);
	}
	
	@Override
	public int videoupdate(Admin_VideoBean bean) {
		return admin_ClassInit_AnooInter.videoupdate(bean);
	}
	
	@Override
	public int videodelete(String video_no) {
		return admin_ClassInit_AnooInter.videodelete(video_no);
	}
	
}
