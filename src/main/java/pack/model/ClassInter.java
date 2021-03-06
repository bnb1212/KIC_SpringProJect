package pack.model;

import java.util.List;

import org.springframework.dao.DataAccessException;

import pack.controller.ClassinfoBean;
import pack.controller.InsertBean;

public interface ClassInter {
	
	/*
	List<ClassDto> selectMachine() throws DataAccessException;
	List<ClassDto> selectDesign() throws DataAccessException;
	List<ClassDto> selectProgramming() throws DataAccessException;
	List<ClassDto> selectMarketing() throws DataAccessException;
	*/
	List<ClassDto> selectCategory(String category) throws DataAccessException;
	List<ClassDto> selectCategoryAll() throws DataAccessException;
	
	ClassDto selectCatePart(String class_no) throws DataAccessException;
	
	ClassinfoDto selectDetail(String class_no) throws DataAccessException;
	List<CurriDto> selectCurri(String class_no) throws DataAccessException;
	
	
	List<ClassDto> selectClass(String class_no) throws DataAccessException;
	List<MemberDto> selectMember(String member_no) throws DataAccessException;
	
	void insertClass(InsertBean insertBean) throws DataAccessException;
	
	void insertTake(TakeDto takeDto) throws DataAccessException;
}
