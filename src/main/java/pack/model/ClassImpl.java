package pack.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import pack.controller.ClassinfoBean;
import pack.controller.InsertBean;

@Repository
public class ClassImpl implements ClassInter{
	
	@Autowired
	private ClassAnnoInter classAnnoInter;
	
	// 카테고리 선택 후 넘겨주기
	@Override
	public List<ClassDto> selectCategory(String category) throws DataAccessException {
		return classAnnoInter.selectCategory(category);
	}
	
	@Override
	public List<ClassDto> selectCategoryAll() throws DataAccessException {
		return classAnnoInter.selectCategoryAll();
	}
	
	/*
	@Override
	public List<ClassDto> selectMachine() throws DataAccessException {
		
		return classAnnoInter.selectMachine();
	}
	
	
	@Override
	public List<ClassDto> selectDesign() throws DataAccessException {
		return classAnnoInter.selectDesign();
	}
	
	@Override
	public List<ClassDto> selectProgramming() throws DataAccessException {
		return classAnnoInter.selectProgramming();
	}
	
	@Override
	public List<ClassDto> selectMarketing() throws DataAccessException {
		return classAnnoInter.selectMarketing();
	}
	*/
	@Override
	public ClassinfoDto selectDetail(String class_no) throws DataAccessException {
		return classAnnoInter.selectDetail(class_no);
	}
	
	@Override
	public List<CurriDto> selectCurri(String class_no) throws DataAccessException {
		return classAnnoInter.selectCurri(class_no);
	}
	
	@Override
	public List<ClassDto> selectClass(String class_no) throws DataAccessException {
		return classAnnoInter.selectClass(class_no);
	}
	
	
	@Override
	public List<MemberDto> selectMember(String member_no) throws DataAccessException {
		
		return classAnnoInter.selectMember(member_no);
	}
	
	@Override
	public ClassDto selectCatePart(String class_no) throws DataAccessException{
		return classAnnoInter.selectCatePart(class_no);
	}
	
	@Override
	public void insertClass(InsertBean insertBean) throws DataAccessException {
		 classAnnoInter.insertClass(insertBean);
		 return;
	}

}
